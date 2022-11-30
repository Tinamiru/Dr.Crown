package kr.co.drcrown.dto;

import java.util.Date;
import java.util.List;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class CureDetailVO {
    private String cdCode;
    private String pNo;
    private String cdNote;
    private Date cdRegdate;
    private String cdVisit;
    private String cdgums;
    private String cdTartar;
    private String cdOrt;
    private String cdPrs;
    private String cdOral;
    private String memId;
    private int cdTotalpay;
    private Date cdUpdateday;
    private String cdUpdatemem;   
    
    private String cdUrJaw;
    private String cdUlJaw;
    private String cdBrJaw;
    private String cdBlJaw;
    
    private String cdPi;
    
}
