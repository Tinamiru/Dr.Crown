package kr.co.drcrown.dao;

import java.sql.SQLException;
import java.util.List;

import kr.co.drcrown.command.Criteria;
import kr.co.drcrown.dto.MinfoVO;
import kr.co.drcrown.dto.NoticeVO;



public interface MinfoDAO {
	
    List<MinfoVO> selectSearchMinfoList(Criteria cri) throws SQLException;

    int selectSearchMinfoListCount(Criteria cri) throws SQLException;
    
    MinfoVO selectMinfoByMinfoNo(int minfoNo) throws SQLException;
    MinfoVO selectMinfoByImage(String imageFile) throws SQLException;
    
    
    // 조회수 증가
    void increaseViewCount(int noticeCount) throws SQLException;

    // Notice_seq.nextval 가져오기
    int selectMinfoSequenceNextValue() throws SQLException;
    
    void insertMinfo(MinfoVO minfo) throws SQLException;
    
    void updateMinfo(MinfoVO minfo) throws SQLException;

    void deleteMinfo(int minfoNo) throws SQLException;

    
    List<MinfoVO> selectCategoryList() throws SQLException;

}	
