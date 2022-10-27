package kr.co.drcrown.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.co.drcrown.command.Criteria;
import kr.co.drcrown.dto.StockVO;

public interface StockDAO
{

	List<StockVO> selectEquipList(Criteria cri) throws SQLException;
	
	int selectEquipListCount(Criteria cri) throws SQLException;

	StockVO selectEquipByEquipNo(String equCode) throws SQLException;

	String selectEquipSequenceNextValue() throws SQLException;
	
	void insertEquip(StockVO equip) throws SQLException;
}
