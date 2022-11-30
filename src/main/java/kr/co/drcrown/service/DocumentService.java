package kr.co.drcrown.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import kr.co.drcrown.command.BookingStateListCommand;
import kr.co.drcrown.command.Criteria;
import kr.co.drcrown.dto.BookingVO;
import kr.co.drcrown.dto.DocumentVO;
import kr.co.drcrown.dto.PatientVO;


public interface DocumentService {
   

    
  //문서정보조회 
    DocumentVO getDocumentListByDocCode(String docCode) throws SQLException;

 
	//환자번호를 통한 문서정보리스트
    Map<String,Object>  getDocumentListByPno(String docPno)throws SQLException;	
   
    //환자번호를 통한 출력 안된 문서정보리스트
    Map<String,Object>  getPrintDocumentListByPno(String docPno)throws SQLException;	
	
  //환자번호를 통한 환자정보조회
    PatientVO getPatient(String pNo)throws SQLException;   
    
	//문서등록
	public void insertDocument(DocumentVO document) throws Exception;
	
	//문서수정
    public void updateDocument(DocumentVO document)throws Exception;
   
    //문서출력완료
    public void printDocument(DocumentVO documentCode)throws Exception;
    
    //문서삭제
    public void deleteDocument(String docCode)throws Exception;
	
    
   
	
}
