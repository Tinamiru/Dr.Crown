package kr.co.drcrown.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import kr.co.drcrown.command.Criteria;
import kr.co.drcrown.dto.MinfoVO;

//import com.jsp.exception.InvalidPasswordException;
//import com.jsp.exception.NotFoundIdException;

public interface MinfoService {
	
    // 목록조회
    Map<String, Object> getMinfoList(Criteria cri) throws SQLException;
    
    // 상세보기
    MinfoVO getMinfo(int minfoNo) throws SQLException;
    
    // 수정화면 상세
    MinfoVO getMinfoForModify(int minfoNo) throws SQLException;

    // 등록
    void regist(MinfoVO minfo)throws SQLException;
    
    // 수정
    void modify(MinfoVO minfo) throws SQLException;

    // 삭제
    void remove(int minfoNo) throws SQLException;

    List<MinfoVO> getMinfoCategoryList() throws SQLException;
}
