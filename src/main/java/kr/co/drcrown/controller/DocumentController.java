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
import kr.co.drcrown.dto.DocumentVO;
import kr.co.drcrown.dto.PatientVO;
import kr.co.drcrown.service.DocumentService;
import kr.co.drcrown.service.PatientService;


@Controller
@RequestMapping("/document")
public class DocumentController {
	
	@Autowired
	private DocumentService documentService;
	
	   @Autowired
	    private PatientService patientService;
	
	
	    // 문서 출력폼
       @GetMapping("/printForm")
       public ModelAndView documentPrint(String docCode, ModelAndView mnv, Criteria cri) throws Exception{
           String url = "/desk/document/printForm";
               
           DocumentVO document = documentService.getDocumentListByDocCode(docCode);     
           mnv.addObject("document",document);
           
           mnv.setViewName(url);
           
           return mnv;
       }

	


    // 문서 상세폼
	   @GetMapping("/detailForm")
	   public ModelAndView documentDetail(String docCode, ModelAndView mnv, Criteria cri) throws Exception{
	       String url = "/desk/document/detailForm";
	           
	       DocumentVO document = documentService.getDocumentListByDocCode(docCode);     
	       mnv.addObject("document",document);
	       
	       mnv.setViewName(url);
	       
	       return mnv;
	   }
	
	
	
	// 문서 등록폼
	   @GetMapping("/registForm")
	   public ModelAndView registForm(String pNo, ModelAndView mnv) throws Exception{
	       String url = "desk/document/registForm";
	        
	        PatientVO patient = patientService.getPatient(pNo);     
	        
	        mnv.addObject("patient",patient);
	    
	        mnv.setViewName(url);
	        
	        return mnv;
	    }
	  
	
	// 문서등록
   @PostMapping("/regist")
    public String documentRegist(DocumentVO document, RedirectAttributes rttr) throws Exception {
        String url = "redirect:registForm";
        
        documentService.insertDocument(document);
        rttr.addFlashAttribute("from","regist");
        
        return url;
   }
   
 
// 문서수정
   @PostMapping("/modify")
   public String documentModify(DocumentVO document, RedirectAttributes rttr) throws Exception {
       String url = "redirect:detailForm";
       
      documentService.updateDocument(document);
       rttr.addFlashAttribute("from","modify");
       
       return url;
  }
   
// 문서발급처리
   @PostMapping("/print")
   public String documentPrint(DocumentVO docCode, RedirectAttributes rttr) throws Exception {
       String url = "redirect:printForm";
       
      documentService.printDocument(docCode);
       rttr.addFlashAttribute("from","print");
       
       return url;
  }
  
   
	// 문서삭제
    @GetMapping("/remove")
    public String remove(String docCode, RedirectAttributes rttr) throws Exception {
        String url = "redirect:detailForm";
        
        documentService.deleteDocument(docCode);
        rttr.addFlashAttribute("from","remove");
        
        return url;
    }
	
    
    // 환자번호를 통한 문서 검색
    @RequestMapping(value = "/getDocumentPnoList", method = RequestMethod.GET)
        
        public ResponseEntity<Map<String, Object>>  getDocumentPnoList(String docPno) throws Exception {
            ResponseEntity<Map<String, Object>> entity = null;
            
            Map<String, Object> dataMap =  documentService.getDocumentListByPno(docPno);
            entity = new ResponseEntity<Map<String, Object>>(dataMap, HttpStatus.OK);
            return entity;
        }
    
    
  //환자번호를 통한 출력 안된 문서정보리스트
    @RequestMapping(value = "/getPrintDocumentListByPno", method = RequestMethod.GET)
    
    public ResponseEntity<Map<String, Object>>  getPrintDocumentListByPno(String docPno) throws Exception {
        ResponseEntity<Map<String, Object>> entity = null;
        
        Map<String, Object> dataMap =  documentService.getPrintDocumentListByPno(docPno);
        entity = new ResponseEntity<Map<String, Object>>(dataMap, HttpStatus.OK);
        return entity;
    }

}
