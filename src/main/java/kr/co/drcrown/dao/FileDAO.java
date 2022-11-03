package kr.co.drcrown.dao;

import java.sql.SQLException;

import kr.co.drcrown.dto.BookingVO;
import kr.co.drcrown.dto.FileVO;
import kr.co.drcrown.dto.MemberVO;

public interface FileDAO {
    
    FileVO selectMemberByPicture(String memPic) throws SQLException;
    void modify(FileVO file) throws Exception ;
    void insertFileByMember(MemberVO member);
}
