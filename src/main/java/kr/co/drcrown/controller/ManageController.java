package kr.co.drcrown.controller;

import java.io.File;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.drcrown.command.Criteria;
import kr.co.drcrown.command.MemberRegistCommand;
import kr.co.drcrown.command.PatCommand;
import kr.co.drcrown.dto.MemberVO;
import kr.co.drcrown.service.ManageService;
import kr.co.drcrown.service.MemberService;

@Controller
@RequestMapping("/manage")
public class ManageController {
	
	@Autowired
	private MemberService memberService;
	
	@Autowired
	private ManageService manageService;

	@RequestMapping("/main")
	public void main() throws Exception {
	}

	@GetMapping("/statis/list")
	public String statisList() {
		String url = "/manage/statis/list";
		return url;
	}

	@GetMapping("/member/list")
	public String memberList(Criteria cri, Model model , HttpServletRequest request) throws Exception {
		String url = "/manage/member/list";
		
		Map<String, Object> dataMap = memberService.getMemberList(cri);

		model.addAttribute("dataMap", dataMap);
		
		return url;
	}
	
	@GetMapping("/member/registForm")
	public String registForm() {
		String url = "manage/member/regist";
		return url;
	}
	
	@PostMapping("/member/regist")
	public String regist(MemberVO member,String typeAuthority, RedirectAttributes rttr) throws Exception {
		String url = "redirect:registForm";
		
		memberService.regist(member, typeAuthority);
		rttr.addFlashAttribute("from","regist");
		
		return url;
	}
	@GetMapping("/member/remove")
	public String remove(String memId, RedirectAttributes rttr) throws Exception {
		String url = "redirect:list";
		
		memberService.remove(memId);
		rttr.addFlashAttribute("from","remove");
		
		return url;
	}
	@GetMapping("/member/activation")
	public String activation(String memId, RedirectAttributes rttr) throws Exception {
	    String url = "redirect:list";
	    
	    memberService.activation(memId);
	    rttr.addFlashAttribute("from","activation");
	    
	    return url;
	}

	@GetMapping("/work/main")
	public String workMain() {
		String url = "/manage/work/main";
		return url;
	}

	@GetMapping("/work/list")
	public String workList() {
		String url = "/manage/work/list";
		return url;
	}
	

	@GetMapping("/work/workHoursList")
	public String workWorkHoursList() {
		String url = "/manage/work/workHoursList";
		return url;
	}

	@GetMapping("/work/attendanceApplicationList")
	public String workAttendanceApplicationList() {
		String url = "/manage/work/attendanceApplicationList";
		return url;
	}

	@GetMapping("/work/vacationMenu")
	public String workVacationMenu() {
		String url = "/manage/work/vacationMenu";
		return url;
	}

	@GetMapping("/work/vacationApplication")
	public String workVacationApplication() {
		String url = "/manage/work/vacationApplication";
		return url;
	}
	
	@GetMapping("/work/vacationList")
	public String workVacationList() {
		String url = "/manage/work/vacationList";
		return url;
	}

	@GetMapping("/address/list")
	public String addressList() {
		String url = "/manage/address/list";
		return url;
	}
	
	
	   @RequestMapping(value="/patStats", method=RequestMethod.POST)
	    @ResponseBody
	     public List<Map<String,Object>> patStats(PatCommand patco) throws SQLException{
	            JSONArray jsonArr= new JSONArray();

        /*
         * Map<String, Object> map1 = new HashMap<String, Object>();
         * map1.put("strDate", pcom.getStrDate());
         * 
         * vo.add(map1);
         */ 
	            List<Map<String,Object>> vo=manageService.patStats(patco);
	            for(Map<String,Object>map: vo){
	                jsonArr.add(convertMapToJson(map));
	            }
	                    
	            return jsonArr;
	        }
	   @RequestMapping(value="/patStatsmon", method=RequestMethod.POST)
	   @ResponseBody
	   public List<Map<String,Object>> patStatsmon(PatCommand patco) throws SQLException{
	       JSONArray jsonArr= new JSONArray();
	       
	       /*
	        * Map<String, Object> map1 = new HashMap<String, Object>();
	        * map1.put("strDate", pcom.getStrDate());
	        * 
	        * vo.add(map1);
	        */ 
	       List<Map<String,Object>> vo=manageService.patStatsmon(patco);
	       for(Map<String,Object>map: vo){
	           jsonArr.add(convertMapToJson(map));
	       }
	       
	       return jsonArr;
	   }
	        
	     public static JSONObject convertMapToJson(Map<String,Object> map){
	            
	            JSONObject json = new JSONObject();
	            for(Map.Entry<String, Object>entry:map.entrySet()){
	                String key = entry.getKey();
	                Object value = entry.getValue();
	                json.put(key, value);
	            }
	            return json;
	        }
	    
}
