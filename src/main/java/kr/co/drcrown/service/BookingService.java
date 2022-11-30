package kr.co.drcrown.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import kr.co.drcrown.command.BookingStateListCommand;
import kr.co.drcrown.command.Criteria;
import kr.co.drcrown.dto.BookingVO;
import kr.co.drcrown.dto.PatientVO;


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
	
	Map<String,Object> getcallBookingDateList(String bookingRegdate)throws SQLException;
	
	
	BookingVO selectBookingById(String bookingCode) throws SQLException;
	
	BookingVO getPatientbybookingCode(String bookingCode) throws SQLException;
	
	Map<String,Object> selectBookingpNoList(String pNo)throws SQLException;
	
	public void registvisitBooking(BookingVO booking) throws Exception;

    List<BookingStateListCommand> getBookingListByState()throws Exception;
	
	
}
