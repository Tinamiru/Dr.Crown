package kr.co.drcrown.dto;

import java.util.Date;

public class OrderVO {
	
	private String ordCode;          	  // 발주코드
	private String ordName;       		  // 품명
	private String ordPrice;       		  // 단가
	private Date ordRegdate = new Date(); // 작성일
	private String ordContent = "";    	  // 발주내용
	private String ordWriter;    		  // 작성자
	private String ordDuty;			      // 발주직책
	private String apCode;			      // 결재코드
	
	
	public String getOrdCode() {
		return ordCode;
	}
	public void setOrdCode(String ordCode) {
		this.ordCode = ordCode;
	}
	public String getOrdName() {
		return ordName;
	}
	public void setOrdName(String ordName) {
		this.ordName = ordName;
	}
	public String getOrdPrice() {
		return ordPrice;
	}
	public void setOrdPrice(String ordPrice) {
		this.ordPrice = ordPrice;
	}
	public Date getOrdRegdate() {
		return ordRegdate;
	}
	public void setOrdRegdate(Date ordRegdate) {
		this.ordRegdate = ordRegdate;
	}
	public String getOrdContent() {
		return ordContent;
	}
	public void setOrdContent(String ordContent) {
		this.ordContent = ordContent;
	}
	public String getOrdWriter() {
		return ordWriter;
	}
	public void setOrdWriter(String ordWriter) {
		this.ordWriter = ordWriter;
	}
	public String getOrdDuty() {
		return ordDuty;
	}
	public void setOrdDuty(String ordDuty) {
		this.ordDuty = ordDuty;
	}
	public String getApCode() {
		return apCode;
	}
	public void setApCode(String apCode) {
		this.apCode = apCode;
	}
	
}
	