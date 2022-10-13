package kr.co.drcrown.dto;

import java.util.Date;

public class FormVO {
	
	private String formCode;          		  // 문서양식코드
	private String formName;       		      // 양식이름
	private String formCatefgory;    		  // 양식구분
	private Date formRegdate = new Date();    // 양식작성일
	private Date formUpdate = new Date();     // 양식수정일
	private String formWriter;			      // 양식작성자
	
	
	public String getFormCode() {
		return formCode;
	}
	public void setFormCode(String formCode) {
		this.formCode = formCode;
	}
	public String getFormName() {
		return formName;
	}
	public void setFormName(String formName) {
		this.formName = formName;
	}
	public String getFormCatefgory() {
		return formCatefgory;
	}
	public void setFormCatefgory(String formCatefgory) {
		this.formCatefgory = formCatefgory;
	}
	public Date getFormRegdate() {
		return formRegdate;
	}
	public void setFormRegdate(Date formRegdate) {
		this.formRegdate = formRegdate;
	}
	public Date getFormUpdate() {
		return formUpdate;
	}
	public void setFormUpdate(Date formUpdate) {
		this.formUpdate = formUpdate;
	}
	public String getFormWriter() {
		return formWriter;
	}
	public void setFormWriter(String formWriter) {
		this.formWriter = formWriter;
	}
	
	  					
}
	