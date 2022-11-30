package kr.co.drcrown.command;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class PatientDzSelectCommand {
    private String dzNum;
    private String dzCode;
    private String dzKoName;
    
}
