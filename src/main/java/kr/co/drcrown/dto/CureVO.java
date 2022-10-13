package kr.co.drcrown.dto;

import java.util.Date;

public class CureVO {
	
	private String cureCode;         		 // 진료코드
	private String recNo; 			         // 진료내용코드
	private Date cureRegdate = new Date();   // 치료일
	private String cureWriter;    			 // 작성자
	private String mprCode;    				 // 단가코드
	private String clCode;    				 // 진료코드
	private String symCode;    				 // 증상코드
	
	
	public String getCureCode() {
		return cureCode;
	}
	public void setCureCode(String cureCode) {
		this.cureCode = cureCode;
	}
	public String getRecNo() {
		return recNo;
	}
	public void setRecNo(String recNo) {
		this.recNo = recNo;
	}
	public Date getCureRegdate() {
		return cureRegdate;
	}
	public void setCureRegdate(Date cureRegdate) {
		this.cureRegdate = cureRegdate;
	}
	public String getCureWriter() {
		return cureWriter;
	}
	public void setCureWriter(String cureWriter) {
		this.cureWriter = cureWriter;
	}
	public String getMprCode() {
		return mprCode;
	}
	public void setMprCode(String mprCode) {
		this.mprCode = mprCode;
	}
	public String getClCode() {
		return clCode;
	}
	public void setClCode(String clCode) {
		this.clCode = clCode;
	}
	public String getSymCode() {
		return symCode;
	}
	public void setSymCode(String symCode) {
		this.symCode = symCode;
	}
	
	
	
	
}
	