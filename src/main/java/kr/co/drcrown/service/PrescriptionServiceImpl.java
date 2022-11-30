package kr.co.drcrown.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import kr.co.drcrown.command.BookingStateListCommand;
import kr.co.drcrown.command.Criteria;
import kr.co.drcrown.command.PageMaker;

import kr.co.drcrown.dao.PrescriptionDAO;

import kr.co.drcrown.dto.PrescriptionVO;


@Service
public class PrescriptionServiceImpl implements PrescriptionService {
	
    private PrescriptionDAO prescriptionDAO;
  
	
	
	public void setPrescriptionDAO(PrescriptionDAO prescriptionDAO) {
		this.prescriptionDAO = prescriptionDAO;
	}

	  //-- ===================처방전=============== -->  
	
	//처방전출력완료
	@Override
	public void getprintPrescription(PrescriptionVO cdCode) throws Exception {
	    prescriptionDAO.printPrescription(cdCode);
	}
   
    //환자번호를 통한 출력 안된 처방전정보리스트
  @Override
  public Map<String,Object> getPrintPrescriptionListByPno(String docPno) throws SQLException {
      Map<String, Object> dataMap = null;
      List<PrescriptionVO> prescriptionPnoList = prescriptionDAO.selectPrintPrescriptionListByPnoString(docPno);
      for (PrescriptionVO prescriptionVO : prescriptionPnoList) {
          System.out.println("뭐냐너: " + prescriptionVO.toString() );
    }
      dataMap = new HashMap<String, Object>();
      dataMap.put("prescriptionPnoList", prescriptionPnoList);
      return dataMap;
  }
  
//<!-- 환자번호를 통한 처방전 조회 -->
  @Override
  public Map<String,Object> getPrescriptionListByCdCode(String cdCode) throws SQLException {
      Map<String, Object> dataMap = null;
      List<PrescriptionVO> prescription = prescriptionDAO.selectPrescriptionListByCdCode(cdCode);
      dataMap = new HashMap<String, Object>();
      dataMap.put("prescription", prescription);
      return dataMap;
  }
    
  
}

  