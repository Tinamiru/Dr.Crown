package kr.co.drcrown.dto;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;


@Getter
@Setter
@ToString
public class PrescriptionVO {
	
	// Don't Fucking Touch This
	
	private String ppNumber;          		  // 예약번호
	private String drugNo;          		  // 약품번호
	private String cdCode;
	private Date ppRegDate = new Date();     // 작성날짜
	private String ppPertime;
	private String ppPerDate;
	private String ppTotalCount;
	private String ppMediCation;  // 용법(식후 30분 )
	
	
	
	private String drugName;  // 약품이름
	private String cdIsPrinted;  // 발급여부
	private String memName;  // 발급의사
	
	
	
	
	
}
	