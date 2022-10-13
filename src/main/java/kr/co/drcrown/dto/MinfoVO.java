package kr.co.drcrown.dto;

import java.util.Date;

public class MinfoVO {
	
	private String minfoCode;  //의학게시글 코드
	private String minfoClass; //게시글 분류
	private String minfoTitle; //제목
	private String minfoContent; //내용
	private String minfoWriter;  //작성자
	private Date minfoRegdate; //작성날짜
	private Date minfoupdate;//수정날짜
	private String minfoCount;//수정날짜
	
	public String getMinfoCode() {
		return minfoCode;
	}
	public void setMinfoCode(String minfoCode) {
		this.minfoCode = minfoCode;
	}
	public String getMinfoClass() {
		return minfoClass;
	}
	public void setMinfoClass(String minfoClass) {
		this.minfoClass = minfoClass;
	}
	
	public String getMinfoTitle() {
		return minfoTitle;
	}
	public void setMinfoTitle(String minfoTitle) {
		this.minfoTitle = minfoTitle;
	}
	public String getMinfoContent() {
		return minfoContent;
	}
	public void setMinfoContent(String minfoContent) {
		this.minfoContent = minfoContent;
	}
	public String getMinfoWriter() {
		return minfoWriter;
	}
	public void setMinfoWriter(String minfoWriter) {
		this.minfoWriter = minfoWriter;
	}
	public Date getMinfoRegdate() {
		return minfoRegdate;
	}
	public void setMinfoRegdate(Date minfoRegdate) {
		this.minfoRegdate = minfoRegdate;
	}
	public Date getMinfoupdate() {
		return minfoupdate;
	}
	public void setMinfoupdate(Date minfoupdate) {
		this.minfoupdate = minfoupdate;
	}
	public String getMinfoCount() {
		return minfoCount;
	}
	public void setMinfoCount(String minfoCount) {
		this.minfoCount = minfoCount;
	}
	
	
}
