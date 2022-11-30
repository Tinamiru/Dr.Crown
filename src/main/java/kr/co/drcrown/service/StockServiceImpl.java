package kr.co.drcrown.service;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import kr.co.drcrown.dto.StockVO;
import kr.co.drcrown.command.ChartSearchCommand;
import kr.co.drcrown.dao.StockDAO;

@Service
public class StockServiceImpl implements StockService {

	private StockDAO stockDAO;

	public void setStockDAO(StockDAO stockDAO) {
		this.stockDAO = stockDAO;
	}

	@Override
	public Map<String, Object> getEquipmentList() throws SQLException
	{
		Map<String, Object> dataMap = null;
		
		List<StockVO> equipList = stockDAO.selectEquipList();
		
		dataMap = new HashMap<String, Object>();
		dataMap.put("equipList", equipList);

		return dataMap;
	}
	

    @Override
    public StockVO getEquipListDetail(String equCode) throws SQLException {
        StockVO EquipDetail = stockDAO.selectEquipListByNo(equCode);
        return EquipDetail;
    }

    @Override
    public StockVO getEquipListDetailForModify(String equCode) throws SQLException {
        StockVO EquipDetail = stockDAO.selectEquipListByNo(equCode);
        return EquipDetail;
    }

    @Override
    public void insertEquipList(StockVO equipList) throws SQLException {
        stockDAO.insertEquipList(equipList);
    }

    

    @Override
    public List<StockVO> getSearchEquListByKeyword(ChartSearchCommand csc) throws SQLException {
        
        List<StockVO> serchEquipList = stockDAO.getSearchEquListByKeyword(csc);
        
        return serchEquipList;
    }

    @Override
    public void insertEquipListPreOrder(StockVO preOrderList) throws SQLException {
           stockDAO.insertEpuipListPreOrder(preOrderList);
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