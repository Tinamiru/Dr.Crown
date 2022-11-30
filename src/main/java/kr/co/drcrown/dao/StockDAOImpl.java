package kr.co.drcrown.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;


import kr.co.drcrown.command.ChartSearchCommand;
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
	public StockVO selectEquipListByNo(String equCode) throws SQLException
	{
		StockVO stock = session.selectOne("Stock-Mapper.selectEquipListByNo", equCode);
		return stock;
	}
	
	@Override
	public void insertEquipList(StockVO equipList) throws SQLException
	{
		session.update("Stock-Mapper.insertEquipList",equipList);
	}

    @Override
    public List<StockVO> getSearchEquListByKeyword(ChartSearchCommand csc) throws SQLException {
        List<StockVO> searchEquList = session.selectList("Stock-Mapper.searchEquList",csc);
        return searchEquList;
    }

    @Override
    public void insertEpuipListPreOrder(StockVO preOrderList) throws SQLException {
        session.update("Stock-Mapper.insertEpuipListPreOrder",preOrderList);
        
    }

}