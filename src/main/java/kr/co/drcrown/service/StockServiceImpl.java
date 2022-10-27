package kr.co.drcrown.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import kr.co.drcrown.command.Criteria;
import kr.co.drcrown.command.PageMaker;
import kr.co.drcrown.dto.NoticeVO;
import kr.co.drcrown.dto.StockVO;
import kr.co.drcrown.dao.NoticeDAO;
import kr.co.drcrown.dao.StockDAO;


public class StockServiceImpl implements StockService {

	private StockDAO stockDAO;

	public void setStockDAO(StockDAO stockDAO) {
		this.stockDAO = stockDAO;
	}

	@Override
	public Map<String, Object> getEquipmentList(Criteria cri) throws SQLException
	{
		Map<String, Object> dataMap = null;
		
		List<StockVO> equipList = stockDAO.selectEquipList(cri);

		int totalCount = stockDAO.selectEquipListCount(cri);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(totalCount);
		
		dataMap = new HashMap<String, Object>();
		dataMap.put("equipList", equipList);
		dataMap.put("pageMaker", pageMaker);

		return dataMap;
	}

	@Override
	public StockVO getEquipment(String equCode) throws SQLException
	{
		StockVO stock = stockDAO.selectEquipByEquipNo(equCode);
		return stock;
	}

	@Override
	public void regist(StockVO equiomnet) throws SQLException
	{
		String equipCode = stockDAO.selectEquipSequenceNextValue();
		equiomnet.setEquCode(equipCode);
		stockDAO.insertEquip(equiomnet);
		
	}

	
}