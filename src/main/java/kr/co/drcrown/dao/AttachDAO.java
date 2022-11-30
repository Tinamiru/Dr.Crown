package kr.co.drcrown.dao;

import java.sql.SQLException;
import java.util.List;

import kr.co.drcrown.dto.AttachVO;



public interface AttachDAO {
	

	public List<AttachVO> selectAttachesByNoticeNo(int noticeNo)throws SQLException;
	
	public AttachVO selectAttachByAttachNo(int attachNo)throws SQLException;
	
	public void insertAttach(AttachVO attach) throws SQLException;
	
	public void deleteAttach(int attachNo) throws SQLException;
	
	public void deleteAllAttach(int noticeNo) throws SQLException;
	
	
	int selectAttachSequenceNextValue() throws SQLException;
	
}
