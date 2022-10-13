package kr.co.drcrown.dto;

import java.util.Date;

public class ReplyVO
{
	private String replyCode;
	private String replyWriter;
	private String replyContent;
	private Date replyRegdate = new Date();
	private Date replyUpdate = new Date();
	private String minfoCode;
	
	public String getReplyCode()
	{
		return replyCode;
	}
	public void setReplyCode(String replyCode)
	{
		this.replyCode = replyCode;
	}
	public String getReplyWriter()
	{
		return replyWriter;
	}
	public void setReplyWriter(String replyWriter)
	{
		this.replyWriter = replyWriter;
	}
	public String getReplyContent()
	{
		return replyContent;
	}
	public void setReplyContent(String replyContent)
	{
		this.replyContent = replyContent;
	}
	public Date getReplyRegdate()
	{
		return replyRegdate;
	}
	public void setReplyRegdate(Date replyRegdate)
	{
		this.replyRegdate = replyRegdate;
	}
	public Date getReplyUpdate()
	{
		return replyUpdate;
	}
	public void setReplyUpdate(Date replyUpdate)
	{
		this.replyUpdate = replyUpdate;
	}
	public String getMinfoCode()
	{
		return minfoCode;
	}
	public void setMinfoCode(String minfoCode)
	{
		this.minfoCode = minfoCode;
	}
	
	
}
