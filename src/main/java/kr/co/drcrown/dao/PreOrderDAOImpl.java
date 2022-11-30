package kr.co.drcrown.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;


import kr.co.drcrown.dto.PreOrderVO;

public class PreOrderDAOImpl implements PreOrderDAO {
	
	
	private SqlSession session;
	public void setSession(SqlSession session) {
		this.session = session;
	}

	@Override
	public List<PreOrderVO> selectPreOrderList() throws SQLException
	{

		List<PreOrderVO> preOrderList = 
				session.selectList("PreOrder-Mapper.selectPreOrderList");

		return preOrderList;
	}
	@Override
	public PreOrderVO selectPreOrderListByNo(String reoCode) throws SQLException
	{
	    PreOrderVO preOrder = session.selectOne("PreOrder-Mapper.selectPreOrderListByNo", reoCode);
		return preOrder;
	}
	

}