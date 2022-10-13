package kr.co.drcrown.dto;

import java.util.Date;

public class PatientVO {
	
	private String bookingCode;          		  // 예약번호
	private String empId;       		  		  // 사원번호
	private Date bookingRegdate = new Date();     // 작성날짜
	private Date bookingRdate = new Date();       // 예약요청날짜
	private String bookingCc;    			      // 증상
	private String bookingDoc;    			      // 의사선택
	private String bookingWriter;			      // 작성자
	private String pNo;			                  // 환자차트번호
	
	
	public String getBookingCode() {
		return bookingCode;
	}
	public void setBookingCode(String bookingCode) {
		this.bookingCode = bookingCode;
	}
	public String getEmpId() {
		return empId;
	}
	public void setEmpId(String empId) {
		this.empId = empId;
	}
	public Date getBookingRegdate() {
		return bookingRegdate;
	}
	public void setBookingRegdate(Date bookingRegdate) {
		this.bookingRegdate = bookingRegdate;
	}
	public Date getBookingRdate() {
		return bookingRdate;
	}
	public void setBookingRdate(Date bookingRdate) {
		this.bookingRdate = bookingRdate;
	}
	public String getBookingCc() {
		return bookingCc;
	}
	public void setBookingCc(String bookingCc) {
		this.bookingCc = bookingCc;
	}
	public String getBookingDoc() {
		return bookingDoc;
	}
	public void setBookingDoc(String bookingDoc) {
		this.bookingDoc = bookingDoc;
	}
	public String getBookingWriter() {
		return bookingWriter;
	}
	public void setBookingWriter(String bookingWriter) {
		this.bookingWriter = bookingWriter;
	}
	public String getpNo() {
		return pNo;
	}
	public void setpNo(String pNo) {
		this.pNo = pNo;
	}
	
	
	
}
	