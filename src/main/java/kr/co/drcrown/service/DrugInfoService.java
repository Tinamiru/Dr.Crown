package kr.co.drcrown.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import kr.co.drcrown.command.ChartSearchCommand;
import kr.co.drcrown.command.Criteria;
import kr.co.drcrown.dto.DrugInfoVO;



public interface DrugInfoService {
	
    Map<String, Object> getDrugInfoList(Criteria cri) throws SQLException;
    
    DrugInfoVO getDrugInfoNo(String drugNo)throws SQLException;

    List<DrugInfoVO> getDrugListByKeyword(ChartSearchCommand csc) throws SQLException;

    
}
