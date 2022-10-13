package kr.co.drcrown.dto;

import java.util.Date;

public class MediInfoVO
{
	private String minfoCode;
	private String minfoClass;
	private String minfoTitle = "";
	private String minfoContent = "";
	private String minfoWriter;
	private Date minfoRegdate = new Date(); 
	private Date minfoupdate = new Date();
	private String minfoCount;
	
	public String getMinfoCode()
	{
		return minfoCode;
	}
	public void setMinfoCode(String minfoCode)
	{
		this.minfoCode = minfoCode;
	}
	public String getMinfoClass()
	{
		return minfoClass;
	}
	public void setMinfoClass(String minfoClass)
	{
		this.minfoClass = minfoClass;
	}
	public String getMinfoTitle()
	{
		return minfoTitle;
	}
	public void setMinfoTitle(String minfoTitle)
	{
		this.minfoTitle = minfoTitle;
	}
	public String getMinfoContent()
	{
		return minfoContent;
	}
	public void setMinfoContent(String minfoContent)
	{
		this.minfoContent = minfoContent;
	}
	public String getMinfoWriter()
	{
		return minfoWriter;
	}
	public void setMinfoWriter(String minfoWriter)
	{
		this.minfoWriter = minfoWriter;
	}
	public Date getMinfoRegdate()
	{
		return minfoRegdate;
	}
	public void setMinfoRegdate(Date minfoRegdate)
	{
		this.minfoRegdate = minfoRegdate;
	}
	public Date getMinfoupdate()
	{
		return minfoupdate;
	}
	public void setMinfoupdate(Date minfoupdate)
	{
		this.minfoupdate = minfoupdate;
	}
	public String getMinfoCount()
	{
		return minfoCount;
	}
	public void setMinfoCount(String minfoCount)
	{
		this.minfoCount = minfoCount;
	}
	
	
}
