package kr.co.drcrown.dto;

import java.util.Date;

public class BookingVO {
	
	private String pNo;          		  // 환자차트번호
	private String pName;       		  // 환자이름
	private Date pBir = new Date();       // 생년월일
	private String pRnum;    			  // 주민등록번호
	private String pTel;    			  // 휴대전화
	private String pAddress;			  // 주소
	private Date pFdate = new Date();     // 최초내원일(생성일자)
	private String pInsurance;			  // 보험정보
	private Date pLastdate = new Date();  // 마지막 방문일
	private String pTooth;			  	  // 치아상태
	private String pGums;			      // 잇몸상태
	private String pOral;			      // 구강상태
	
	
	public String getpNo() {
		return pNo;
	}
	public void setpNo(String pNo) {
		this.pNo = pNo;
	}
	public String getpName() {
		return pName;
	}
	public void setpName(String pName) {
		this.pName = pName;
	}
	public Date getpBir() {
		return pBir;
	}
	public void setpBir(Date pBir) {
		this.pBir = pBir;
	}
	public String getpRnum() {
		return pRnum;
	}
	public void setpRnum(String pRnum) {
		this.pRnum = pRnum;
	}
	public String getpTel() {
		return pTel;
	}
	public void setpTel(String pTel) {
		this.pTel = pTel;
	}
	public String getpAddress() {
		return pAddress;
	}
	public void setpAddress(String pAddress) {
		this.pAddress = pAddress;
	}
	public Date getpFdate() {
		return pFdate;
	}
	public void setpFdate(Date pFdate) {
		this.pFdate = pFdate;
	}
	public String getpInsurance() {
		return pInsurance;
	}
	public void setpInsurance(String pInsurance) {
		this.pInsurance = pInsurance;
	}
	public Date getpLastdate() {
		return pLastdate;
	}
	public void setpLastdate(Date pLastdate) {
		this.pLastdate = pLastdate;
	}
	public String getpTooth() {
		return pTooth;
	}
	public void setpTooth(String pTooth) {
		this.pTooth = pTooth;
	}
	public String getpGums() {
		return pGums;
	}
	public void setpGums(String pGums) {
		this.pGums = pGums;
	}
	public String getpOral() {
		return pOral;
	}
	public void setpOral(String pOral) {
		this.pOral = pOral;
	}
	
	
}
	