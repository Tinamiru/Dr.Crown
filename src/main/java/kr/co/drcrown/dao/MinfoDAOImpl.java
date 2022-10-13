package kr.co.drcrown.dao;

import java.sql.SQLException;
import java.util.List;



import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.drcrown.command.Criteria;
import kr.co.drcrown.dto.MinfoVO;




public class MinfoDAOImpl implements MinfoDAO {
	

	private SqlSession session;
	
	public void setSession(SqlSession session) {
		this.session = session;
	}

	@Override
	public List<MinfoVO> selectMinfoList(Criteria cri) throws SQLException {

		int offset = cri.getStartRowNum();
		int limit = cri.getPerPageNum();
		RowBounds rowBounds = new RowBounds(offset, limit);

		List<MinfoVO> minfoList 
				= session.selectList("Minfo-Mapper.selectMinfoList", cri, rowBounds);

		return minfoList;

	}

	@Override
	public int selectMinfoListCount(Criteria cri) throws SQLException {
		int count = session.selectOne("Minfo-Mapper.selectMinfoListCount", cri);
		return count;

	}

//	@Override
//	public MemberVO selectMemberById(String id) throws SQLException {
//
//		MemberVO member = session.selectOne("Member-Mapper.selectMemberById", id);
//		return member;
//
//	}
//
//	@Override
//	public void insertMember(MemberVO member) throws SQLException {
//
//		session.update("Member-Mapper.insertMember", member);
//
//	}
//
//	@Override
//	public void updateMember(MemberVO member) throws SQLException {
//		session.update("Member-Mapper.updateMember", member);
//
//	}
//
//	@Override
//	public void deleteMember(String id) throws SQLException {
//		session.update("Member-Mapper.deleteMember", id);
//
//	}

}
