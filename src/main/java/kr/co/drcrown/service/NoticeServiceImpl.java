package kr.co.drcrown.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import kr.co.drcrown.command.NoticeRegistCommand;
import kr.co.drcrown.command.NoticeModifyCommand;
import kr.co.drcrown.command.Criteria;
import kr.co.drcrown.command.PageMaker;

import kr.co.drcrown.dto.AttachVO;
import kr.co.drcrown.dao.AttachDAO;
import kr.co.drcrown.dto.NoticeVO;
import kr.co.drcrown.dao.NoticeDAO;

@Service
public class NoticeServiceImpl implements NoticeService {

	private NoticeDAO noticeDAO;

	public void setNoticeDAO(NoticeDAO noticeDAO) {
		this.noticeDAO = noticeDAO;
	}

	private AttachDAO attachDAO;
	
	public void setAttachDAO(AttachDAO attachDAO) {
	    this.attachDAO = attachDAO;
	}

	@Override
	public Map<String, Object> getNoticeList(Criteria cri) throws SQLException {

		Map<String, Object> dataMap = new HashMap<String, Object>();

		// 현재 page 번호에 맞는 리스트를 perPageNum 개수 만큼 가져오기.
		List<NoticeVO> noticeList = noticeDAO.selectSearchNoticeList(cri);

		// 전체 board 개수
		int totalCount = noticeDAO.selectSearchNoticeListCount(cri);
		
		// PageMaker 생성.
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(totalCount);

		dataMap.put("noticeList", noticeList);
		dataMap.put("pageMaker", pageMaker);

		return dataMap;

	}

	@Override
	public NoticeVO getNotice(int noticeNo) throws SQLException {

		NoticeVO board = noticeDAO.selectNoticeByNoticeNo(noticeNo);
		noticeDAO.increaseViewCount(noticeNo);
		return board;

	}
	@Override
	public NoticeVO getNoticeForModify(int noticeNo) throws SQLException {

		NoticeVO board = noticeDAO.selectNoticeByNoticeNo(noticeNo);
		return board;

	}

	@Override
	public void regist(NoticeVO notice) throws SQLException {
	    int attachNo = attachDAO.selectAttachSequenceNextValue();
	    
		int noticeNo = noticeDAO.selectNoticeSequenceNextValue();
		List<AttachVO> attachList = notice.getAttachList();
		for (AttachVO eachVO : attachList) {
		    eachVO.setAttachNo(attachNo);
            //더 필요한거 있으면 set 해주시고
		    attachDAO.insertAttach(eachVO);
		   //eachVO는 리스트안에있는거
        }
		
		//불러올때 글 번호로 꺼내오면 attachNo를 알수있겠죠? 그러면 attachNo로 attach테이블에서 가져옵니다
		//그리고 noticeVO에 set
		notice.setAttachNo(attachNo+"");
		
		notice.setNoticeNo(noticeNo);
		noticeDAO.insertNotice(notice);

	}

	@Override
	public void modify(NoticeVO notice) throws SQLException {

		noticeDAO.updateNotice(notice);

	}

	@Override
	public void remove(int noticeNo) throws SQLException {

		noticeDAO.deleteNotice(noticeNo);

	}

    @Override
    public List<NoticeVO> getNoticeCategoryList() throws SQLException {
        List<NoticeVO> categoryList = noticeDAO.selectCategoryList();
        return categoryList;
    }
    
    
    @Override
    public AttachVO getAttachByAttachNo(int attachNo) throws SQLException {

        AttachVO attach = attachDAO.selectAttachByAttachNo(attachNo);

        return attach;
    }

    @Override
    public void removeAttachByAttachNo(int attachNo) throws SQLException {

        attachDAO.deleteAttach(attachNo);

    }

    public void addAttachList(NoticeVO notice) throws SQLException {

        if (notice == null)
            return;

        int noticeNo = notice.getNoticeNo();
        List<AttachVO> attachList = attachDAO.selectAttachesByNoticeNo(noticeNo);

        notice.setAttachList(attachList);
    }
    
    
}
