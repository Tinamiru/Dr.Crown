package kr.co.drcrown.dao;

import java.sql.SQLException;
import java.util.List;

import kr.co.drcrown.command.Criteria;
import kr.co.drcrown.dto.BookingVO;
import kr.co.drcrown.dto.DocumentVO;
import kr.co.drcrown.dto.PatientVO;


public interface DocumentDAO {
    // 문서 상세조회
    DocumentVO selectDocumentListByDocCode(String docCode) throws SQLException;
	
    
    // 환자번호를 통한 환자 검색
    PatientVO selectPatientByPatientNo(String pNo)throws SQLException;
    
    // 환자번호를 통한 문서 검색
    List<DocumentVO> selectDocumentListByPno(String docPno)throws SQLException;
    
    //환자번호를 통한 출력 안된 문서정보리스트
    List<DocumentVO> selectPrintDocumentListByPno(String docPno)throws SQLException;
	
	// 문서 생성
	public void insertDocument(DocumentVO document) throws SQLException;

	
	// 문서 수정
	public void updateDocument(DocumentVO document) throws SQLException;
	
	// 문서 출력완료
	public void printDocument(DocumentVO documentCode) throws SQLException;
	
	// 문서 삭제
    public void deleteDocument(String docunemtCode) throws SQLException;
}

