package kr.co.drcrown.dto;

import java.util.Date;

public class MemoVO
{
	private String memoCode;				// 메모코드
	private Date memoDate = new Date();		// 작성일
	private String memoContent = "";		// 내용
	private String empId;					// 사원번호
	
	public String getMemoCode()
	{
		return memoCode;
	}
	public void setMemoCode(String memoCode)
	{
		this.memoCode = memoCode;
	}
	public Date getMemoDate()
	{
		return memoDate;
	}
	public void setMemoDate(Date memoDate)
	{
		this.memoDate = memoDate;
	}
	public String getMemoContent()
	{
		return memoContent;
	}
	public void setMemoContent(String memoContent)
	{
		this.memoContent = memoContent;
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
