package kr.co.drcrown.dao;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import kr.co.drcrown.command.Criteria;
import kr.co.drcrown.dto.BookingVO;
import kr.co.drcrown.dto.DocumentVO;
import kr.co.drcrown.dto.PatientVO;
import kr.co.drcrown.dao.DocumentDAO;

public class DocumentDAOImpl implements DocumentDAO {

	private SqlSession session;
	
	public void setSession(SqlSession session) {
		this.session = session;
	}
	 
	// 문서 상세조회
	  @Override
      public DocumentVO selectDocumentListByDocCode(String docCode) throws SQLException {
	      DocumentVO booking = session.selectOne("Document-Mapper.selectDocumentListByDocCode", docCode);
          return booking;
      }

	  // 환자번호를 통한 문서 검색
	@Override
	public List<DocumentVO> selectDocumentListByPno(String docPno) throws SQLException {
	    List<DocumentVO> documetPnoList
	    = session.selectList("Document-Mapper.selectDocumentListByPno", docPno);
		return documetPnoList;
	}
	
 //환자번호를 통한 출력 안된 문서정보리스트
	@Override
	public List<DocumentVO> selectPrintDocumentListByPno(String docPno) throws SQLException {
	    List<DocumentVO> documetPnoList
	    = session.selectList("Document-Mapper.selectPrintDocumentListByPno", docPno);
	    return documetPnoList;
	}
	
	// 문서등록
	@Override
	public void insertDocument(DocumentVO document) throws SQLException {
		session.update("Document-Mapper.insertDocument", document);

	}

	//문서수정
	@Override
	public void updateDocument(DocumentVO document) throws SQLException {
		session.update("Document-Mapper.updateDocument", document);

	}
	
	//문서출력완료
	@Override
	public void printDocument(DocumentVO documentCode) throws SQLException {
	    session.update("Document-Mapper.printDocument", documentCode);
	    
	}

	//문서삭제
	@Override
	public void deleteDocument(String documentCode) throws SQLException {
		session.update("Document-Mapper.deleteDocument", documentCode);

	}
	
	 // 환자번호를 통한 환자 검색
	@Override
    public PatientVO selectPatientByPatientNo(String pNo) throws SQLException {
        PatientVO patient = session.selectOne("Patient-Mapper.selectPatientByPatientNo", pNo);
        return patient;
    }

}
