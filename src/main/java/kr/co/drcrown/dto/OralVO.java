package kr.co.drcrown.dto;

import java.util.Date;

public class OralVO {
	
	private String oralCode;          		  // 치아진단코드
	private String oralDoctor;       		  // 담당의
	private Date oralDate = new Date();       // 진단날짜
	private String oralContent;    			  // 진단내용
	private String oralGumsState;    		  // 잇몸상태
	private String oralState;			      // 구강상태
	private String cureCode;			      // 치료코드
	
	
	public String getOralCode() {
		return oralCode;
	}
	public void setOralCode(String oralCode) {
		this.oralCode = oralCode;
	}
	public String getOralDoctor() {
		return oralDoctor;
	}
	public void setOralDoctor(String oralDoctor) {
		this.oralDoctor = oralDoctor;
	}
	public Date getOralDate() {
		return oralDate;
	}
	public void setOralDate(Date oralDate) {
		this.oralDate = oralDate;
	}
	public String getOralContent() {
		return oralContent;
	}
	public void setOralContent(String oralContent) {
		this.oralContent = oralContent;
	}
	public String getOralGumsState() {
		return oralGumsState;
	}
	public void setOralGumsState(String oralGumsState) {
		this.oralGumsState = oralGumsState;
	}
	public String getOralState() {
		return oralState;
	}
	public void setOralState(String oralState) {
		this.oralState = oralState;
	}
	public String getCureCode() {
		return cureCode;
	}
	public void setCureCode(String cureCode) {
		this.cureCode = cureCode;
	}
	
	
	
}
	