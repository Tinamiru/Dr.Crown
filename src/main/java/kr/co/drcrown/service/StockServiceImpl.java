package kr.co.drcrown.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


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
	public void insertEquip(StockVO equip) throws SQLException
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
    public void insertEquipPreOrder(StockVO equip) throws SQLException {
        stockDAO.insertEpuipPreOrder(equip);
        
    }

    @Override
    public Map<String, Object> getConsumeList() throws SQLException {
        Map<String, Object> dataMap = null;
        
        List<StockVO> consumeList = stockDAO.selectConsumList();
        
        dataMap = new HashMap<String, Object>();
        dataMap.put("consumeList", consumeList);

        return dataMap;
    }

    @Override
    public StockVO getConsumeDetail(String conCode) throws SQLException {
        StockVO ConsumeDetail = stockDAO.selectConsumByConsumNo(conCode);
        return ConsumeDetail;
    }

    @Override
    public StockVO getConsumeDetailForModify(String conCode) throws SQLException {
        StockVO ConsumeDetail = stockDAO.selectConsumByConsumNo(conCode);
        return ConsumeDetail;
    }

    @Override
    public void insertConsume(StockVO consume) throws SQLException {
        stockDAO.insertConsum(consume);
    }

    @Override
    public void insertConsumePreOrder(StockVO consume) throws SQLException {
        stockDAO.insertConsumPreOrder(consume);
    }

    @Override
    public Map<String, Object> getMedideciveList() throws SQLException {
        Map<String, Object> dataMap = null;
        
        List<StockVO> mediList = stockDAO.selectMedideviceList();
        
        dataMap = new HashMap<String, Object>();
        dataMap.put("mediList", mediList);

        return dataMap;
    }

    @Override
    public StockVO getMediDetail(String mediCode) throws SQLException {
        StockVO MediDetail = stockDAO.selectMedideviceByMedideviceNo(mediCode);
        return MediDetail;
    }

    @Override
    public StockVO getMediDetailForModify(String mediCode) throws SQLException {
        StockVO MediDetail = stockDAO.selectMedideviceByMedideviceNo(mediCode);
        return MediDetail;
    }

    @Override
    public void insertMedi(StockVO medi) throws SQLException {
        stockDAO.insertMedidevice(medi);
    }

    @Override
    public void insertMediPreOrder(StockVO medi) throws SQLException {
        stockDAO.insertMedidevicePreOrder(medi);
    }

    @Override
    public Map<String, Object> getDrugStockList() throws SQLException {
        Map<String, Object> dataMap = null;
        
        List<StockVO> dstList = stockDAO.selectDrugStockList();
        
        dataMap = new HashMap<String, Object>();
        dataMap.put("dstList", dstList);

        return dataMap;
    }

    @Override
    public StockVO getDstDetail(String dstCode) throws SQLException {
        StockVO DstDetail = stockDAO.selectDrugStockByDrugStockeNo(dstCode);
        return DstDetail;
    }

    @Override
    public StockVO getDstDetailForModify(String dstCode) throws SQLException {
        StockVO DstDetail = stockDAO.selectDrugStockByDrugStockeNo(dstCode);
        return DstDetail;
    }

    @Override
    public void insertDst(StockVO dst) throws SQLException {
        stockDAO.insertDrugStock(dst);
    }

    @Override
    public void insertDstPreOrder(StockVO dst) throws SQLException {
        stockDAO.insertDrugStockPreOrder(dst);
    }

    @Override
    public Map<String, Object> getDrugInfoList() throws SQLException {
        Map<String, Object> dataMap = null;
        
        List<StockVO> equipList = stockDAO.selectEquipList();
        List<StockVO> dstList = stockDAO.selectDrugStockList();
        List<StockVO> mediList = stockDAO.selectMedideviceList();
        List<StockVO> consumeList = stockDAO.selectConsumList();
        
        dataMap = new HashMap<String, Object>();
        dataMap.put("equipList", equipList);
        dataMap.put("dstList", dstList);
        dataMap.put("mediList", mediList);
        dataMap.put("consumeList", consumeList);

        return dataMap;
    }

	
}