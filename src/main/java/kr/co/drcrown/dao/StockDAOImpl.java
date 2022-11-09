package kr.co.drcrown.dao;

import java.sql.SQLException;
import java.util.List;
import org.apache.ibatis.session.SqlSession;

import kr.co.drcrown.dto.StockVO;

public class StockDAOImpl implements StockDAO {
	
	
	private SqlSession session;
	public void setSession(SqlSession session) {
		this.session = session;
	}

	@Override
	public List<StockVO> selectEquipList() throws SQLException
	{

		List<StockVO> equipList = 
				session.selectList("Stock-Mapper.selectEquipList");

		return equipList;
	}
	@Override
	public StockVO selectEquipByEquipNo(String equCode) throws SQLException
	{
		StockVO stock = session.selectOne("Stock-Mapper.selectEquipByNo", equCode);
		return stock;
	}
	
	@Override
	public void insertEquip(StockVO equip) throws SQLException
	{
		session.update("Stock-Mapper.insertEquip",equip);
	}

    @Override
    public void insertEpuipPreOrder(StockVO equip) throws SQLException {
        session.update("Stock-Mapper.insertEpuipPreOrder",equip);
    }

    @Override
    public List<StockVO> selectConsumList() throws SQLException {
        List<StockVO> consumList = 
                session.selectList("Stock-Mapper.selectConsumList");

        return consumList;
    }

    @Override
    public StockVO selectConsumByConsumNo(String conCode) throws SQLException {
        StockVO stock = session.selectOne("Stock-Mapper.selectConsumByNo", conCode);
        return stock;
    }

   

    @Override
    public void insertConsum(StockVO consume) throws SQLException {
        session.update("Stock-Mapper.insertConsum",consume);
    }

    @Override
    public void insertConsumPreOrder(StockVO consume) throws SQLException {
        session.update("Stock-Mapper.insertConsumPreOrder",consume);
    }

    @Override
    public List<StockVO> selectMedideviceList() throws SQLException {
        List<StockVO> mediList = 
                session.selectList("Stock-Mapper.selectMedideviceList");

        return mediList;
    }

    @Override
    public StockVO selectMedideviceByMedideviceNo(String medi) throws SQLException {
        StockVO stock = session.selectOne("Stock-Mapper.selectMedideviceByNo", medi);
        return stock;
    }


    @Override
    public void insertMedidevice(StockVO medi) throws SQLException {
        session.update("Stock-Mapper.insertMedidevice",medi);
    }

    @Override
    public void insertMedidevicePreOrder(StockVO medi) throws SQLException {
        session.update("Stock-Mapper.insertMedidevicePreOrder",medi);
    }

    @Override
    public List<StockVO> selectDrugStockList() throws SQLException {
        List<StockVO> dstList = 
                session.selectList("Stock-Mapper.selectDrugStockList");

        return dstList;
    }

    @Override
    public StockVO selectDrugStockByDrugStockeNo(String dst) throws SQLException {
        StockVO stock = session.selectOne("Stock-Mapper.selectDrugStockByNo", dst);
        return stock;
    }

    @Override
    public void insertDrugStock(StockVO dst) throws SQLException {
        session.update("Stock-Mapper.insertDrugStock",dst);
    }

    @Override
    public void insertDrugStockPreOrder(StockVO dst) throws SQLException {
        session.update("Stock-Mapper.insertDrugStockPreOrder",dst);
    }
}