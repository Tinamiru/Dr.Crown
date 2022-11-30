package kr.co.drcrown.command;

import org.springframework.web.multipart.MultipartFile;

import kr.co.drcrown.dto.FileVO;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class FileModifyCommand {

    private MultipartFile picture; // 사진파일
    private String fileClass;
    private String fileName;
    private String fileSize;
    private String pNo;

    public FileVO toFile() {
        FileVO file = new FileVO();
        file.setFileClass(fileClass);
        file.setFileName(fileName);
        file.setFileSize(fileSize);
        return file;
    }
}
