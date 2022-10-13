package kr.co.drcrown.controller;

import java.sql.SQLException;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.josephoconnell.html.HTMLInputFilter;
import kr.co.drcrown.command.Criteria;
import kr.co.drcrown.dto.NoticeVO;
import kr.co.drcrown.service.NoticeService;

@Controller
@RequestMapping("/board")
public class BoardController {
	
	@Autowired
	private NoticeService noticeService;
	
//	@RequestMapping("/main")
//	public void main()throws Exception{}
	
	// 공지사항 리스트출력
	@RequestMapping("/notice/list")
	public String noticeList(Criteria cri, Model model)throws Exception{
		
		String url="board/notice/list";
		
		Map<String,Object> dataMap = noticeService.getNoticeList(cri);		
		model.addAttribute("dataMap",dataMap);
		
		return url;
	}
	
	@RequestMapping("/mediInfo/list")
	public String mInfoList(Criteria cri, Model model)throws Exception{
		
		String url="board/mediInfo/list";
		
		return url;
	}
	@RequestMapping("/seminar/list")
	public String seminarList(Criteria cri, Model model)throws Exception{
		
		String url="board/seminar/list";
		
		return url;
	}


//	@RequestMapping("/registForm")
//	public String registForm(){
//		String url = "notice/regist";
//		return url;
//	}
//	
//	@RequestMapping("/regist")
//	public String regist(NoticeVO notice,HttpServletRequest request,
//						RedirectAttributes rttr) throws Exception{
//		String url = "redirect:/notice/list";	
//		
//		notice.setNotice_title(HTMLInputFilter.htmlSpecialChars(notice.getNotice_title()));
//		
//		noticeService.regist(notice);	
//		
//		rttr.addFlashAttribute("from","regist");
//				
//		return url;
//	}
//	
//	@RequestMapping("/detail")
//	public ModelAndView detail(int notice_no,  
//							   @RequestParam(defaultValue="") String from,
//							   HttpServletRequest request,
//							   ModelAndView mnv ) throws SQLException{
//		String url="notice/detail";
//		
//		NoticeVO notice = null;
//		
//		if(!from.equals("list")) {
//			notice = noticeService.getNoticeForModify(notice_no);
//		}else {
//			notice = noticeService.getNotice(notice_no);
//			url="redirect:/notice/detail.do?notice_no="+notice_no;
//		}
//		
//		mnv.addObject("notice",notice);
//		mnv.setViewName(url);
//		
//		return mnv;
//	}
//	
//	@RequestMapping("/modifyForm")
//	public ModelAndView modifyForm(int notice_no,ModelAndView mnv) throws Exception {
//		String url = "notice/modify";
//		
//		NoticeVO notice = noticeService.getNoticeForModify(notice_no);
//		
//		mnv.addObject("notice",notice);
//		mnv.setViewName(url);
//	
//		return mnv;
//	
//	}
//	
//	@RequestMapping(value="/modify",method=RequestMethod.POST)
//	public String modifyPost(NoticeVO notice,
//							 HttpServletRequest request,
//							 RedirectAttributes rttr)throws Exception{
//		String url = "redirect:/notice/detail.do";
//		
//		notice.setNotice_title(HTMLInputFilter.htmlSpecialChars(notice.getNotice_title()));
//		
//		noticeService.modify(notice);
//		
//		rttr.addAttribute("notice_no",notice.getNotice_no());
//		rttr.addFlashAttribute("from","modify");
//		
//		return url;
//		
//	}
//	
//	@RequestMapping(value = "/remove", method=RequestMethod.GET)
//	public String remove(int notice_no,RedirectAttributes rttr) throws Exception {
//		String url = "redirect:/notice/detail.do";
//		
//		noticeService.remove(notice_no);
//		
//		rttr.addFlashAttribute("from","remove");
//		rttr.addAttribute("notice_no",notice_no);
//		
//		return url;
//		
//		
//	}
	
}

