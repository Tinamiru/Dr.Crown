package kr.co.drcrown.dto;

import java.util.Date;

public class PreScriptionVO {
	
	private String prsCode;             // 처방코드
	private Date prsDate = new Date();  // 처방일
	private String prsDoctor;			// 처방의
	private String prsName;			    // 환자
	private String tdCode;			    // 진료내역코드
	private String pNo;			        // 환자차트번호
	
	
	public String getPrsCode() {
		return prsCode;
	}
	public void setPrsCode(String prsCode) {
		this.prsCode = prsCode;
	}
	public Date getPrsDate() {
		return prsDate;
	}
	public void setPrsDate(Date prsDate) {
		this.prsDate = prsDate;
	}
	public String getPrsDoctor() {
		return prsDoctor;
	}
	public void setPrsDoctor(String prsDoctor) {
		this.prsDoctor = prsDoctor;
	}
	public String getPrsName() {
		return prsName;
	}
	public void setPrsName(String prsName) {
		this.prsName = prsName;
	}
	public String getTdCode() {
		return tdCode;
	}
	public void setTdCode(String tdCode) {
		this.tdCode = tdCode;
	}
	public String getpNo() {
		return pNo;
	}
	public void setpNo(String pNo) {
		this.pNo = pNo;
	}
}
	