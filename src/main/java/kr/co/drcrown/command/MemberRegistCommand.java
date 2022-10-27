package kr.co.drcrown.command;

import java.util.Date;

import kr.co.drcrown.dto.MemberVO;

public class MemberRegistCommand {


	private String memId; 					 // 사원번호
	private String memMail;				 	 // 이메일
	private String memName;				 	 // 이름
	private String memPwd; 				 	 // 비밀번호
	private Date memBir;					 // 생년월일
	private String memPhone;				 // 전화번호
	private String memAddr;				   	 // 도로명주소
	private String memAddr2;				 // 상세주소
	
	
	
	
	public String getMemId() {
		return memId;
	}

	public void setMemId(String memId) {
		this.memId = memId;
	}


	public String getMemMail() {
		return memMail;
	}

	public void setMemMail(String memMail) {
		this.memMail = memMail;
	}

	public String getMemName() {
		return memName;
	}

	public void setMemName(String memName) {
		this.memName = memName;
	}

	public String getMemPwd() {
		return memPwd;
	}

	public void setMemPwd(String memPwd) {
		this.memPwd = memPwd;
	}

	public Date getMemBir() {
		return memBir;
	}

	public void setMemBir(Date memBir) {
		this.memBir = memBir;
	}

	public String getMemPhone() {
		return memPhone;
	}

	public void setMemPhone(String memPhone) {
		this.memPhone = memPhone;
	}

	public String getMemAddr() {
		return memAddr;
	}

	public void setMemAddr(String memAddr) {
		this.memAddr = memAddr;
	}

	public String getMemAddr2() {
		return memAddr2;
	}

	public void setMemAddr2(String memAddr2) {
		this.memAddr2 = memAddr2;
	}




	public MemberVO toMemberVO() {
		
		// MemberVO setting
		MemberVO member = new MemberVO();
		member.setMemId(memId);
		member.setMemMail(memMail);
		member.setMemName(memName);
		member.setMemPwd(memPwd);
		member.setMemBir(memBir);
		member.setMemPhone(memPhone);
		member.setMemAddr(memAddr);
		member.setMemAddr2(memAddr2);
		
		return member;
	}
	
	
}








