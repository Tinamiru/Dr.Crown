package kr.co.drcrown.dto;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;


@Getter
@Setter
public class PatientVO {
	
	// Don't Fucking Touch This
	
	private String pNo;          		  // 예약번호
	private String pName;          		  // 예약번호
	private String pSfx;
	private Date pBir = new Date();     // 작성날짜
	private String pRnum;
	private String pTel;
	private String pZipcode;
	private String pAddr1;
	private String pAddr2;
	private Date pFdate = new Date();
	private Date pLastdate = new Date();
	private String pInsurance;
	private String pMemo;
	private String pVisitPath;
	
}
	