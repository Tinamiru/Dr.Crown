package kr.co.drcrown.command;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class CureRegistListCommand {
    private String pNo;
    private String cdCode;
    private int tlNumber;
    private int ptTotalPrice;
}
