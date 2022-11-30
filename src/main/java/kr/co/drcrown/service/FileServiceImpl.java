package kr.co.drcrown.service;

import java.sql.SQLException;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import kr.co.drcrown.dao.FileDAO;
import kr.co.drcrown.dto.FileVO;

@Service
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

    @Override
    public List<FileVO> getXrayPicture(String pNo) throws Exception {
        return fileDAO.selectXrayPicture(pNo);
    }

    @Override
    public void insert(FileVO file) throws Exception {
        fileDAO.insert(file);
    }
}
