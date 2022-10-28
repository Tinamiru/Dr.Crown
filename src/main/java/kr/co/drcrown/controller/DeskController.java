package kr.co.drcrown.controller;


import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.co.drcrown.command.Criteria;
import kr.co.drcrown.dto.PatientVO;
import kr.co.drcrown.service.BookingService;
import kr.co.drcrown.service.PatientService;

@Controller
@RequestMapping("/desk")
public class DeskController {
	
	@Autowired
	private PatientService patientService;
	
	@Autowired
	private BookingService bookingService;
	
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
	
	@RequestMapping(value = "/getPatient", method = RequestMethod.GET)
	public ResponseEntity<Map<String, Object>> patientDetailajax(int pNo) throws Exception {
		
		Map<String, Object> map = new HashMap<>();

		map.put("voList", patientService.getPatient(pNo));	
		System.out.println(pNo); 
		
		return new ResponseEntity<>(map,HttpStatus.OK);
	}
	
	
	@GetMapping("/booking/list")
	public String bookingList() {
		String url = "/desk/booking/list";
		return url;
	}
	
	@GetMapping("/booking/regist")
	public String bookingRegist() {
		String url = "/desk/booking/regist";
		return url;
	}
	
	   
    @GetMapping("/booking/patientList")
    public String bokingPatientList(Criteria cri, Model model) throws Exception {
        String url = "/desk/booking/patientList";
        
        Map<String,Object> dataMap = patientService.getPatientList(cri);        
        model.addAttribute("dataMap",dataMap);
        
        
        return url;
    }
	
	
	@GetMapping("/booking/toothList")
	public String bookingToothList() {
		String url = "/desk/booking/toothList";
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
	public ModelAndView patientDetail(int pNo, ModelAndView mnv) throws Exception{
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
