package kr.co.drcrown.service;

import java.sql.SQLException;

import kr.co.drcrown.dto.BookingVO;
import kr.co.drcrown.dto.FileVO;

public interface FileService {
    
    FileVO getMemPicture(String memPic) throws SQLException;
    
    void modify(FileVO file)throws Exception;
}
