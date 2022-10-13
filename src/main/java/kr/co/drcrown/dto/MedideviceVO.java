package kr.co.drcrown.dto;

import java.util.Date;

public class MedideviceVO
{
	private String mediCode;
	private String mediName;
	private String mediMaker;
	private String mediDistr;
	private Date mediDate = new Date(); 
	private String mediSpec;
	
	public String getMediCode()
	{
		return mediCode;
	}
	public void setMediCode(String mediCode)
	{
		this.mediCode = mediCode;
	}
	public String getMediName()
	{
		return mediName;
	}
	public void setMediName(String mediName)
	{
		this.mediName = mediName;
	}
	public String getMediMaker()
	{
		return mediMaker;
	}
	public void setMediMaker(String mediMaker)
	{
		this.mediMaker = mediMaker;
	}
	public String getMediDistr()
	{
		return mediDistr;
	}
	public void setMediDistr(String mediDistr)
	{
		this.mediDistr = mediDistr;
	}
	public Date getMediDate()
	{
		return mediDate;
	}
	public void setMediDate(Date mediDate)
	{
		this.mediDate = mediDate;
	}
	public String getMediSpec()
	{
		return mediSpec;
	}
	public void setMediSpec(String mediSpec)
	{
		this.mediSpec = mediSpec;
	}
	
	
}
