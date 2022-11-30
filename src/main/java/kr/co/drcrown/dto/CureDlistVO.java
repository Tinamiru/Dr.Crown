package kr.co.drcrown.dto;

import java.util.Date;
import java.util.List;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class CureDlistVO {
    private String cdCode;
    private String pNo;
    private Date cdRegdate;
    private String cdNote;
    private String cdVisit;
    private String cdGums;
    private String cdTartar;
    private String cdOrt;
    private String cdPrs;
    private String cdOral;
    private String memId;
    private String cdTotalpay;
    private Date cdUpdateday;
    private String cdUpdatemem;
    private String cdUrJaw;
    private String cdUlJaw;
    private String cdBrJaw;
    private String cdBlJaw;
    private int cccNumber;
    private int cdcNum;
    private String cdPi;
}
