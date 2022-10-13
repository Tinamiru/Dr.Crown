package kr.co.drcrown.dto;

import java.util.Date;

public class MemberVO
{
	private String empId; 					 // 사원번호
	private String memPwd; 				 	 // 비밀번호
	private String memName;				 	 // 이름
	private String memMail;				 	 // 이메일
	private String memPhone;				 // 전화번호
	private Date memBir;					 // 생년월일
	private String memPic;					 // 프로필사진
	private String memAddr;				   	 // 상세주소
	private int memEnabled;				 // 퇴사여부
	private String memPos;					 // 직책
	private String memAuthority;			 // 권한
	private String memAddr2;				 // 상세주소
	private Date memLogindate = new Date();  // 로그인일자
	private String memFace;		 	  	 	 // 직원사진
	private String memFinger;				 // 직원지문
	
	public String getEmpId()
	{
		return empId;
	}
	public void setEmpId(String empId)
	{
		this.empId = empId;
	}
	public String getMemPwd()
	{
		return memPwd;
	}
	public void setMemPwd(String memPwd)
	{
		this.memPwd = memPwd;
	}
	public String getMemName()
	{
		return memName;
	}
	public void setMemName(String memName)
	{
		this.memName = memName;
	}
	public String getMemMail()
	{
		return memMail;
	}
	public void setMemMail(String memMail)
	{
		this.memMail = memMail;
	}
	public String getMemPhone()
	{
		return memPhone;
	}
	public void setMemPhone(String memPhone)
	{
		this.memPhone = memPhone;
	}
	public Date getMemBir()
	{
		return memBir;
	}
	public void setMemBir(Date memBir)
	{
		this.memBir = memBir;
	}
	public String getMemPic()
	{
		return memPic;
	}
	public void setMemPic(String memPic)
	{
		this.memPic = memPic;
	}
	public String getMemAddr()
	{
		return memAddr;
	}
	public void setMemAddr(String memAddr)
	{
		this.memAddr = memAddr;
	}
	public int getMemEnabled()
	{
		return memEnabled;
	}
	public void setMemEnabled(int memEnabled)
	{
		this.memEnabled = memEnabled;
	}
	public String getMemPos()
	{
		return memPos;
	}
	public void setMemPos(String memPos)
	{
		this.memPos = memPos;
	}
	public String getMemAuthority()
	{
		return memAuthority;
	}
	public void setMemAuthority(String memAuthority)
	{
		this.memAuthority = memAuthority;
	}
	public String getMemAddr2()
	{
		return memAddr2;
	}
	public void setMemAddr2(String memAddr2)
	{
		this.memAddr2 = memAddr2;
	}
	public Date getMemLogindate()
	{
		return memLogindate;
	}
	public void setMemLogindate(Date memLogindate)
	{
		this.memLogindate = memLogindate;
	}
	public String getMemFace()
	{
		return memFace;
	}
	public void setMemFace(String memFace)
	{
		this.memFace = memFace;
	}
	public String getMemFinger()
	{
		return memFinger;
	}
	public void setMemFinger(String memFinger)
	{
		this.memFinger = memFinger;
	}
	
	
	
}
