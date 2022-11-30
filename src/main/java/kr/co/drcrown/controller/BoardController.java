package kr.co.drcrown.controller;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.josephoconnell.html.HTMLInputFilter;

import kr.co.drcrown.command.Criteria;
import kr.co.drcrown.command.NoticeRegistCommand;
import kr.co.drcrown.dto.AttachVO;
import kr.co.drcrown.dto.MemberVO;
import kr.co.drcrown.dto.NoticeVO;
import kr.co.drcrown.service.NoticeService;
import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/board")
@Slf4j
public class BoardController {
	
	@Autowired
	private NoticeService noticeService;

	
   @Resource(name="noticeService")
    private NoticeService service; 
	
	// 공지사항 리스트출력
	@RequestMapping("/notice/list")
	public String noticeNoticeMain(Criteria cri, Model model)throws Exception{
	    
	    String url="board/notice/list";
	    
	    Map<String,Object> dataMap = noticeService.getNoticeList(cri);		
	    
	    model.addAttribute("dataMap",dataMap);
	    
	    return url;
	}
	// 공지사항 리스트출력

	@RequestMapping("/notice/main")
	public String noticeList(Criteria cri, Model model)throws Exception{
		
	    String url="board/notice/main";
		
		return url;
	}

	
	@RequestMapping("/notice/registForm")
    public String noticeListDetail(Model model)throws Exception{
        String url="board/notice/registForm";
        
        List<NoticeVO> categoryList = noticeService.getNoticeCategoryList();
        model.addAttribute("categoryList",categoryList);
        
        return url;
    }
	
	@Resource(name = "fileUploadPath")
    private String fileUploadPath;
    
    
	@RequestMapping("/notice/regist")
	public String regist(NoticeRegistCommand registReq, NoticeVO notice, HttpServletRequest request,
						RedirectAttributes rttr) throws Exception{
	    
	    
		String url = "redirect:list";	
	
		rttr.addFlashAttribute("from","regist");
		
	      String savePath = this.fileUploadPath;      
	        
	        //file 저장 -> List<AttachVO>
	        List<AttachVO> attachList 
	        = MultipartFileUploadResolver.fileUpload(registReq.getUploadFile(), savePath);
	        //DB 
	        NoticeVO notice1 = registReq.toNoticeVO();    
	        
	        //세션 객체의 로그인 정보에서 memId를 가져와 noticeVO 객체에 set
	        HttpSession session = request.getSession();
	        MemberVO loginUser = (MemberVO) session.getAttribute("loginUser");
	        notice1.setMemId(loginUser.getMemId());
	        notice1.setAttachList(attachList);      
	        notice1.setNoticeTitle(HTMLInputFilter.htmlSpecialChars(notice1.getNoticeTitle()));
	        
	        log.info("info : 노티스 : "+notice1.getAttachList().toString());
	        log.info("info : 어태치 : "+attachList.toString());
	        service.regist(notice1);
	        
	        //output
	        rttr.addFlashAttribute("from", "regist");
	        return url;
	}
	
    @RequestMapping("/getFile")
    public String getFile(int attachNo,HttpServletRequest request, 
                                  HttpServletResponse response,Model model) throws Exception {
        
        String url="downloadFile";
        
        AttachVO attach = service.getAttachByAttachNo(attachNo);
        

        model.addAttribute("savedPath", attach.getUploadPath());
        model.addAttribute("fileName", attach.getFileName());       
    
        return url;
    }
    
	@RequestMapping("/notice/detail")
	public ModelAndView detail(int noticeNo,  
							   @RequestParam(defaultValue="") String from,
							   HttpServletRequest request,
							   ModelAndView mnv ) throws SQLException{
		String url="board/notice/detail";
		NoticeVO notice = null;
		if(!from.equals("list")) {
			notice = noticeService.getNoticeForModify(noticeNo);
		}else {
			notice = noticeService.getNotice(noticeNo);
			url="redirect:detail.do?noticeNo="+noticeNo;
		}
		
		mnv.addObject("notice",notice);
		mnv.setViewName(url);
		
		return mnv;
	}
	
	@RequestMapping("/notice/modifyForm")
	public String modifyForm(Model model, int noticeNo) throws Exception {
	    
	    String url = "board/notice/modifyForm";
	    
        List<NoticeVO> categoryList = noticeService.getNoticeCategoryList();
        model.addAttribute("categoryList",categoryList);
	    
	    NoticeVO notice = noticeService.getNotice(noticeNo);
	    model.addAttribute("notice",notice);
	    
	    return url;
	    
	}
	
	@RequestMapping("/notice/modify")
    public String modify(NoticeVO notice, 
            int noticeNo,  HttpServletRequest request,
	                     RedirectAttributes rttr) throws Exception {

        String url="redirect:detail.do?noticeNo="+noticeNo;
        noticeService.modify(notice);   
        rttr.addFlashAttribute("from","modify");
        
        return url;
	    
	}
	
	
    @RequestMapping(value="/notice/detail/noticeDelete", method=RequestMethod.POST)
    @ResponseBody
    public void noticeDelete(int noticeNo) throws Exception {             
        noticeService.remove(noticeNo);
        
        String url = "redirect:list";
    }
    
    
	
}

