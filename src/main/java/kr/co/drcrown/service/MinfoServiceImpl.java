package kr.co.drcrown.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.drcrown.command.Criteria;
import kr.co.drcrown.command.PageMaker;
import kr.co.drcrown.dao.MinfoDAO;
import kr.co.drcrown.dto.MinfoVO;


//import com.jsp.exception.InvalidPasswordException;
//import com.jsp.exception.NotFoundIdException;



public class MinfoServiceImpl implements MinfoService {

	private MinfoDAO minfoDAO;
	public void setMinfoDAO(MinfoDAO minfoDAO) {
		this.minfoDAO = minfoDAO;
	}

	@Override
	public Map<String, Object> getMinfoList(Criteria cri) throws SQLException {

		Map<String, Object> dataMap = new HashMap<String, Object>();

		// 처리.......
		List<MinfoVO> minfoList = minfoDAO.selectMinfoList(cri);

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(minfoDAO.selectMinfoListCount(cri));
 
		dataMap.put("minfoList", minfoList);
		dataMap.put("pageMaker", pageMaker);

		return dataMap;
	}

//	@Override
//	public MemberVO getMember(String id) throws SQLException {
//		MemberVO member = memberDAO.selectMemberById(id);
//		return member;
//	}
//
//	@Override
//	public void regist(MemberVO member) throws Exception {
//		memberDAO.insertMember(member);
//
//	}
//
//	@Override
//	public void modify(MemberVO member) throws Exception {
//		memberDAO.updateMember(member);
//	}
//
//	@Override
//	public void remove(String id) throws Exception {
//		memberDAO.deleteMember(id);
//	}

//	@Override
//	public void login(String id, String pwd) throws NotFoundIdException, InvalidPasswordException, SQLException {
//
//		MemberVO member = memberDAO.selectMemberById(id);
//		if (member == null)
//			throw new NotFoundIdException();
//		if (!pwd.equals(member.getPwd()))
//			throw new InvalidPasswordException();
//
//	}

}






