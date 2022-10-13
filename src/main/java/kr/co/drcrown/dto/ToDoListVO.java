package kr.co.drcrown.dto;

import java.util.Date;

public class ToDoListVO
{
	private String tdlCode;					// 일정코드
	private Date tdlRegdate = new Date();	// 작성일
	private String tdlTitle = "";			// 일정제목
	private String tdlDate = "";			// 일정날짜
	private Date tdlUpdate = new Date();	// 수정일
	private String tdlContent = "";			// 내용
	private String tdlSure; 				// 수행여부
	private String empId;					// 사원번호
	
	public String getTdlCode()
	{
		return tdlCode;
	}
	public void setTdlCode(String tdlCode)
	{
		this.tdlCode = tdlCode;
	}
	public Date getTdlRegdate()
	{
		return tdlRegdate;
	}
	public void setTdlRegdate(Date tdlRegdate)
	{
		this.tdlRegdate = tdlRegdate;
	}
	public String getTdlTitle()
	{
		return tdlTitle;
	}
	public void setTdlTitle(String tdlTitle)
	{
		this.tdlTitle = tdlTitle;
	}
	public String getTdlDate()
	{
		return tdlDate;
	}
	public void setTdlDate(String tdlDate)
	{
		this.tdlDate = tdlDate;
	}
	public Date getTdlUpdate()
	{
		return tdlUpdate;
	}
	public void setTdlUpdate(Date tdlUpdate)
	{
		this.tdlUpdate = tdlUpdate;
	}
	public String getTdlContent()
	{
		return tdlContent;
	}
	public void setTdlContent(String tdlContent)
	{
		this.tdlContent = tdlContent;
	}
	public String getTdlSure()
	{
		return tdlSure;
	}
	public void setTdlSure(String tdlSure)
	{
		this.tdlSure = tdlSure;
	}
	public String getEmpId()
	{
		return empId;
	}
	public void setEmpId(String empId)
	{
		this.empId = empId;
	}
	
	
	
	
	
}
