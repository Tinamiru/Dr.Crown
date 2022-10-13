package kr.co.drcrown.dto;

import java.util.Date;

public class CureContentVO {
	
	private String cucoCode;          		  // 진료내용코드
	private String cucoMemo;         		  // 진료메모
	private Date cucoRegdate = new Date();    // 내용작성일
	private String tdCode;    			      // 진료내역코드
	
	
	public String getCucoCode() {
		return cucoCode;
	}
	public void setCucoCode(String cucoCode) {
		this.cucoCode = cucoCode;
	}
	public String getCucoMemo() {
		return cucoMemo;
	}
	public void setCucoMemo(String cucoMemo) {
		this.cucoMemo = cucoMemo;
	}
	public Date getCucoRegdate() {
		return cucoRegdate;
	}
	public void setCucoRegdate(Date cucoRegdate) {
		this.cucoRegdate = cucoRegdate;
	}
	public String getTdCode() {
		return tdCode;
	}
	public void setTdCode(String tdCode) {
		this.tdCode = tdCode;
	}
	
	
}
	