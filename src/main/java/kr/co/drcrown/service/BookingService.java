package kr.co.drcrown.service;

import java.sql.SQLException;
import java.util.Map;

import kr.co.drcrown.command.Criteria;
import kr.co.drcrown.dto.BookingVO;


public interface BookingService {
	Map<String,Object> getBookingList(Criteria cri)throws SQLException;
	
	//회원상세조회
	BookingVO getBooking(String bookingCode)throws SQLException;	

	//회원등록
	public void regist(BookingVO booking) throws Exception;
	
	//회원수정
	public void modify(BookingVO booking)throws Exception;
	
	//회원탈퇴
	public void remove(String bookingCode)throws Exception;
	
	
	Map<String,Object> getBookingDateList(String bookingRegdate)throws SQLException;
}
