package kr.co.drcrown.dto;

import java.util.Date;

public class ApprovalVO
{
	private String apCode;
	private String apContent;
	private Date apFdate = new Date();
	private String apSure = "아니요";
	private String apWper;
	private String apAuthyer = "";
	private String apDuty = "";
	private String apApper = "";
	private String apDate;
	private String apReason;
	
	public String getApCode()
	{
		return apCode;
	}
	public void setApCode(String apCode)
	{
		this.apCode = apCode;
	}
	public String getApContent()
	{
		return apContent;
	}
	public void setApContent(String apContent)
	{
		this.apContent = apContent;
	}
	public Date getApFdate()
	{
		return apFdate;
	}
	public void setApFdate(Date apFdate)
	{
		this.apFdate = apFdate;
	}
	public String getApSure()
	{
		return apSure;
	}
	public void setApSure(String apSure)
	{
		this.apSure = apSure;
	}
	public String getApWper()
	{
		return apWper;
	}
	public void setApWper(String apWper)
	{
		this.apWper = apWper;
	}
	public String getApAuthyer()
	{
		return apAuthyer;
	}
	public void setApAuthyer(String apAuthyer)
	{
		this.apAuthyer = apAuthyer;
	}
	public String getApDuty()
	{
		return apDuty;
	}
	public void setApDuty(String apDuty)
	{
		this.apDuty = apDuty;
	}
	public String getApApper()
	{
		return apApper;
	}
	public void setApApper(String apApper)
	{
		this.apApper = apApper;
	}
	public String getApDate()
	{
		return apDate;
	}
	public void setApDate(String apDate)
	{
		this.apDate = apDate;
	}
	public String getApReason()
	{
		return apReason;
	}
	public void setApReason(String apReason)
	{
		this.apReason = apReason;
	}
	
	
}
