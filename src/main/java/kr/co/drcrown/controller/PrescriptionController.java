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
import kr.co.drcrown.dto.PatientVO;
import kr.co.drcrown.dto.PrescriptionVO;
import kr.co.drcrown.service.PatientService;
import kr.co.drcrown.service.PrescriptionService;



@Controller
@RequestMapping("/prescription")
public class PrescriptionController {
	
	@Autowired
	private PrescriptionService prescriptionService;
	  
	@Autowired
      private PatientService patientService;
	

	    // 처방전 출력폼  <!-- 환자번호를 통한 문서 조회 --> 3
       @GetMapping("/printPrescriptionForm")
       public ModelAndView  prescriptionPrint(String pNo, String cdCode, ModelAndView mnv, Criteria cri) throws Exception{
           String url = "/desk/prescription/printPrescriptionForm";
               System.out.println("PNO: "+ pNo);
               System.out.println("cdCOde: "+ cdCode);
           PatientVO patient = patientService.getPatient(pNo);     
           mnv.addObject("patient",patient);
           mnv.addObject("cdCode",cdCode);

           mnv.setViewName(url);
           
           return mnv;
       }


      @RequestMapping(value = "/getPrescriptionListByCdCode", method =RequestMethod.POST)
      
      public ResponseEntity<Map<String, Object>>
      getPrescriptionListByCdCode(String cdCode) throws Exception {
      ResponseEntity<Map<String, Object>> entity = null;
      
      Map<String, Object> dataMap =
      prescriptionService.getPrescriptionListByCdCode(cdCode);
      entity = new ResponseEntity<Map<String, Object>>(dataMap, HttpStatus.OK);
      return entity;
      }
     
       

   
// 처방전발급처리 1
   @PostMapping("/printPrescription")
   public String  Printprescription(PrescriptionVO cdCode, RedirectAttributes rttr) throws Exception {
       String url = "redirect:printPrescriptionForm";
       System.out.println("출력 컨트롤러 진입");
       
       prescriptionService.getprintPrescription(cdCode);
       rttr.addFlashAttribute("from","printPrescription");
       
       return url;
  }
  
   
   //환자번호를 통한 출력 안된 처방전정보리스트 2
   @RequestMapping(value = "/getPrintPrescriptionListByPno", method = RequestMethod.GET)
   
   public ResponseEntity<Map<String, Object>>  getPrintPrescriptionListByPno(String docPno) throws Exception {
       ResponseEntity<Map<String, Object>> entity = null;
       
       Map<String, Object> dataMap =  prescriptionService.getPrintPrescriptionListByPno(docPno);
       entity = new ResponseEntity<Map<String, Object>>(dataMap, HttpStatus.OK);
       return entity;
   }
	
    
 
    

}
