package kr.co.drcrown.dao;

import java.sql.SQLException;
import java.util.List;

import kr.co.drcrown.command.BookingStateListCommand;
import kr.co.drcrown.command.Criteria;
import kr.co.drcrown.dto.BookingVO;
import kr.co.drcrown.dto.MemberVO;
import kr.co.drcrown.dto.PatientVO;


public interface BookingDAO {
	List<BookingVO> selectBookingList(Criteria cri)throws SQLException;
	int selectBookingListCount(Criteria cri)throws SQLException;
	
	BookingVO selectBookingById(String bookingCode)throws SQLException;
	
	public void insertBooking(BookingVO booking) throws SQLException;
	
	public void insertvisitBooking(BookingVO booking) throws SQLException;
	
	public void updateBooking(BookingVO booking) throws SQLException;
	
	void deleteBooking(String bookingCode) throws SQLException;
	
	List<BookingVO> selectBookingByDate(String bookingRegdate)throws SQLException;
	
	List<BookingVO> selectcallBookingByDate(String bookingRegdate)throws SQLException;
	
	List<BookingVO> selectBookingByList(Criteria cri)throws SQLException;
	
	BookingVO selectPatientBybookingCode(String bookingCode) throws SQLException;
	
	List<BookingVO> selectBookingpNoList(String pNo)throws SQLException;
	
    List<BookingStateListCommand> selectBookingListByState()throws SQLException;
}
