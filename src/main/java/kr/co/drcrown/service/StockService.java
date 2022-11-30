package kr.co.drcrown.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import kr.co.drcrown.command.ChartSearchCommand;
import kr.co.drcrown.dto.StockVO;

public interface StockService {
	

	Map<String, Object> getEquipmentList() throws SQLException;
	
	StockVO getEquipListDetail(String equCode) throws SQLException;
	StockVO getEquipListDetailForModify(String equCode)throws SQLException;
	
	void insertEquipList(StockVO equipList)throws SQLException;
	void insertEquipListPreOrder(StockVO preOrderList)throws SQLException;
	
	List<StockVO> getSearchEquListByKeyword(ChartSearchCommand csc)throws SQLException;
	
	
    /*
     * Map<String, Object> getDrugStockList() throws SQLException;
     * 
     * StockVO getDstDetail(String dstCode) throws SQLException;
     * StockVO getDstDetailForModify(String dstCode)throws SQLException;
     * 
     * void insertDst(StockVO dst)throws SQLException;
     * void insertDstPreOrder(StockVO dst)throws SQLException;
     * 
     * Map<String, Object> getDrugInfoList() throws SQLException;
     */
    
}
