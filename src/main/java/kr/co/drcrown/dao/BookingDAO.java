package kr.co.drcrown.dao;

import java.sql.SQLException;
import java.util.List;

import kr.co.drcrown.command.Criteria;
import kr.co.drcrown.dto.BookingVO;


public interface BookingDAO {
	List<BookingVO> selectBookingList(Criteria cri)throws SQLException;
	int selectBookingListCount(Criteria cri)throws SQLException;
	
	BookingVO selectBookingById(String bookingCode)throws SQLException;
	
	public void insertBooking(BookingVO booking) throws SQLException;
	
	public void updateBooking(BookingVO booking) throws SQLException;
	
	void deleteBooking(String bookingCode) throws SQLException;
	
	List<BookingVO> selectBookingByDate(String bookingRegdate)throws SQLException;
}
