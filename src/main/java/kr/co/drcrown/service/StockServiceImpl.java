package kr.co.drcrown.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


import kr.co.drcrown.command.Criteria;
import kr.co.drcrown.command.PageMaker;
import kr.co.drcrown.dto.StockVO;
import kr.co.drcrown.dao.StockDAO;


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
	public void insert(StockVO equip) throws SQLException
	{
		stockDAO.insertEquip(equip);
		
	}

    @Override
    public StockVO getEquipDetail(String equCode) throws SQLException {
        StockVO EquipDetail = stockDAO.selectEquipByEquipNo(equCode);
        return EquipDetail;
    }

    @Override
    public StockVO getEquipDetailForModify(String equCode) throws SQLException {
        StockVO EquipDetail = stockDAO.selectEquipByEquipNo(equCode);
        return EquipDetail;
    }

    @Override
    public void insertPreOrder(StockVO equip) throws SQLException {
        stockDAO.insertEpuipPreOrder(equip);
        
    }

	
}