package kr.co.drcrown.dto;

public class SymptomVO {
	
	private String symCode;         	// 증상코드
	private String symNcode; 			// 개념코드
	private String symKo;    			// 한글명
	private String symEn;    			// 영문명
	private String symUmls;    			// UMLS
	private String symKcd;    			// KCD
	
	
	public String getSymCode() {
		return symCode;
	}
	public void setSymCode(String symCode) {
		this.symCode = symCode;
	}
	public String getSymNcode() {
		return symNcode;
	}
	public void setSymNcode(String symNcode) {
		this.symNcode = symNcode;
	}
	public String getSymKo() {
		return symKo;
	}
	public void setSymKo(String symKo) {
		this.symKo = symKo;
	}
	public String getSymEn() {
		return symEn;
	}
	public void setSymEn(String symEn) {
		this.symEn = symEn;
	}
	public String getSymUmls() {
		return symUmls;
	}
	public void setSymUmls(String symUmls) {
		this.symUmls = symUmls;
	}
	public String getSymKcd() {
		return symKcd;
	}
	public void setSymKcd(String symKcd) {
		this.symKcd = symKcd;
	}
	
}
	