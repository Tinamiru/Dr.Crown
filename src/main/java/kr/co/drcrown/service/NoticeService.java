package kr.co.drcrown.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import kr.co.drcrown.command.Criteria;
import kr.co.drcrown.dto.AttachVO;
import kr.co.drcrown.dto.NoticeVO;

public interface NoticeService {
	

	// 목록조회
	Map<String, Object> getNoticeList(Criteria cri) throws SQLException;
	
	// 상세보기
	NoticeVO getNotice(int noticeNo) throws SQLException;
	
	// 수정화면 상세
	NoticeVO getNoticeForModify(int noticeNo) throws SQLException;

	// 등록
	void regist(NoticeVO notice)throws SQLException;
	
	// 수정
	void modify(NoticeVO notice) throws SQLException;

	// 삭제
	void remove(int noticeNo) throws SQLException;

    List<NoticeVO> getNoticeCategoryList() throws SQLException;
    
    
    AttachVO getAttachByAttachNo(int attachNo) throws SQLException;

    void removeAttachByAttachNo(int attachNo) throws SQLException;

    void addAttachList(NoticeVO notice) throws SQLException;
    
    
}
