package kr.co.drcrown.dto;

public class ClinicVO {
	
	private String clCode;           // 진료코드
	private String clKo;       		 // 한글명
	private String clEn;			 // 영문명
	private String clUmls;			 // UMLS
	private String clKcd;			 // KCD
	
	
	public String getClCode() {
		return clCode;
	}
	public void setClCode(String clCode) {
		this.clCode = clCode;
	}
	public String getClKo() {
		return clKo;
	}
	public void setClKo(String clKo) {
		this.clKo = clKo;
	}
	public String getClEn() {
		return clEn;
	}
	public void setClEn(String clEn) {
		this.clEn = clEn;
	}
	public String getClUmls() {
		return clUmls;
	}
	public void setClUmls(String clUmls) {
		this.clUmls = clUmls;
	}
	public String getClKcd() {
		return clKcd;
	}
	public void setClKcd(String clKcd) {
		this.clKcd = clKcd;
	}
}
	