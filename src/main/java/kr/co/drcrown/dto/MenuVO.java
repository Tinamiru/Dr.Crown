package kr.co.drcrown.dto;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class MenuVO {
	
	// Don't Fucking Touch This
	
	private String mcode; // 메뉴 코드
	private String mname; // 메뉴 이름
	private String murl;  // 메뉴  url
	private String micon; // 메뉴 아이콘
	private String upcode; // 상위메뉴 코드
	private String mlevel; //메뉴 레벨
	private String misnav; 
	private String mcollapseyn;
	
}
