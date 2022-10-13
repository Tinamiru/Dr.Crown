package kr.co.drcrown.dto;

import java.util.Date;

public class CommuteVO
{
	private String comCode;				 // 출퇴근코드
	private String empId;				 // 사원번호
	private	Date comWork = new Date();	 // 출근시간
	private	Date comLeave = new Date();  // 퇴근시간
	private String comEarly;			 // 조퇴여부
	private String comEarlytime;		 // 조퇴시간
	
	public String getComCode()
	{
		return comCode;
	}
	public void setComCode(String comCode)
	{
		this.comCode = comCode;
	}
	public String getEmpId()
	{
		return empId;
	}
	public void setEmpId(String empId)
	{
		this.empId = empId;
	}
	public Date getComWork()
	{
		return comWork;
	}
	public void setComWork(Date comWork)
	{
		this.comWork = comWork;
	}
	public Date getComLeave()
	{
		return comLeave;
	}
	public void setComLeave(Date comLeave)
	{
		this.comLeave = comLeave;
	}
	public String getComEarly()
	{
		return comEarly;
	}
	public void setComEarly(String comEarly)
	{
		this.comEarly = comEarly;
	}
	public String getComEarlytime()
	{
		return comEarlytime;
	}
	public void setComEarlytime(String comEarlytime)
	{
		this.comEarlytime = comEarlytime;
	}
	
	
}
