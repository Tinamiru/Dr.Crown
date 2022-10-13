package kr.co.drcrown.dto;

import java.util.Date;

public class PreOrderVO {
	
	private String reoCode;    		      // 재고현황
	private String reoAmount;    		  // 업체명
	private String reoOrderer;    		  // 허가번호
	private Date reoDate = new Date();    // 입고일
	private String drugNo;			      // 약번호
	private String mediCode;			  // 발주코드
	private String ordCode;			      // 발주코드
	
	
	public String getReoCode() {
		return reoCode;
	}
	public void setReoCode(String reoCode) {
		this.reoCode = reoCode;
	}
	public String getReoAmount() {
		return reoAmount;
	}
	public void setReoAmount(String reoAmount) {
		this.reoAmount = reoAmount;
	}
	public String getReoOrderer() {
		return reoOrderer;
	}
	public void setReoOrderer(String reoOrderer) {
		this.reoOrderer = reoOrderer;
	}
	public Date getReoDate() {
		return reoDate;
	}
	public void setReoDate(Date reoDate) {
		this.reoDate = reoDate;
	}
	public String getDrugNo() {
		return drugNo;
	}
	public void setDrugNo(String drugNo) {
		this.drugNo = drugNo;
	}
	public String getMediCode() {
		return mediCode;
	}
	public void setMediCode(String mediCode) {
		this.mediCode = mediCode;
	}
	public String getOrdCode() {
		return ordCode;
	}
	public void setOrdCode(String ordCode) {
		this.ordCode = ordCode;
	}
	  					
}
	