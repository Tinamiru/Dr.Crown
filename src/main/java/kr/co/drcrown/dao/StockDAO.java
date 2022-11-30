package kr.co.drcrown.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import kr.co.drcrown.command.ChartSearchCommand;
import kr.co.drcrown.dto.StockVO;

public interface StockDAO
{

	List<StockVO> selectEquipList() throws SQLException;
	
	StockVO selectEquipListByNo(String equipCode) throws SQLException;
	
	List<StockVO> getSearchEquListByKeyword(ChartSearchCommand csc)throws SQLException;
	
	void insertEquipList(StockVO equipList) throws SQLException;
	
	void insertEpuipListPreOrder(StockVO preOrderList) throws SQLException;
	
	
	
}
