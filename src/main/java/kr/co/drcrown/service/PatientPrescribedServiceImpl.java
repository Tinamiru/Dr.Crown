package kr.co.drcrown.service;

import kr.co.drcrown.command.PatientPrescribedRegistCommand;
import kr.co.drcrown.command.PatientPrescribedRegistListCommand;
import kr.co.drcrown.dao.CureDetailDAO;
import kr.co.drcrown.dao.PatientPrescribedDAO;

public class PatientPrescribedServiceImpl implements PatientPrescribedService {
    
    private CureDetailDAO curedetailDAO;

    public void setCureDetailDAO(CureDetailDAO curedetailDAO) {
        this.curedetailDAO = curedetailDAO;
    }
    
    private PatientPrescribedDAO patientPrescribedDAO;
    
    public void setPatientPrescribedDAO(PatientPrescribedDAO patientPrescribedDAO) {
        this.patientPrescribedDAO = patientPrescribedDAO;
    }

    @Override
    public void registCureDetailForPrescribed(PatientPrescribedRegistListCommand pprcl) throws Exception {
        
        String cdCode = curedetailDAO.insertCureDetailForPrescribed(pprcl);
        PatientPrescribedRegistCommand pprc = new PatientPrescribedRegistCommand();
        
        String[] drugNoList = pprcl.getDrugNoList();
        int[] ppPertimeList = pprcl.getPpPertimeList();
        int[] ppPerDateList = pprcl.getPpPerDateList();
        int[] ppTotalcountList = pprcl.getPpTotalcountList();
        String[] ppMedicationList = pprcl.getPpMedicationList();
        
        for (int i = 0; i < drugNoList.length; i++) {
            pprc.setCdCode(cdCode);
            pprc.setDrugNo(drugNoList[i]);
            pprc.setPpPertime(ppPertimeList[i]);
            pprc.setPpPerDate(ppPerDateList[i]);
            pprc.setPpTotalcount(ppTotalcountList[i]);
            pprc.setPpMedication(ppMedicationList[i]);
            
            patientPrescribedDAO.insertPatientPrescribed(pprc);
        }
        
        
    }

}
