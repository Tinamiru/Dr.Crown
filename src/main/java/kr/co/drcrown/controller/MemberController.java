package kr.co.drcrown.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.drcrown.command.FileModifyCommand;
import kr.co.drcrown.dto.FileVO;
import kr.co.drcrown.dto.MemberVO;
import kr.co.drcrown.file.MakeFileName;
import kr.co.drcrown.security.PasswordEncoding;
import kr.co.drcrown.security.SHAPasswordEncoder;
import kr.co.drcrown.service.FileService;
import kr.co.drcrown.service.MemberService;

@Controller
@RequestMapping("/member")
public class MemberController {

    @Autowired
    private MemberService memberService;

    @Autowired
    private FileService fileService;

    @GetMapping("/registForm")
    public String registForm() {
        String url = "member/regist";
        return url;
    }

    @GetMapping("/changePwd")
    public String changePwd(HttpServletRequest request) {
        String url = "/member/changePwd";

        HttpSession session = request.getSession();
        MemberVO loginUser = (MemberVO) session.getAttribute("loginUser");
        
        if (loginUser != null) {
            if (loginUser.getMemIsfirst().equals("1") || loginUser.getMemIsfirst() == "1") {
                request.setAttribute("from", "freshman");
            }
        }

        return url;

    }

    @PostMapping("/modifyPwd")
    public String modifyPwd(HttpServletRequest request, String password, String newPassword, RedirectAttributes rttr)
            throws Exception {
        String url = "redirect:changePwd";

        boolean isMemberPwd = memberService.isMemberPwd(request, password, newPassword);

        if (isMemberPwd) {
            rttr.addFlashAttribute("from", "pwdModify");
        } else {
            rttr.addFlashAttribute("from", "denied");
        }

        return url;
    }

    @PostMapping("/mypage")
    public String mypage(HttpServletRequest request, String pwd, Model model, RedirectAttributes rttr)
            throws Exception {
        String url = "/member/mypage";
        SHAPasswordEncoder shaPasswordEncoder = new SHAPasswordEncoder(512);
        shaPasswordEncoder.setEncodeHashAsBase64(true);
        PasswordEncoding passwordEncoding = new PasswordEncoding(shaPasswordEncoder);
        PasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
        passwordEncoding = new PasswordEncoding(passwordEncoder);

        HttpSession session = request.getSession();
        MemberVO loginUser = (MemberVO) session.getAttribute("loginUser");

        MemberVO member = memberService.getMember(loginUser.getMemId());

        if (passwordEncoding.matches(pwd, member.getMemPwd())) {
            url = "/member/mypage";
        } else {
            url = "redirect:/common/reloadPage";
            rttr.addFlashAttribute("from", "denied");
        }

        member.setMemId(loginUser.getMemId());

        int result = memberService.getMemberForVerification(member);

        model.addAttribute("result", result);

        return url;
    }

    @GetMapping("/vacationApplication")
    public String workVacationApplication() {
        String url = "/manage/work/vacationApplication";
        return url;
    }

    @GetMapping("/detail")
    public String detail(Model model, HttpServletRequest request) throws Exception {
        String url = "member/detail";

        HttpSession session = request.getSession();
        MemberVO loginUser = (MemberVO) session.getAttribute("loginUser");
        MemberVO member = null;
        if (loginUser != null) {
            member = memberService.getMember(loginUser.getMemId());
        } else {
            url = "redirect:/common/loginTimeOut";
        }
        model.addAttribute("member", member);

        return url;
    }

    @GetMapping("/idCheck")
    @ResponseBody
    public ResponseEntity<String> idCheck(String id) throws Exception {
        ResponseEntity<String> entity = null;

        MemberVO member = memberService.getMember(id);

        if (member != null) {
            entity = new ResponseEntity<String>("duplicated", HttpStatus.OK);
        } else {
            entity = new ResponseEntity<String>("", HttpStatus.OK);
        }

        return entity;
    }

    // 비밀번호를 제외한 회원 기본정보 수정
    @RequestMapping(value = "/modify", method = RequestMethod.POST, produces = "text/plain;charset=utf-8")
    public String modify(MemberVO member, HttpServletRequest request,
            RedirectAttributes rttr) throws Exception {
        String url = "redirect:detail";
        HttpSession session = request.getSession();
        MemberVO loginUser = (MemberVO) session.getAttribute("loginUser");

        member.setMemId(loginUser.getMemId());

        memberService.modify(member);
        MemberVO newMember = memberService.getMember(loginUser.getMemId());
        
        rttr.addFlashAttribute("from", "modify");
        session.setAttribute("loginUser", newMember);

        return url;
    }

    @RequestMapping(value = "/modifyMemPic", method = RequestMethod.POST, produces = "text/plain;charset=utf-8")
    public String modifyMemPic(FileModifyCommand fmc, HttpServletRequest request,
            RedirectAttributes rttr) throws Exception {
        String url = "redirect:detail";

        HttpSession session = request.getSession();
        MemberVO loginUser = (MemberVO) session.getAttribute("loginUser");
        String oldPicture = null;
        try {
            oldPicture = fileService.getMemPicture(loginUser.getMemPic()).getFileName();
        } catch (Exception e) {
            oldPicture = null;
        }

        // fileVO에 담기
        FileVO file = fmc.toFile();
        file.setFileAtthcher(loginUser.getMemId());
        file.setFileNo(loginUser.getMemPic());

        // 파일 로컬에 저장 및 기존파일 삭제
        if (oldPicture != null) {
            ResponseEntity<String> entity = picture(fmc.getPicture(), oldPicture);
            String fileName = entity.getBody();
            file.setFileName(fileName);
        }

        // 파일 테이블 수정
        fileService.modify(file);

        // 로그인 세션 재설정
        MemberVO newMember = memberService.getMember(loginUser.getMemId());

        rttr.addFlashAttribute("from", "modifyPic");
        session.setAttribute("loginUser", newMember);

        return url;
    }

    @Resource(name = "picturePath")
    private String picturePath;

    @PostMapping(value = "/picture", produces = "text/plain;charset=utf-8")
    @ResponseBody
    public ResponseEntity<String> picture(@RequestParam("pictureFile") MultipartFile multi, String oldPicture)
            throws Exception {
        ResponseEntity<String> entity = null;

        /* 파일저장폴더설정 */
        String uploadPath = picturePath;

        /* 파일명 */
        String fileName = MakeFileName.toUUIDFileName(multi.getOriginalFilename(), "$$");
        File storeFile = new File(uploadPath, fileName);

        /* 파일경로 생성 */
        storeFile.mkdirs();

        // local HDD 에 저장.
        multi.transferTo(storeFile);

        // 기존파일 삭제
        if (oldPicture != null && !oldPicture.isEmpty() && !oldPicture.equals("기본프로필.jpg")) {
            File oldFile = new File(uploadPath, oldPicture);
            if (oldFile.exists()) {
                oldFile.delete();
            }
        }

        entity = new ResponseEntity<String>(fileName, HttpStatus.OK);

        return entity;
    }

    @GetMapping("/getPicture")
    @ResponseBody
    public ResponseEntity<byte[]> getPicture(HttpServletRequest request) throws Exception {
        ResponseEntity<byte[]> entity = null;

        HttpSession session = request.getSession();
        MemberVO loginUser = (MemberVO) session.getAttribute("loginUser");
        String picture = fileService.getMemPicture(loginUser.getMemPic()).getFileName();

        InputStream in = null;
        String imgPath = this.picturePath;
        try {
            in = new FileInputStream(new File(imgPath, picture));

            entity = new ResponseEntity<byte[]>(IOUtils.toByteArray(in), HttpStatus.CREATED);
        } finally {
            if (in != null)
                in.close();
        }

        return entity;
    }

}
