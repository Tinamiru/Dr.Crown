package kr.co.drcrown.controller;


import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.drcrown.command.Criteria;
import kr.co.drcrown.dto.BookingVO;
import kr.co.drcrown.dto.MemberVO;
import kr.co.drcrown.dto.PatientVO;
import kr.co.drcrown.service.BookingService;
import kr.co.drcrown.service.CureDetailService;
import kr.co.drcrown.service.PatientService;
import kr.co.drcrown.service.MemberService;

@Controller
@RequestMapping("/desk")
public class DeskController {
	
	@Autowired
	private PatientService patientService;
	
	@Autowired
	private BookingService bookingService;
	
	@Autowired
	private MemberService memberService;
	
	@Autowired
	private CureDetailService curedetailService;
	
	
	
	
	
	@RequestMapping("/main")
	public void main()throws Exception{}
	
	//환자등록
	@RequestMapping(value="/regist", produces="application/text; charset=UTF-8", method=RequestMethod.POST)
	@ResponseBody
	public String insertPatient(PatientVO patient) throws Exception {
		patientService.regist(patient);
		return null;
	}
	
	//환자리스트
	@RequestMapping(value = "/getBoardList", method = RequestMethod.GET)

	public ResponseEntity<Map<String, Object>>  testListDo() throws Exception {
		ResponseEntity<Map<String, Object>> entity = null;
		Criteria cri = new Criteria();
		
		Map<String, Object> dataMap =  bookingService.getBookingList(cri);
		entity = new ResponseEntity<Map<String, Object>>(dataMap, HttpStatus.OK);
		return entity;
	}

	//날짜별 환자리스트
	@RequestMapping(value = "/getBoardDateList", method = RequestMethod.GET)

	public ResponseEntity<Map<String, Object>>  testListDoo(String bookingRegdate) throws Exception {
		ResponseEntity<Map<String, Object>> entity = null;
		
		Map<String, Object> dataMap =  bookingService.getBookingDateList(bookingRegdate);
		entity = new ResponseEntity<Map<String, Object>>(dataMap, HttpStatus.OK);
		return entity;
	}
	
	// 환자별 진료 히스토리
	@RequestMapping(value = "/getPatCureList", method = RequestMethod.GET)
	
	public ResponseEntity<Map<String, Object>>  patCurelist(String pNo) throws Exception {
	    ResponseEntity<Map<String, Object>> entity = null;
	    
	    Map<String, Object> dataMap =  curedetailService.getCureDetailList(pNo);
	    entity = new ResponseEntity<Map<String, Object>>(dataMap, HttpStatus.OK);
	    return entity;
	}
	
	@RequestMapping(value = "/getPatient", method = RequestMethod.GET)
	public ResponseEntity<Map<String, Object>> patientDetailajax(String pNo) throws Exception {
		
		Map<String, Object> map = new HashMap<>();

		map.put("voList", patientService.getPatient(pNo));	
		
		return new ResponseEntity<>(map,HttpStatus.OK);
	}
	
	@RequestMapping(value = "/getSearchPatient", method = RequestMethod.GET)
	public ResponseEntity<Map<String, Object>> patientSearchajax(Criteria cri) throws Exception {
	    
	    Map<String, Object> map = new HashMap<>();
	    
	    map.put("patList", patientService.getsearchPatientList(cri));	
	    System.out.println(cri); 
	    
	    return new ResponseEntity<>(map,HttpStatus.OK);
	}
	
	
	@RequestMapping(value="/myjob", method=RequestMethod.POST)
    @ResponseBody
	 public List<Map<String,Object>> cureDetaile(String pNo) throws SQLException{
	        JSONArray jsonArr= new JSONArray();
	    
	        
	        System.out.println(pNo);
	        List<Map<String,Object>> vo=curedetailService.cureDetail(pNo);
	       	        
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
	
	
	
	@GetMapping("/detail")
	public String deskBooking() {
	    String url = "/desk/deskBooking";
	    return url;
	}
	
	@GetMapping("/booking/list")
	public String bookingList(Criteria cri, Model model)throws Exception { 
	    String url = "/desk/booking/list";
	    Map<String,Object> dataMap = memberService.getMemberDoctorList(cri);  
	    model.addAttribute("dataMap",dataMap);
		return url;
	}
	
	
   @PostMapping("/booking/bookingRegist")
    public String bookingRegist(BookingVO booking, RedirectAttributes rttr) throws Exception {
        String url = "redirect:list";
        
       System.out.println(booking.toString());
        bookingService.regist(booking);
        rttr.addFlashAttribute("from","regist");
        
        return url;
   }
   
  
   @GetMapping("/booking/detail")
   public ModelAndView bookingDetail(String bookingCode, ModelAndView mnv, Model model, Criteria cri) throws Exception{
       String url = "/desk/booking/detail";
           
       BookingVO booking = bookingService.getPatientbybookingCode(bookingCode);     
       Map<String,Object> dataMap = memberService.getMemberDoctorList(cri);  
       model.addAttribute("dataMap",dataMap);
       mnv.addObject("booking",booking);
       
       mnv.setViewName(url);
       
       return mnv;
   }
   
	
   @PostMapping("/booking/bookingModify")
   public String bookingModify(BookingVO booking, RedirectAttributes rttr) throws Exception {
       String url = "redirect:detail";
       
      System.out.println(booking.toString());
       bookingService.modify(booking);
       rttr.addFlashAttribute("from","modify");
       
       return url;
  }
  
   
	
	   
    @GetMapping("/booking/patientList")
    public String bokingPatientList(Criteria cri, Model model) throws Exception {
        String url = "/desk/booking/patientList";
        
        Map<String,Object> dataMap = patientService.getPatientList(cri);        
        model.addAttribute("dataMap",dataMap);
        
        
        return url;
    }
	
	
    @GetMapping("/booking/remove")
    public String remove(String bookingCode, RedirectAttributes rttr) throws Exception {
        String url = "redirect:detail";
        
        bookingService.remove(bookingCode);
        rttr.addFlashAttribute("from","remove");
        
        return url;
    }
	
	
	@GetMapping("/patient/list")
	public String patientList(Criteria cri, Model model) throws Exception {
		String url = "/desk/patient/list";
		
		Map<String,Object> dataMap = patientService.getPatientList(cri);		
		model.addAttribute("dataMap",dataMap);
		
		System.out.println("환자데이터맵"+dataMap.get("patientList").toString());
		
		return url;
	}
	@GetMapping("/patient/detail")
	public ModelAndView patientDetail(String pNo, ModelAndView mnv) throws Exception{
		String url = "/desk/patient/detail";
		
		PatientVO patient = patientService.getPatient(pNo);		
		
		mnv.addObject("patient",patient);
	
		mnv.setViewName(url);
		
		return mnv;
	}
	
	
	@GetMapping("/document/list")
	public String documentList() {
		String url = "/desk/document/list";
		return url;
	}
}
