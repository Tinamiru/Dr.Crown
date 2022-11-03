package kr.co.drcrown.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.co.drcrown.command.Criteria;
import kr.co.drcrown.dto.StockVO;

public interface StockDAO
{

	List<StockVO> selectEquipList() throws SQLException;
	
	StockVO selectEquipByEquipNo(String equCode) throws SQLException;
	
	
	void insertEquip(StockVO equip) throws SQLException;
	
	void insertEpuipPreOrder(StockVO equip) throws SQLException;
	
	
	
	List<StockVO> selectConsumList() throws SQLException;
	 
	StockVO selectConsumByConsumNo(String conCode) throws SQLException;
	
	
	void insertConsum(StockVO consume) throws SQLException;
	
	void insertConsumPreOrder(StockVO consume) throws SQLException;
	
	
	
	List<StockVO> selectMedideviceList() throws SQLException;
	
	StockVO selectMedideviceByMedideviceNo(String medi) throws SQLException;
	
	void insertMedidevice(StockVO medi) throws SQLException;
	
	void insertMedidevicePreOrder(StockVO medi) throws SQLException;

  
	
	List<StockVO> selectDrugStockList() throws SQLException;
	 
	StockVO selectDrugStockByDrugStockeNo(String dst) throws SQLException;
	
	void insertDrugStock(StockVO dst) throws SQLException;
	
	void insertDrugStockPreOrder(StockVO dst) throws SQLException;
	
}
