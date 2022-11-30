package kr.co.drcrown.command;

import java.util.List;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString

public class CureDetailRegistCommand {

    private String pNo;
    private String cdCode;
    private String memId;
    private String cdUrJaw;
    private String cdUlJaw;
    private String cdBrJaw;
    private String cdBlJaw;
    private String cdNote;
    private int cdTotalpay;
    
    private int[] cureCodeList;
    private int[] cureCountList;
    private int[] curePriceList;
    private int[] dzCodeList;
    
}   
