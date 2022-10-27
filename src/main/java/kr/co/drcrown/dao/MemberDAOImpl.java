package kr.co.drcrown.dao;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import kr.co.drcrown.command.Criteria;
import kr.co.drcrown.dto.MemberVO;

public class MemberDAOImpl implements MemberDAO {

	private SqlSession session;
	
	public void setSession(SqlSession session) {
		this.session = session;
	}

	@Override
	public List<MemberVO> selectMemberList(Criteria cri) throws SQLException {

		int offset = cri.getStartRowNum();
		int limit = cri.getPerPageNum();
		RowBounds rowBounds = new RowBounds(offset, limit);

		List<MemberVO> memberList 
				= session.selectList("Member-Mapper.selectMemberList", cri, rowBounds);

		return memberList;

	}

	@Override
	public int selectMemberListCount(Criteria cri) throws SQLException {
		int count = session.selectOne("Member-Mapper.selectMemberListCount", cri);
		return count;

	}

	@Override
	public MemberVO selectMemberById(String id) throws SQLException {

		MemberVO member = session.selectOne("Member-Mapper.selectMemberById", id);
		return member;

	}

	@Override
	
	public void insertMember(MemberVO member, String typeAuthority) throws SQLException {
		Map<String, Object> dataMap = new HashMap<String, Object>();
		dataMap.put("member", member);
		dataMap.put("typeAuthority",typeAuthority);
		session.update("Member-Mapper.insertMember", dataMap);

	}

	@Override
	public void updateMember(MemberVO member) throws SQLException {
	
		session.update("Member-Mapper.updateMember", member);

	}

	@Override
	public void deleteMember(String memId) throws SQLException {
		session.update("Member-Mapper.deleteMember", memId);

	}

	@Override
	public MemberVO selectMemberByPicture(String picture) throws SQLException {
		MemberVO member = session.selectOne("Member-Mapper.selectMemberByPicture",picture);		
		return member;
	}

}







