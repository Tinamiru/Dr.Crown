package kr.co.drcrown.service;

import java.sql.SQLException;

import kr.co.drcrown.dao.FileDAO;
import kr.co.drcrown.dto.FileVO;

public class FileServiceImpl implements FileService{
    
    private FileDAO fileDAO;
    
    public void setFileDAO(FileDAO fileDAO) {
        this.fileDAO = fileDAO;
    }

    @Override
    public FileVO getMemPicture(String memPic) throws SQLException {
        FileVO picture = fileDAO.selectMemberByPicture(memPic);
        return picture;
    }

    @Override
    public void modify(FileVO file) throws Exception {
        file.setFileLocation("192.168.141.3/공유폴더/team3/drCrownPath/member/picture/upload/");
        fileDAO.modify(file);
    }
}
