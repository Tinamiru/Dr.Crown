package kr.co.drcrown.controller;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.drcrown.command.Criteria;
import kr.co.drcrown.command.paperContentToDeatal;
import kr.co.drcrown.dto.MinfoVO;
import kr.co.drcrown.service.MinfoService;
import lombok.extern.slf4j.Slf4j;



@Controller
@RequestMapping("/board")
@Slf4j
public class MinfoController {

	@Autowired
	private MinfoService minfoService;
	
//	@RequestMapping("/main")
//	public void main() {}
	
    // 공지사항 리스트출력
    @RequestMapping("/mediInfo/list")
    public String mediInfoMediInfoMain(Criteria cri, Model model)throws Exception{
        
        String url="board/mediInfo/list";
        
        Map<String,Object> dataMap = minfoService.getMinfoList(cri);      
        model.addAttribute("dataMap",dataMap);
        
        return url;
    }
    // 공지사항 리스트출력

//    @RequestMapping("/mediInfo/list")
//    public String minfoList(Criteria cri, Model model)throws Exception{
//        
//        String url="board/mediInfo/mediInfoMain";
//        
//        return url;
//    }

    
    
//  @RequestMapping("/mediInfo/list")
//  public String mInfoList(Criteria cri, Model model)throws Exception{
//      
//      String url="board/mediInfo/list";
//      
//      return url;
//  }
//  @RequestMapping("/seminar/list")
//  public String seminarList(Criteria cri, Model model)throws Exception{
//      
//      String url="board/seminar/list";
//      
//      return url;
//  }


    @RequestMapping("/mediInfo/registForm")
    public String mediInfoListDetail(Model model)throws Exception{
        String url="board/mediInfo/registForm";
        
        List<MinfoVO> categoryList = minfoService.getMinfoCategoryList();
        model.addAttribute("categoryList",categoryList);
        
        return url;
    }
    
    @RequestMapping("/mediInfo/regist")
    public String regist(MinfoVO minfo,HttpServletRequest request,
                        RedirectAttributes rttr) throws Exception{
        
        String url = "redirect:registForm"; 
        
        minfoService.regist(minfo);   
        
        rttr.addFlashAttribute("from","regist");
        
        return url;
    }
    
    
    @GetMapping("/mediInfo/detail")
//    @ResponseBody
    public String detail(paperContentToDeatal command) throws SQLException{
        String url="board/mediInfo/detail";
        

        log.debug("논문 커맨드 : " + command);
        
        return url;
    }
    
    @RequestMapping(value="/mediInfo/detail/minfoDelete", method=RequestMethod.POST)
    @ResponseBody
    public void minfoDelete(int minfoNo) throws Exception {             
        minfoService.remove(minfoNo);
    }
    
    
    
    
	
}
