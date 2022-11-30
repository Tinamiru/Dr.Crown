package kr.co.drcrown.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import kr.co.drcrown.command.Criteria;
import kr.co.drcrown.command.ChartSearchCommand;
import kr.co.drcrown.dto.DiseasesVO;

public interface DiseasesService {
	

	Map<String, Object> getDiseasesList(Criteria cri) throws SQLException;
	
	DiseasesVO getDiseasesCode(String symCode)throws SQLException;

    List<DiseasesVO> getDiseasesListByKeyword(ChartSearchCommand csc)throws SQLException;
	
}
