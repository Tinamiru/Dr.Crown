package kr.co.drcrown.dto;

import java.util.Date;

public class NoticeVO {
	
	private int noticeNo;          			// 공지번호
	private String noticeTitle = "";    		// 제목
	private String noticeContent = "";			// 내용
	private Date noticeRegdate = new Date();   // 작성일자
	private int noticeCount=0;	   				// 조회수
	private String noticeCategory="";	   		// 카테고리
	private Date noticeUpdate = new Date();  	// 수정날짜
	private String noticeWriter;	   			// 작성자
	private String empId;						// 사원번호
	
	
	public int getNoticeNo() {
		return noticeNo;
	}
	public void setNoticeNo(int noticeNo) {
		this.noticeNo = noticeNo;
	}
	public String getNoticeTitle() {
		return noticeTitle;
	}
	public void setNoticeTitle(String noticeTitle) {
		this.noticeTitle = noticeTitle;
	}
	public String getNoticeContent() {
		return noticeContent;
	}
	public void setNoticeContent(String noticeContent) {
		this.noticeContent = noticeContent;
	}
	public Date getNoticeRegdate() {
		return noticeRegdate;
	}
	public void setNoticeRegdate(Date noticeRegdate) {
		this.noticeRegdate = noticeRegdate;
	}
	public int getNoticeCount() {
		return noticeCount;
	}
	public void setNoticeCount(int noticeCount) {
		this.noticeCount = noticeCount;
	}
	public String getNoticeCategory() {
		return noticeCategory;
	}
	public void setNoticeCategory(String noticeCategory) {
		this.noticeCategory = noticeCategory;
	}
	public Date getNoticeUpdate() {
		return noticeUpdate;
	}
	public void setNoticeUpdate(Date noticeUpdate) {
		this.noticeUpdate = noticeUpdate;
	}
	public String getNoticeWriter() {
		return noticeWriter;
	}
	public void setNoticeWriter(String noticeWriter) {
		this.noticeWriter = noticeWriter;
	}
	public String getEmpId() {
		return empId;
	}
	public void setEmpId(String empId) {
		this.empId = empId;
	}
	
	
				
}
	