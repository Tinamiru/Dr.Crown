package kr.co.drcrown.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;


import kr.co.drcrown.command.Criteria;
import kr.co.drcrown.dto.ApprovalVO;

public class ApprovalDAOImpl implements ApprovalDAO {
	
	private SqlSession session;

	public void setSession(SqlSession session) {
		this.session = session;
	}

	@Override
	public List<ApprovalVO> selectApprovalCriteria(Criteria cri) throws SQLException {
		int offset = cri.getStartRowNum();
		int limit = cri.getPerPageNum();
		RowBounds rowBounds = new RowBounds(offset, limit);

		List<ApprovalVO> ApprovalList 
				= session.selectList("Approval-Mapper.selectSearchApprovalList", cri, rowBounds);

		return ApprovalList;
	}

	@Override
	public int selectApprovalCriteriaTotalCount(Criteria cri) throws SQLException {
		int count = session.selectOne("Approval-Mapper.selectApprovalListCount", cri);	
		return count;
	}

	@Override
	public ApprovalVO selectApprovalByapCode(String apCode) throws SQLException {
		ApprovalVO approval = session.selectOne("Approval-Mapper.selectApprovalByapCode", apCode);
		return approval;
	}

	@Override
	public void insertBoard(ApprovalVO approval) throws SQLException {
		session.update("Approval-Mapper.insertApproval", approval);
		
	}

	@Override
	public void updateBoard(ApprovalVO approval) throws SQLException {
		session.update("Approval-Mapper.updateApproval", approval);
		
	}

	@Override
	public void deleteBoard(String apCode) throws SQLException {
		session.update("Approval-Mapper.deleteApproval", apCode);

	}

}
