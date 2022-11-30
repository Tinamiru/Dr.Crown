package kr.co.drcrown.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import kr.co.drcrown.dto.PreOrderVO;
import kr.co.drcrown.dao.PreOrderDAO;

@Service
public class PreOrderServiceImpl implements PreOrderService {

	private PreOrderDAO preOrderDAO;

	public void setPreOrderDAO(PreOrderDAO preOrderDAO) {
		this.preOrderDAO = preOrderDAO;
	}

	@Override
	public Map<String, Object> getPreOrderList() throws SQLException
	{
		Map<String, Object> dataMap = null;
		
		List<PreOrderVO> preOrderList = preOrderDAO.selectPreOrderList();
		
		dataMap = new HashMap<String, Object>();
		dataMap.put("preOrderList", preOrderList);
		return dataMap;
	}
	

    @Override
    public PreOrderVO getPreOrderDetail(String reoCode) throws SQLException {
        PreOrderVO preOrderDetail = preOrderDAO.selectPreOrderListByNo(reoCode);
        return preOrderDetail;
    }

    
    

    /*
     * @Override
     * public Map<String, Object> getDrugInfoList() throws SQLException {
     * Map<String, Object> dataMap = null;
     * 
     * List<StockVO> equipList = stockDAO.selectEquipList();
     * List<StockVO> dstList = stockDAO.selectDrugStockList();
     * List<StockVO> mediList = stockDAO.selectMedideviceList();
     * List<StockVO> consumeList = stockDAO.selectConsumList();
     * 
     * dataMap = new HashMap<String, Object>();
     * dataMap.put("equipList", equipList);
     * dataMap.put("dstList", dstList);
     * dataMap.put("mediList", mediList);
     * dataMap.put("consumeList", consumeList);
     * 
     * return dataMap;
     * }
     */

	
}