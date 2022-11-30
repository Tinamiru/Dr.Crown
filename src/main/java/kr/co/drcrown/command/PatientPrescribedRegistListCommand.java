package kr.co.drcrown.command;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class PatientPrescribedRegistListCommand {
        private String pNo;
        private String memId;
        private String cdCode;
        
        private String[] drugNoList;
        private int[] ppPertimeList;
        private int[] ppPerDateList;
        private int[] ppTotalcountList;
        private String[] ppMedicationList;
}
