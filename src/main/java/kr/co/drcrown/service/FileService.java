package kr.co.drcrown.service;

import java.sql.SQLException;
import java.util.List;

import kr.co.drcrown.dto.FileVO;

public interface FileService {
    
    FileVO getMemPicture(String memPic) throws SQLException;
    
    void modify(FileVO file)throws Exception;

    List<FileVO> getXrayPicture(String pNo)throws Exception;

    void insert(FileVO file)throws Exception;
}
