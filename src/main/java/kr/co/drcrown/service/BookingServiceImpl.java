package kr.co.drcrown.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import kr.co.drcrown.command.BookingStateListCommand;
import kr.co.drcrown.command.Criteria;
import kr.co.drcrown.command.PageMaker;
import kr.co.drcrown.dao.BookingDAO;
import kr.co.drcrown.dto.BookingVO;
import kr.co.drcrown.dto.PatientVO;


@Service
public class BookingServiceImpl implements BookingService {
	
	private BookingDAO bookingDAO;
	
	
	
	public void setBookingDAO(BookingDAO bookingDAO) {
		this.bookingDAO = bookingDAO;
	}
	
	@Override
	public Map<String, Object> getBookingList(Criteria cri) throws SQLException {
		Map<String, Object> dataMap = null;

		// 처리.......
		List<BookingVO> bookingList = bookingDAO.selectBookingList(cri);

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(bookingDAO.selectBookingListCount(cri));

		dataMap = new HashMap<String, Object>();
		dataMap.put("bookingList", bookingList);
		dataMap.put("pageMaker", pageMaker);

		return dataMap;
	}

	@Override
	public BookingVO getBooking(String bookingCode) throws SQLException {
		BookingVO booking = bookingDAO.selectBookingById(bookingCode);
		return booking;
	}

	@Override
	public void regist(BookingVO booking) throws Exception {
		bookingDAO.insertBooking(booking);
	}

	@Override
	public void modify(BookingVO booking) throws Exception {
		bookingDAO.updateBooking(booking);

	}

	@Override
	public void remove(String bookingCode) throws Exception {
		bookingDAO.deleteBooking(bookingCode);

	}

	@Override
	public Map<String, Object> getBookingDateList(String bookingRegdate) throws SQLException {
		Map<String, Object> dataMap = null;
		List<BookingVO> bookingDateList = bookingDAO.selectBookingByDate(bookingRegdate);
		dataMap = new HashMap<String, Object>();
		dataMap.put("bookingDateList", bookingDateList);
		return dataMap;
	}

	   @Override
       public BookingVO selectBookingById(String bookingCode) throws SQLException {

	       BookingVO booking = bookingDAO.selectBookingById(bookingCode);
           return booking;

       }
	   
	   @Override
       public BookingVO getPatientbybookingCode(String bookingCode) throws SQLException {

	       BookingVO booking =  bookingDAO.selectPatientBybookingCode(bookingCode);
           return booking;

       }

    @Override
    public Map<String, Object> selectBookingpNoList(String pNo) throws SQLException {
        Map<String, Object> dataMap = null;
        List<BookingVO> bookingpNolist =  bookingDAO.selectBookingpNoList(pNo);
        dataMap = new HashMap<String, Object>();
        dataMap.put("bookingDateList", bookingpNolist);
        return dataMap;
    }

    @Override
    public void registvisitBooking(BookingVO booking) throws Exception {
        bookingDAO.insertvisitBooking(booking);
        
    }

    @Override
    public List<BookingStateListCommand> getBookingListByState() throws Exception {
        List<BookingStateListCommand> bookingList = bookingDAO.selectBookingListByState(); 
        return bookingList;
    }

    @Override
    public Map<String, Object> getcallBookingDateList(String bookingRegdate) throws SQLException {
        Map<String, Object> dataMap = null;
        List<BookingVO> callbookingDateList = bookingDAO.selectcallBookingByDate(bookingRegdate);
        dataMap = new HashMap<String, Object>();
        dataMap.put("callbookingDateList", callbookingDateList);
        return dataMap;
    }
	
}
