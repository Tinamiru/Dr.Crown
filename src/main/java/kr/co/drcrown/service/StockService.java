package kr.co.drcrown.service;

import java.sql.SQLException;
import java.util.Map;


import kr.co.drcrown.command.Criteria;
import kr.co.drcrown.dto.StockVO;

public interface StockService {
	

	// 목록조회
	Map<String, Object> getEquipmentList() throws SQLException;
	
	// 상세보기
	StockVO getEquipDetail(String equCode) throws SQLException;
	StockVO getEquipDetailForModify(String equCode)throws SQLException;
	

	// 등록
	void insert(StockVO equip)throws SQLException;
	void insertPreOrder(StockVO equip)throws SQLException;
	
	
}
