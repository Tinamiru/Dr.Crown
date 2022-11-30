package kr.co.drcrown.dao;

 import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import kr.co.drcrown.command.Criteria;
import kr.co.drcrown.dto.DocumentVO;
import kr.co.drcrown.dto.PrescriptionVO;


public class PrescriptionDAOImpl implements PrescriptionDAO {

	private SqlSession session;
	
	public void setSession(SqlSession session) {
		this.session = session;
	}
	 
	// 처방전 출력완료
	@Override
	public void printPrescription(PrescriptionVO cdCode) throws SQLException {
	    session.update("Prescription-Mapper.printPrescription", cdCode);
	    
	}

    //환자번호를 통한 출력 안된 문서정보리스트
	@Override
	public List<PrescriptionVO> selectPrintPrescriptionListByPnoString(String docPno) throws SQLException {

	    List<PrescriptionVO> prescriptionPnoList
	    = session.selectList("Prescription-Mapper.selectPrintPrescriptionListByPnoString", docPno);
	    return prescriptionPnoList;
	}


	@Override
    public List<PrescriptionVO> selectPrescriptionListByCdCode(String cdCode) throws SQLException {
        List<PrescriptionVO> prescription
        = session.selectList("Prescription-Mapper.selectPrescriptionPrint", cdCode);
        return prescription;
    }

	
   




}
