package kr.co.drcrown.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import kr.co.drcrown.command.BookingStateListCommand;
import kr.co.drcrown.command.Criteria;
import kr.co.drcrown.command.PageMaker;
import kr.co.drcrown.dao.DocumentDAO;
import kr.co.drcrown.dao.PatientDAO;
import kr.co.drcrown.dto.DocumentVO;
import kr.co.drcrown.dto.PatientVO;


@Service
public class DocumentServiceImpl implements DocumentService {
	
    private DocumentDAO documentDAO;
  
    private PatientDAO patientDAO;
    
	
	
	public void setDocumentDAO(DocumentDAO documentDAO) {
		this.documentDAO = documentDAO;
	}
	
	  public void setPatientDAO(PatientDAO patientDAO) {
	        this.patientDAO = patientDAO;
	    }
	

	  //문서정보조회 
	    @Override
	       public DocumentVO getDocumentListByDocCode(String docCode) throws SQLException {
	        DocumentVO document=  documentDAO.selectDocumentListByDocCode(docCode);
	           return document;

	       }
	  
	  
	    //환자번호를 통한 문서정보리스트
	@Override
	public Map<String,Object>  getDocumentListByPno(String docPno) throws SQLException {
	    Map<String, Object> dataMap = null;
	    List<DocumentVO> documentPnoList = documentDAO.selectDocumentListByPno(docPno);
	    dataMap = new HashMap<String, Object>();
        dataMap.put("bookingDateList", documentPnoList);
	    return dataMap;
	}
	
	  //환자번호를 통한 출력 안된 문서정보리스트
    @Override
    public Map<String,Object>  getPrintDocumentListByPno(String docPno) throws SQLException {
        Map<String, Object> dataMap = null;
        List<DocumentVO> documentPnoList = documentDAO.selectPrintDocumentListByPno(docPno);
        dataMap = new HashMap<String, Object>();
        dataMap.put("bookingDateList", documentPnoList);
        return dataMap;
    }

	
    @Override
    public PatientVO getPatient(String pNo) throws SQLException {
        PatientVO patient = patientDAO.selectPatientByPatientNo(pNo);
        return patient;
    }
	
    //문서등록
	@Override
	public void insertDocument(DocumentVO document) throws Exception {
	    documentDAO.insertDocument(document);
	}
   
	//문서수정
	@Override
	public void updateDocument(DocumentVO document) throws Exception {
	    documentDAO.updateDocument(document);
	}
	
	//문서출력완료
	@Override
	public void printDocument(DocumentVO documentCode) throws Exception {
	    documentDAO.printDocument(documentCode);
	}
	
	   //문서삭제
	@Override
	public void deleteDocument(String docCode) throws Exception {
	    documentDAO.deleteDocument(docCode);

	}


   
}

  