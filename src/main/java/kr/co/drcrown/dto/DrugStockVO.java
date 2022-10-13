package kr.co.drcrown.dto;

import java.util.Date;

public class DrugStockVO {
	
	private String dstCode;               // 의약품재고코드
	private String dstName;       		  // 제품명
	private String dstElement;    		  // 주성분
	private String dstStock;    		  // 재고현황
	private String dstCname;    		  // 업체명
	private String dstNo;    			  // 허가번호
	private Date dstRegdate = new Date(); // 입고일
	private String drugNo;			      // 약번호
	private String ordCode;			      // 발주코드
	
	
	public String getDstCode() {
		return dstCode;
	}
	public void setDstCode(String dstCode) {
		this.dstCode = dstCode;
	}
	public String getDstName() {
		return dstName;
	}
	public void setDstName(String dstName) {
		this.dstName = dstName;
	}
	public String getDstElement() {
		return dstElement;
	}
	public void setDstElement(String dstElement) {
		this.dstElement = dstElement;
	}
	public String getDstStock() {
		return dstStock;
	}
	public void setDstStock(String dstStock) {
		this.dstStock = dstStock;
	}
	public String getDstCname() {
		return dstCname;
	}
	public void setDstCname(String dstCname) {
		this.dstCname = dstCname;
	}
	public String getDstNo() {
		return dstNo;
	}
	public void setDstNo(String dstNo) {
		this.dstNo = dstNo;
	}
	public Date getDstRegdate() {
		return dstRegdate;
	}
	public void setDstRegdate(Date dstRegdate) {
		this.dstRegdate = dstRegdate;
	}
	public String getDrugNo() {
		return drugNo;
	}
	public void setDrugNo(String drugNo) {
		this.drugNo = drugNo;
	}
	public String getOrdCode() {
		return ordCode;
	}
	public void setOrdCode(String ordCode) {
		this.ordCode = ordCode;
	}
	
	
	
	  					
}
	