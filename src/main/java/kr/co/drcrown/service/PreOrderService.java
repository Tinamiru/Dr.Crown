package kr.co.drcrown.service;

import java.sql.SQLException;
import java.util.Map;

import kr.co.drcrown.dto.PreOrderVO;

public interface PreOrderService {
	

	Map<String, Object> getPreOrderList() throws SQLException;
	
	PreOrderVO getPreOrderDetail(String reoCode) throws SQLException;
	
	
	
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
