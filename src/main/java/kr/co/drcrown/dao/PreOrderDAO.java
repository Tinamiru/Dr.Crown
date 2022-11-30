package kr.co.drcrown.dao;

import java.sql.SQLException;
import java.util.List;

import kr.co.drcrown.dto.PreOrderVO;

public interface PreOrderDAO
{

	List<PreOrderVO> selectPreOrderList() throws SQLException;
	PreOrderVO selectPreOrderListByNo(String reoCode) throws SQLException;
	
}
