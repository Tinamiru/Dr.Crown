package kr.co.drcrown.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import kr.co.drcrown.command.Criteria;
import kr.co.drcrown.dto.BookingVO;
import kr.co.drcrown.dto.MemberVO;

public class BookingDAOImpl implements BookingDAO {

	private SqlSession session;
	
	public void setSession(SqlSession session) {
		this.session = session;
	}
	
	@Override
	public List<BookingVO> selectBookingList(Criteria cri) throws SQLException {
		
		int offset = cri.getStartRowNum();
		int limit = cri.getPerPageNum();
		RowBounds rowBounds = new RowBounds(offset, limit);

		List<BookingVO> bookingList 
				= session.selectList("Booking-Mapper.selectBookingList", cri, rowBounds);

		return bookingList;
	}

	@Override
	public int selectBookingListCount(Criteria cri) throws SQLException {
		int count = session.selectOne("Booking-Mapper.selectBookingListCount", cri);
		return count;
	}

	@Override
	public BookingVO selectBookingById(String bookingCode) throws SQLException {
		BookingVO booking = session.selectOne("Booking-Mapper.selectBookingById", bookingCode);
		return booking;
	}

	@Override
	public void insertBooking(BookingVO booking) throws SQLException {

		session.update("Booking-Mapper.insertBooking", booking);

	}

	@Override
	public void updateBooking(BookingVO booking) throws SQLException {
		session.update("Booking-Mapper.updateBooking", booking);

	}

	@Override
	public void deleteBooking(String bookingCode) throws SQLException {
		session.update("Booking-Mapper.deleteBooking", bookingCode);

	}

	@Override
	public List<BookingVO> selectBookingByDate(String bookingRegdate) throws SQLException {
		List<BookingVO> bookingDateList 
		= session.selectList("Booking-Mapper.selectBookingByDate", bookingRegdate);

		return bookingDateList;
	}

}
