package kr.co.drcrown.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import kr.co.drcrown.command.BookingStateListCommand;
import kr.co.drcrown.command.ChartCureDetailCommand;
import kr.co.drcrown.command.ChartSearchCommand;
import kr.co.drcrown.command.Criteria;
import kr.co.drcrown.command.CureDetailRegistCommand;
import kr.co.drcrown.command.FileModifyCommand;
import kr.co.drcrown.command.PatientPrescribedRegistListCommand;
import kr.co.drcrown.command.PatientPrescribedSelectListCommand;
import kr.co.drcrown.command.TLCCommand;
import kr.co.drcrown.command.TLDetailCommand;
import kr.co.drcrown.command.TLDetailSelectCommand;
import kr.co.drcrown.command.TLSearchCommand;
import kr.co.drcrown.command.XraySelectCommand;
import kr.co.drcrown.dto.DrugInfoVO;
import kr.co.drcrown.dto.FileVO;
import kr.co.drcrown.dto.MemberVO;
import kr.co.drcrown.dto.PatientVO;
import kr.co.drcrown.file.MakeFileName;
import kr.co.drcrown.dto.CureDetailVO;
import kr.co.drcrown.dto.DiseasesVO;
import kr.co.drcrown.service.DrugInfoService;
import kr.co.drcrown.service.FileService;
import kr.co.drcrown.service.PatientPrescribedService;
import kr.co.drcrown.service.PatientService;
import kr.co.drcrown.service.TreatmentListService;
import kr.co.drcrown.service.BookingService;
import kr.co.drcrown.service.CureDetailService;
import kr.co.drcrown.service.DiseasesService;

@Controller
@RequestMapping("/chart")
public class ChartController {

    @Autowired
    private DiseasesService diseasesService;

    @Autowired
    private PatientService patientService;

    @Autowired
    private DrugInfoService drugInfoService;

    @Autowired
    private BookingService bookingService;

    @Autowired
    private CureDetailService cureDetailService;

    @Autowired
    private TreatmentListService treatmentListService;

    @Autowired
    private PatientPrescribedService patientPrescribedService;

    @Autowired
    private FileService fileService;

    @Resource(name = "xrayUploadPath")
    private String xrayUploadPath;

    @RequestMapping("/main")
    public void main() throws Exception {
    }

    @RequestMapping("/list")
    public String list(Criteria cri, String pNo, Model model) throws Exception {
        String url = "/chart/list";

        List<BookingStateListCommand> bookingList = bookingService.getBookingListByState();
        List<TLCCommand> tretmentList = treatmentListService.getTreatmentListAll();
        List<PatientPrescribedSelectListCommand> ppsl = cureDetailService.getPrescribedDrugListAll(pNo);

        PatientVO patient = null;
        List<ChartCureDetailCommand> cdList = null;
        if (pNo != null) {
            patient = patientService.getPatient(pNo);
            cdList = cureDetailService.getCureDetailListByPNoForChar(pNo);
        }
        int[] teethStart = { 18, 21, 55, 61, 85, 71, 48, 31 };
        String[] babyTeethPosition = { "A", "B", "C", "D", "E" };

        model.addAttribute("ppsl", ppsl);
        model.addAttribute("tretmentList", tretmentList);
        model.addAttribute("teethStart", teethStart);
        model.addAttribute("babyTeethPosition", babyTeethPosition);
        model.addAttribute("patient", patient);
        model.addAttribute("bookingList", bookingList);
        model.addAttribute("cdList", cdList);

        return url;
    }

    @PostMapping("/piRegist")
    public String piRegist(CureDetailVO cd, RedirectAttributes rttr, HttpServletRequest req) throws Exception {
        String pno = cd.getPNo();
        String url = "redirect:list?pNo=" + pno;

        HttpSession session = req.getSession();
        MemberVO member = (MemberVO) session.getAttribute("loginUser");
        cd.setMemId(member.getMemId());
        cureDetailService.piRegist(cd);

        rttr.addFlashAttribute("from", "regist");

        return url;
    }

    @PostMapping("/cureRegist")
    public String cureRegist(CureDetailRegistCommand cdrc, RedirectAttributes rttr, HttpServletRequest req)
            throws Exception {
        String pno = cdrc.getPNo();
        String url = "redirect:list?pNo=" + pno;

        HttpSession session = req.getSession();
        MemberVO member = (MemberVO) session.getAttribute("loginUser");
        cdrc.setMemId(member.getMemId());

        cureDetailService.registCureDetail(cdrc);

        rttr.addFlashAttribute("from", "cureRegist");

        return url;
    }

    @PostMapping("/prescribedRegist")
    public String prescribedRegist(PatientPrescribedRegistListCommand pprcl, RedirectAttributes rttr,
            HttpServletRequest req) throws Exception {
        String pno = pprcl.getPNo();
        String url = "redirect:list?pNo=" + pno;

        HttpSession session = req.getSession();
        MemberVO member = (MemberVO) session.getAttribute("loginUser");
        pprcl.setMemId(member.getMemId());

        patientPrescribedService.registCureDetailForPrescribed(pprcl);

        rttr.addFlashAttribute("from", "prescribedRegist");

        return url;
    }

    @PostMapping("/getDrugListByKeyword")
    @ResponseBody
    public ResponseEntity<List<DrugInfoVO>> getDrugListByKeyword(ChartSearchCommand csc) throws Exception {
        ResponseEntity<List<DrugInfoVO>> entity = null;

        List<DrugInfoVO> drugList = drugInfoService.getDrugListByKeyword(csc);
        try {
            entity = new ResponseEntity<List<DrugInfoVO>>(drugList, HttpStatus.OK);
        } catch (Exception e) {
            entity = new ResponseEntity<List<DrugInfoVO>>(HttpStatus.INTERNAL_SERVER_ERROR);
            e.printStackTrace();
        }
        return entity;
    }

    @GetMapping("/diagnosisRegist")
    public String diagnosisRegist() {
        String url = "/chart/diagnosisRegist";
        return url;
    }

    @PostMapping("/getTretment")
    @ResponseBody
    public ResponseEntity<List<TLDetailCommand>> getTretment(TLDetailSelectCommand tldsc) throws Exception {
        ResponseEntity<List<TLDetailCommand>> entity = null;

        List<TLDetailCommand> tlDtailList = treatmentListService.getTreatmentDetailList(tldsc);
        entity = new ResponseEntity<List<TLDetailCommand>>(tlDtailList, HttpStatus.OK);

        return entity;
    }

    @PostMapping("/getDiseasesListByKeyword")
    @ResponseBody
    public ResponseEntity<List<DiseasesVO>> getSymListByKeyword(ChartSearchCommand csc) throws Exception {
        ResponseEntity<List<DiseasesVO>> entity = null;
        List<DiseasesVO> dzList = diseasesService.getDiseasesListByKeyword(csc);
        try {
            entity = new ResponseEntity<List<DiseasesVO>>(dzList, HttpStatus.OK);
        } catch (Exception e) {
            entity = new ResponseEntity<List<DiseasesVO>>(HttpStatus.INTERNAL_SERVER_ERROR);
            e.printStackTrace();
        }
        return entity;
    }

    @PostMapping("/getTreatmentListByKeyword")
    @ResponseBody
    public ResponseEntity<List<TLSearchCommand>> getTreatmentListByKeyword(ChartSearchCommand csc) throws Exception {
        ResponseEntity<List<TLSearchCommand>> entity = null;

        List<TLSearchCommand> treatmentList = treatmentListService.getTreatmentListByKeyword(csc);
        try {
            entity = new ResponseEntity<List<TLSearchCommand>>(treatmentList, HttpStatus.OK);
        } catch (Exception e) {
            entity = new ResponseEntity<List<TLSearchCommand>>(HttpStatus.INTERNAL_SERVER_ERROR);
            e.printStackTrace();
        }
        return entity;
    }

    @GetMapping("/getPicture")
    @ResponseBody
    public List<XraySelectCommand> getPicture(HttpServletRequest request, String pNo) throws Exception {
        List<XraySelectCommand> entityList = new ArrayList<XraySelectCommand>();

        List<FileVO> pictureList = fileService.getXrayPicture(pNo);
        if (pNo != null) {
            // 리스트의 각 객체 처리
            for (FileVO fileVO : pictureList) {
                XraySelectCommand xsc = new XraySelectCommand();

                // 파일 처리
                String picture = fileVO.getFileName();
                InputStream in = null;
                String imgPath = this.xrayUploadPath;
                try {
                    in = new FileInputStream(new File(imgPath, picture));
                    byte[] byteArray = IOUtils.toByteArray(in);
                    // 파일 기입
                    xsc.setFile(byteArray);
                    // 날짜 기입
                    xsc.setFileRegdate(fileVO.getFileRegdate());
                    // 형식 기입
                    xsc.setFileClass(fileVO.getFileClass());
                    entityList.add(xsc);
                } catch (Exception e) {
                    e.printStackTrace();
                } finally {
                    if (in != null)
                        in.close();
                }
            }
        }
        return entityList;
    }
    
    @RequestMapping(value = "/uploadXrayPic", method = RequestMethod.POST, produces = "text/plain;charset=utf-8")
    public String uploadXrayPic(FileModifyCommand fmc, HttpServletRequest request,
            RedirectAttributes rttr, String pno) throws Exception {
        String url = "redirect:/picture/upload?pNo="+ pno;

        HttpSession session = request.getSession();
        MemberVO loginUser = (MemberVO) session.getAttribute("loginUser");

        // fileVO에 담기
        FileVO file = fmc.toFile();
        file.setFileAtthcher(loginUser.getMemId());
        file.setPNo(fmc.getPNo());

        // 파일 로컬에 저장 및 기존파일 삭제
        ResponseEntity<String> entity = picture(fmc.getPicture(), null);
        String fileName = entity.getBody();
        file.setFileName(fileName);
        file.setFileLocation(xrayUploadPath);
        // 파일 테이블 수정
        fileService.insert(file);

        rttr.addFlashAttribute("from", "insertPic");

        return url;
    }
    
    @PostMapping(value = "/picture", produces = "text/plain;charset=utf-8")
    @ResponseBody
    public ResponseEntity<String> picture(@RequestParam("pictureFile") MultipartFile multi, String oldPicture)
            throws Exception {
        ResponseEntity<String> entity = null;

        /* 파일저장폴더설정 */
        String uploadPath = xrayUploadPath;

        /* 파일명 */
        String fileName = MakeFileName.toUUIDFileName(multi.getOriginalFilename(), "$$");
        File storeFile = new File(uploadPath, fileName);

        /* 파일경로 생성 */
        storeFile.mkdirs();

        // local HDD 에 저장.
        multi.transferTo(storeFile);

        entity = new ResponseEntity<String>(fileName, HttpStatus.OK);

        return entity;
    }
    
    
}
