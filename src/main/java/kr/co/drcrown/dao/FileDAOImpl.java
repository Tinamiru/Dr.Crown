package kr.co.drcrown.dao;

import java.sql.SQLException;

import org.apache.ibatis.session.SqlSession;

import kr.co.drcrown.dto.FileVO;
import kr.co.drcrown.dto.MemberVO;

public class FileDAOImpl implements FileDAO{
    
    private SqlSession session;
    
    public void setSession(SqlSession session) {
        this.session = session;
    }

    @Override
    public FileVO selectMemberByPicture(String memPic) throws SQLException {
        FileVO memPicture = session.selectOne("File-Mapper.selectMemberByPicture",memPic);        
        return memPicture;
    }

    @Override
    public void modify(FileVO file) throws Exception {
        session.update("File-Mapper.registMemberPicture", file);
    }

    @Override
    public void insertFileByMember(MemberVO member) {
        session.update("File-Mapper.insertFileByMemberPic", member);
        session.update("File-Mapper.insertFileByMemberFace", member);
        session.update("File-Mapper.insertFileByMemberFinger", member);
        
    }

    
}
