package kr.co.drcrown.dao;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import kr.co.drcrown.command.Criteria;
import kr.co.drcrown.dto.NoticeVO;
import kr.co.drcrown.dto.PatientVO;
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
	public String selectEquipSequenceNextValue() throws SQLException
	{
		String seq_num = session.selectOne("Stock-Mapper.selectEquipSequenceNextValue");
		return seq_num;
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
}