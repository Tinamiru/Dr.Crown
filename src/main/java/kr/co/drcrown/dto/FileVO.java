package kr.co.drcrown.dto;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class FileVO {
    private String fileNo;
    private String fileClass;
    private String fileName;
    private Date fileRegdate;
    private String fileSize;
    private String fileLocation;
    private String fileAtthcher;
}
