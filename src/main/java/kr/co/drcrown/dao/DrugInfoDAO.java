package kr.co.drcrown.dao;

import java.sql.SQLException;
import java.util.List;

import kr.co.drcrown.command.ChartSearchCommand;
import kr.co.drcrown.command.Criteria;
import kr.co.drcrown.dto.DrugInfoVO;

public interface DrugInfoDAO
{
	
	List<DrugInfoVO> selectDrugInfoList(Criteria cri) throws SQLException;
	
    int selectDrugInfoListCount(Criteria cri)throws SQLException;
    
    DrugInfoVO selectDrugInfoNo(String drugNo)throws SQLException;

    List<DrugInfoVO> getDrugListByKeyword(ChartSearchCommand csc)throws SQLException;
	
	
}
