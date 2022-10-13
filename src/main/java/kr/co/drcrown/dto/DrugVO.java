package kr.co.drcrown.dto;

public class DrugVO {
	
	private String drugNo;         // 약번호
	private String drugName;	   // 품목명
	private String drugMclass;	   // 의약품구분
	private String drugDclass;	   // 마약류구분
	
	
	public String getDrugNo() {
		return drugNo;
	}
	public void setDrugNo(String drugNo) {
		this.drugNo = drugNo;
	}
	public String getDrugName() {
		return drugName;
	}
	public void setDrugName(String drugName) {
		this.drugName = drugName;
	}
	public String getDrugMclass() {
		return drugMclass;
	}
	public void setDrugMclass(String drugMclass) {
		this.drugMclass = drugMclass;
	}
	public String getDrugDclass() {
		return drugDclass;
	}
	public void setDrugDclass(String drugDclass) {
		this.drugDclass = drugDclass;
	}
	
	
}
	