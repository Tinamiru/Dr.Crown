package kr.co.drcrown.service;

import java.sql.SQLException;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import kr.co.drcrown.command.Criteria;
import kr.co.drcrown.dto.FileVO;
import kr.co.drcrown.dto.MemberVO;
import kr.co.drcrown.exception.InvalidPasswordException;
import kr.co.drcrown.exception.NotFoundIdException;


public interface MemberService {
	
	//login
	void login(String id, String pwd)throws NotFoundIdException,InvalidPasswordException,
											SQLException;
	
	//회원목록조회
	Map<String,Object> getMemberList(Criteria cri)throws SQLException;
	
	//회원상세조회
	MemberVO getMember(String id)throws SQLException;	

	//회원등록
	public void regist(MemberVO member,String typeAuthority) throws Exception;
	
	//회원수정
	public void modify(MemberVO member)throws Exception;
	
	//회원탈퇴
	public void remove(String memId)throws Exception; 
	
	Map<String,Object> getMemberDoctorList(Criteria cri)throws SQLException;

    public void activation(String memId)throws Exception;

    int getMemberForVerification(MemberVO member) throws Exception;

    boolean isMemberPwd(HttpServletRequest request, String password, String newPassword) throws Exception;


}
