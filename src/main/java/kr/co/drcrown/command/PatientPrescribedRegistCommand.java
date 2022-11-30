package kr.co.drcrown.command;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class PatientPrescribedRegistCommand {
    private String cdCode;
    
    private String drugNo;
    private int ppPertime;
    private int ppPerDate;
    private int ppTotalcount;
    private String ppMedication;
}
