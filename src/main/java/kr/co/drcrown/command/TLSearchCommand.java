package kr.co.drcrown.command;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class TLSearchCommand {
    
    private String tlTitle;
    private int tscCode;
    private String tscName;
    private int tlcCode;
    private String tlcName;
    private int tlNeedTeeth;
}

