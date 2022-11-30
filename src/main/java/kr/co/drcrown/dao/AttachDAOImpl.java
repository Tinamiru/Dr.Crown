package kr.co.drcrown.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.co.drcrown.dao.AttachDAO;
import kr.co.drcrown.dto.AttachVO;

public class AttachDAOImpl implements AttachDAO {
	
	private SqlSession session;
	private AttachDAO attachDAO; 
	
	
	public void setSession(SqlSession session) {
		this.session = session;
	}

	public void setAttachDAO(AttachDAO attachDAO) {
		this.attachDAO = attachDAO;
	}

	@Override
	public List<AttachVO> selectAttachesByNoticeNo(int noticeNo) throws SQLException {
		return session.selectList("Attach-Mapper.selectAttachByNoticeNo", noticeNo);
	}

	@Override
	public AttachVO selectAttachByAttachNo(int attachNo) throws SQLException {
		return session.selectOne("Attach-Mapper.selectAttachByAttachNo", attachNo);
	}

	@Override
	public void insertAttach(AttachVO attach) throws SQLException {
	    session.update("Attach-Mapper.insertAttach", attach);
	}

	@Override
	public void deleteAttach(int attachNo) throws SQLException {
	    session.update("Attach-Mapper.deleteAttach", attachNo);
	}

	@Override
	public void deleteAllAttach(int noticeNo) throws SQLException {
	    session.update("Attach-Mapper.deleteAllAttach", noticeNo);
	}
	
   @Override
    public int selectAttachSequenceNextValue() throws SQLException {
        int seq_num = session.selectOne("Attach-Mapper.selectAttachSequenceNextValue");
        return seq_num;
    }
	
	
}
