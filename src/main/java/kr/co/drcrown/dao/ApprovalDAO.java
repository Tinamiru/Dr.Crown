package kr.co.drcrown.dao;

import java.sql.SQLException;
import java.util.List;


import kr.co.drcrown.command.Criteria;
import kr.co.drcrown.dto.ApprovalVO;



public interface ApprovalDAO {
	List<ApprovalVO> selectApprovalCriteria( Criteria cri) throws SQLException;
	
	int selectApprovalCriteriaTotalCount( Criteria cri) throws SQLException;

	ApprovalVO selectApprovalByapCode (String apCode) throws SQLException;
	
	void insertBoard( ApprovalVO board) throws SQLException;
	
	void updateBoard( ApprovalVO board) throws SQLException;
	
	void deleteBoard(String apCode) throws SQLException;

	
}
