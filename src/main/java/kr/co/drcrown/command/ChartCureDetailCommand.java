package kr.co.drcrown.command;

import java.util.Date;
import java.util.List;

import kr.co.drcrown.dto.CureVO;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ChartCureDetailCommand {
    private String cdCode;
    private Date cdRegdate;
    private String cccNumber;
    private String cccName; // 진료구분
    private String memName;
    private String cdNote;
    private String cureCode;
    private String cdUrJaw;
    private String cdUlJaw;
    private String cdBrJaw;
    private String cdBlJaw;
    private String cdPi;
    private int datecount;
    private List<PatientTreatmentSelectCommand> treatmentList;
    private List<PatientDzSelectCommand> dzList;
    private List<PatientPrescribedSelectCommand> drugNameList;

    
    

}
