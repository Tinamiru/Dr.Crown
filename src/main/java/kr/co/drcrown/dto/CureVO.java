package kr.co.drcrown.dto;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class CureVO {
    private String cureCode;
    private String cdCode;
    private String symCode;
    private String mprCode;
    private Date cureRegdate;
    private String cureWriter;
    private String cureTeenum;
    private String cureFile;

}
