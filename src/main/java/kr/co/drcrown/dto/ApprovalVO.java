package kr.co.drcrown.dto;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter

public class ApprovalVO {
	
	// Don't Fucking Touch This
	
	private String apCode; // 메뉴 코드
	private String apContent; // 메뉴 이름
	private Date apFdate = new Date();  // 메뉴  url
	private String apSure; // 메뉴 아이콘
	private String apWper; // 상위메뉴 코드
	private String apDuty; //메뉴 레벨
	private String apReason; 
	private String formCode;
	private String apWork;
	
}
