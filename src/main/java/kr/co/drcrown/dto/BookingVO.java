package kr.co.drcrown.dto;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class BookingVO {
	private String bookingCode; 
	private String memNo; 
	private String pNo; 
	private Date bookingRegdate; 
	private Date bookingRdate; 
	private String bookingCc; 
	private String bookingDoc; 
	private String bookingWriter; 
	private String bookingYn; 
}
