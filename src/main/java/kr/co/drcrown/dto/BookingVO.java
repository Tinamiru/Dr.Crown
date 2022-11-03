package kr.co.drcrown.dto;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class BookingVO {
	private String bookingCode; 
	private String memNo; 
	private String pNo; 
	private Date bookingRegdate; 
	private Date bookingRdate  = new Date();
	private String bookingCc; 
	private String bookingDoc; 
	private String bookingWriter; 
	private String bookingYn; 
	
	
    private String pName;                 // 예약번호
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
	
	
}
