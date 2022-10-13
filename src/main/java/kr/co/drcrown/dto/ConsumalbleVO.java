package kr.co.drcrown.dto;

import java.util.Date;

public class ConsumalbleVO
{
	private String equCode;
	private String conName;
	private String conMaker;
	private String conDistr;
	private Date conDate = new Date();
	private String conSpec;
	
	public String getEquCode()
	{
		return equCode;
	}
	public void setEquCode(String equCode)
	{
		this.equCode = equCode;
	}
	public String getConName()
	{
		return conName;
	}
	public void setConName(String conName)
	{
		this.conName = conName;
	}
	public String getConMaker()
	{
		return conMaker;
	}
	public void setConMaker(String conMaker)
	{
		this.conMaker = conMaker;
	}
	public String getConDistr()
	{
		return conDistr;
	}
	public void setConDistr(String conDistr)
	{
		this.conDistr = conDistr;
	}
	public Date getConDate()
	{
		return conDate;
	}
	public void setConDate(Date conDate)
	{
		this.conDate = conDate;
	}
	public String getConSpec()
	{
		return conSpec;
	}
	public void setConSpec(String conSpec)
	{
		this.conSpec = conSpec;
	}
	
	
	
}
