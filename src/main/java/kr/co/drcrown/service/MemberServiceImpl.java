package kr.co.drcrown.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import kr.co.drcrown.command.Criteria;
import kr.co.drcrown.command.PageMaker;
import kr.co.drcrown.dao.MemberDAO;
import kr.co.drcrown.dto.MemberVO;
import kr.co.drcrown.exception.InvalidPasswordException;
import kr.co.drcrown.exception.NotFoundIdException;

public class MemberServiceImpl implements MemberService {

	private MemberDAO memberDAO;

	public void setMemberDAO(MemberDAO memberDAO) {
		this.memberDAO = memberDAO;
	}

	@Override
	public Map<String, Object> getMemberList(Criteria cri) throws SQLException {

		Map<String, Object> dataMap = null;

		// 처리.......
		List<MemberVO> memberList = memberDAO.selectMemberList(cri);

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(memberDAO.selectMemberListCount(cri));

		dataMap = new HashMap<String, Object>();
		dataMap.put("memberList", memberList);
		dataMap.put("pageMaker", pageMaker);

		return dataMap;
	}

	@Override
	public MemberVO getMember(String id) throws SQLException {
		MemberVO member = memberDAO.selectMemberById(id);
		return member;
	}

	@Override
	public void regist(MemberVO member, String typeAuthority) throws Exception {
		memberDAO.insertMember(member, typeAuthority);

	}

	@Override
	public void modify(MemberVO member) throws Exception {
		memberDAO.updateMember(member);
	}

	@Override
	public void remove(String memId) throws Exception {
		memberDAO.deleteMember(memId);
	}

	@Override
	public void login(String id, String pwd) throws NotFoundIdException, InvalidPasswordException, SQLException {

		MemberVO member = memberDAO.selectMemberById(id);
		if (member == null)
			throw new NotFoundIdException();
		if (!pwd.equals(member.getMemPwd()))
			throw new InvalidPasswordException();

	}

}






