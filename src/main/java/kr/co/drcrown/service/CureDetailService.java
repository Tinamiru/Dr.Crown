package kr.co.drcrown.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import kr.co.drcrown.command.ChartCureDetailCommand;
import kr.co.drcrown.command.CureDetailRegistCommand;
import kr.co.drcrown.command.PatientPrescribedSelectListCommand;
import kr.co.drcrown.dto.CureDetailVO;
import kr.co.drcrown.dto.MemberVO;

public interface CureDetailService {

    Map<String,Object> getCureDetailList(String pNo)throws SQLException;
    
    List<Map<String, Object>> cureDetail(String pNo)throws SQLException;

    List<ChartCureDetailCommand> getCureDetailListByPNoForChar(String pNo)throws SQLException;
    
    public void piRegist(CureDetailVO cd) throws Exception;

    void registCureDetail(CureDetailRegistCommand cdrc) throws Exception;

    List<PatientPrescribedSelectListCommand> getPrescribedDrugListAll(String pno) throws Exception;
    
}
