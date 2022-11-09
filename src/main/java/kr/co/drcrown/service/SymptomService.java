package kr.co.drcrown.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import kr.co.drcrown.command.Criteria;
import kr.co.drcrown.command.ChartSearchCommand;
import kr.co.drcrown.dto.SymptomVO;

public interface SymptomService {
	

	Map<String, Object> getSymptomList(Criteria cri) throws SQLException;
	
	SymptomVO getSymptomCode(String symCode)throws SQLException;

    List<SymptomVO> getSymptomListByKeyword(ChartSearchCommand slc)throws SQLException;
	
}
