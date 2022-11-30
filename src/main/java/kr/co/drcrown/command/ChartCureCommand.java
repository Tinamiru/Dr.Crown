package kr.co.drcrown.command;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ChartCureCommand {
    private String cureCode;
    private Date cureRegdate; 
    private String dzCode;
    private String dzKoName;
    

}
