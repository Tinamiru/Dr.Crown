package kr.co.drcrown.command;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class PatientPrescribedSelectListCommand {
    private Date ppRegdate;
    private String drugNo;
    private String drugName;
    private int ppPertime;
    private int ppPerdate;
    private int ppTotalcount;
}
