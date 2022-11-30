package kr.co.drcrown.command;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class PatientTreatmentSelectCommand {
    private String tlNumber;
    private String tlTitle;
    private String tlName;
}
