package kr.co.drcrown.dto;

import java.util.Date;

public class CureDetailVO {
	
	private String cdCode;          	  // 진료내역 코드
	private String pNo;       		      // 환자차트번호
	private Date cdRegdate = new Date();  // 내역작성일
	private String cdDoctor;    		  // 담당의사
	private String cdNote;    			  // 특이사항
	private String cdTotal;			      // 총금액
	private Date cdDate = new Date();     // 수납일
	private String cdSure;			      // 수납여부
	private String cdName;			  	  // 환자이름
	private String cdDiscount;			  // 본인부담금
	private String cdCard;			      // 카드납부
	private String cdCash;			      // 현금납부
	private String cdPayment;			  // 납부금액
	private String cdCategory;			  // 진료구분
	private String cdPaymemo;			  // 수납메모
	
	public String getCdCode() {
		return cdCode;
	}
	public void setCdCode(String cdCode) {
		this.cdCode = cdCode;
	}
	public String getpNo() {
		return pNo;
	}
	public void setpNo(String pNo) {
		this.pNo = pNo;
	}
	public Date getCdRegdate() {
		return cdRegdate;
	}
	public void setCdRegdate(Date cdRegdate) {
		this.cdRegdate = cdRegdate;
	}
	public String getCdDoctor() {
		return cdDoctor;
	}
	public void setCdDoctor(String cdDoctor) {
		this.cdDoctor = cdDoctor;
	}
	public String getCdNote() {
		return cdNote;
	}
	public void setCdNote(String cdNote) {
		this.cdNote = cdNote;
	}
	public String getCdTotal() {
		return cdTotal;
	}
	public void setCdTotal(String cdTotal) {
		this.cdTotal = cdTotal;
	}
	public Date getCdDate() {
		return cdDate;
	}
	public void setCdDate(Date cdDate) {
		this.cdDate = cdDate;
	}
	public String getCdSure() {
		return cdSure;
	}
	public void setCdSure(String cdSure) {
		this.cdSure = cdSure;
	}
	public String getCdName() {
		return cdName;
	}
	public void setCdName(String cdName) {
		this.cdName = cdName;
	}
	public String getCdDiscount() {
		return cdDiscount;
	}
	public void setCdDiscount(String cdDiscount) {
		this.cdDiscount = cdDiscount;
	}
	public String getCdCard() {
		return cdCard;
	}
	public void setCdCard(String cdCard) {
		this.cdCard = cdCard;
	}
	public String getCdCash() {
		return cdCash;
	}
	public void setCdCash(String cdCash) {
		this.cdCash = cdCash;
	}
	public String getCdPayment() {
		return cdPayment;
	}
	public void setCdPayment(String cdPayment) {
		this.cdPayment = cdPayment;
	}
	public String getCdCategory() {
		return cdCategory;
	}
	public void setCdCategory(String cdCategory) {
		this.cdCategory = cdCategory;
	}
	public String getCdPaymemo() {
		return cdPaymemo;
	}
	public void setCdPaymemo(String cdPaymemo) {
		this.cdPaymemo = cdPaymemo;
	}
	
	
	
	
}
	