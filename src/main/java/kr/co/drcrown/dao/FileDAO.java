package kr.co.drcrown.dao;

import java.sql.SQLException;
import java.util.List;

import kr.co.drcrown.dto.BookingVO;
import kr.co.drcrown.dto.FileVO;
import kr.co.drcrown.dto.MemberVO;

public interface FileDAO {
    
    FileVO selectMemberByPicture(String memPic) throws SQLException;
    void modify(FileVO file) throws Exception;
    void insertFileByMember(MemberVO member)throws SQLException;
    List<FileVO> selectXrayPicture(String pNo)throws SQLException;
    void insert(FileVO file)throws SQLException;
}
