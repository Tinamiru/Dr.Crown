package kr.co.drcrown.command;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class TLDetailCommand {
    
    private int tlNumber;
    private String tlCode;
    private String tlName;
    private int tlPrice;
    private int tlMedication;
    private int tlCount;
    private int tlBydate;
    private String tcName;
}

