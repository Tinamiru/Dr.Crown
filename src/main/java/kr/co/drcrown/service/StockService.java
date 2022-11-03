package kr.co.drcrown.service;

import java.sql.SQLException;
import java.util.Map;


import kr.co.drcrown.command.Criteria;
import kr.co.drcrown.dto.StockVO;

public interface StockService {
	

	Map<String, Object> getEquipmentList() throws SQLException;
	
	StockVO getEquipDetail(String equCode) throws SQLException;
	StockVO getEquipDetailForModify(String equCode)throws SQLException;
	
	void insertEquip(StockVO equip)throws SQLException;
	void insertEquipPreOrder(StockVO equip)throws SQLException;
	
	
	
	Map<String, Object> getConsumeList() throws SQLException;
	
	StockVO getConsumeDetail(String conCode) throws SQLException;
	StockVO getConsumeDetailForModify(String conCode)throws SQLException;
	
	void insertConsume(StockVO consume)throws SQLException;
	void insertConsumePreOrder(StockVO consume)throws SQLException;
	
	
	
	Map<String, Object> getMedideciveList() throws SQLException;
	
	StockVO getMediDetail(String mediCode) throws SQLException;
	StockVO getMediDetailForModify(String mediCode)throws SQLException;
	
	void insertMedi(StockVO medi)throws SQLException;
	void insertMediPreOrder(StockVO medi)throws SQLException;
	
	
	Map<String, Object> getDrugStockList() throws SQLException;
    
    StockVO getDstDetail(String dstCode) throws SQLException;
    StockVO getDstDetailForModify(String dstCode)throws SQLException;
    
    void insertDst(StockVO dst)throws SQLException;
    void insertDstPreOrder(StockVO dst)throws SQLException;
	
    Map<String, Object> getALLList() throws SQLException;
    
}
