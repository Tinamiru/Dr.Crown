package kr.co.drcrown.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import kr.co.drcrown.command.BookingStateListCommand;
import kr.co.drcrown.command.Criteria;
import kr.co.drcrown.dto.BookingVO;
import kr.co.drcrown.dto.DocumentVO;
import kr.co.drcrown.dto.PrescriptionVO;
import kr.co.drcrown.dto.PatientVO;


public interface PrescriptionService {
   

   
    
    //처방전출력완료 1
    public void getprintPrescription(PrescriptionVO cdCode)throws Exception;
	
    //환자번호를 통한 출력 안된 처방전정보리스트 2
    Map<String,Object>  getPrintPrescriptionListByPno(String docPno)throws SQLException;
    
  //  <!-- 환자번호를 통한 문서 조회 --> 3
    Map<String,Object>  getPrescriptionListByCdCode(String cdCode)throws SQLException;

	
}
