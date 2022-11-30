package kr.co.drcrown.dao;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import kr.co.drcrown.command.Criteria;
import kr.co.drcrown.dto.NoticeVO;

public class NoticeDAOImpl implements NoticeDAO {
	
	
	private SqlSession session;
	public void setSession(SqlSession session) {
		this.session = session;
	}
	
	private NoticeDAO noticeDAO;
	public void setNoticeDAO(NoticeDAO noticeDAO) {
		this.noticeDAO = noticeDAO;
	}
	@Override
	public List<NoticeVO> selectSearchNoticeList(Criteria cri) throws SQLException {

		
		int startRow = cri.getStartRowNum()+1;
		int endRow = startRow+cri.getPerPageNum()-1;		
		
		Map<String, Object> dataParam = new HashMap<String, Object>();
		dataParam.put("startRow", startRow);
		dataParam.put("endRow", endRow);
		dataParam.put("searchType", cri.getSearchType());
		dataParam.put("keyword", cri.getKeyword());

		List<NoticeVO> noticeList = session.selectList("Notice-Mapper.selectSearchNoticeList", dataParam);

		return noticeList;
	}

	@Override
	public int selectSearchNoticeListCount(Criteria cri) throws SQLException {
		int count = session.selectOne("Notice-Mapper.selectSearchNoticeListCount", cri);
		return count;
	}

	@Override
	public NoticeVO selectNoticeByNoticeNo(int noticeNo) throws SQLException {
		NoticeVO notice = session.selectOne("Notice-Mapper.selectNoticeByNoticeNo", noticeNo);
		return notice;
	}

	@Override
	public void increaseViewCount(int noticeCount) throws SQLException {
		session.update("Notice-Mapper.increaseViewCount", noticeCount);

	}

	@Override
	public int selectNoticeSequenceNextValue() throws SQLException {
		int seq_num = session.selectOne("Notice-Mapper.selectNoticeSequenceNextValue");
		return seq_num;
	}

	@Override
	public void insertNotice(NoticeVO notice) throws SQLException {
		session.update("Notice-Mapper.insertNotice", notice);

	}

	@Override
	public void updateNotice(NoticeVO notice) throws SQLException {
		session.update("Notice-Mapper.updateNotice", notice);
	}

	@Override
	public void deleteNotice(int noticeNo) throws SQLException {
		session.update("Notice-Mapper.deleteNotice", noticeNo);
	}
	
	@Override
	public NoticeVO selectNoticeByImage(String imageFile) throws SQLException {
		NoticeVO notice = session.selectOne("Notice-Mapper.selectNoticeByImage",imageFile);
		return notice;
	}
    @Override
    public List<NoticeVO> selectCategoryList() throws SQLException {
        List<NoticeVO> categoryList = session.selectList("Notice-Mapper.selectCategoryList");
        return categoryList;
    }


}






