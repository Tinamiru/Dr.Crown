package kr.co.drcrown.dao;

import java.sql.SQLException;
import java.util.List;

import kr.co.drcrown.command.Criteria;
import kr.co.drcrown.dto.PatientVO;
import kr.co.drcrown.dto.PrescriptionVO;



public interface PrescriptionDAO {
 
    
    // 처방전 출력완료
    public void printPrescription(PrescriptionVO cdCode) throws SQLException;
    

    //환자번호를 통한 출력 안된 문서정보리스트
    List<PrescriptionVO> selectPrintPrescriptionListByPnoString (String docPno)throws SQLException;
	
    // 환자번호를 통한 환자 검색
    List<PrescriptionVO> selectPrescriptionListByCdCode (String cdCode)throws SQLException;

    

}

