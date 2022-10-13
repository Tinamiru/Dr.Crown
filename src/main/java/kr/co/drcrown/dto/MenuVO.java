package kr.co.drcrown.dto;

public class MenuVO {
	
	private String mcode; // 메뉴 코드
	private String mname; // 메뉴 이름
	private String murl;  // 메뉴  url
	private String micon; // 메뉴 아이콘
	private String upcode; // 상위메뉴 코드
	private String mlevel; //메뉴 레벨
	private String misnav; 
	private String mcollapseyn;
	

	public String getMcode() {
		return mcode;
	} 
	public void setMcode(String mcode) {
		this.mcode = mcode;
	}
	public String getMname() {
		return mname;
	}
	public void setMname(String mname) {
		this.mname = mname;
	}
	public String getMurl() {
		return murl;
	}
	public void setMurl(String murl) {
		this.murl = murl;
	}
	public String getMicon() {
		return micon;
	}
	public void setMicon(String micon) {
		this.micon = micon;
	}
	public String getUpcode() {
		return upcode;
	}
	public void setUpcode(String upcode) {
		this.upcode = upcode;
	}
	public String getMlevel() {
		return mlevel;
	}
	public void setMlevel(String mlevel) {
		this.mlevel = mlevel;
	}
	public String getMisnav() {
		return misnav;
	}
	public void setMisnav(String misnav) {
		this.misnav = misnav;
	}
	public String getMcollapseyn() {
		return mcollapseyn;
	}
	public void setMcollapseyn(String mcollapseyn) {
		this.mcollapseyn = mcollapseyn;
	}

	@Override
	public String toString() {
		return "MenuVO [mcode=" + mcode + ", mname=" + mname + ", murl=" + murl + ", micon=" + micon + ", upcode="
				+ upcode + ", mlevel=" + mlevel + ", misnav=" + misnav + ", mcollapseyn=" + mcollapseyn + "]";
	}
}
