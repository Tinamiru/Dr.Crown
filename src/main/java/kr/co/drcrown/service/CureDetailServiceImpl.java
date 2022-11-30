package kr.co.drcrown.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import kr.co.drcrown.command.ChartCureDetailCommand;
import kr.co.drcrown.command.CureDetailRegistCommand;
import kr.co.drcrown.command.PatienDiseaseRegistCommand;
import kr.co.drcrown.command.PatienTreatmentRegistCommand;
import kr.co.drcrown.command.PatientDzSelectCommand;
import kr.co.drcrown.command.PatientPrescribedSelectCommand;
import kr.co.drcrown.command.PatientPrescribedSelectListCommand;
import kr.co.drcrown.command.PatientTreatmentSelectCommand;
import kr.co.drcrown.dao.CureDAO;
import kr.co.drcrown.dao.CureDetailDAO;
import kr.co.drcrown.dao.FileDAO;
import kr.co.drcrown.dao.PatientDiseaseDAO;
import kr.co.drcrown.dao.PatientPrescribedDAO;
import kr.co.drcrown.dao.PatientTreatmentDAO;
import kr.co.drcrown.dto.CureDetailVO;
import kr.co.drcrown.dto.CureDlistVO;

@Service
public class CureDetailServiceImpl implements CureDetailService {

    private CureDetailDAO curedetailDAO;

    public void setCureDetailDAO(CureDetailDAO curedetailDAO) {
        this.curedetailDAO = curedetailDAO;
    }

    private CureDAO cureDAO;

    public void setCureDAO(CureDAO cureDAO) {
        this.cureDAO = cureDAO;
    }

    private PatientTreatmentDAO patientTreatmentDAO;

    public void setPatientTreatmentDAO(PatientTreatmentDAO patientTreatmentDAO) {
        this.patientTreatmentDAO = patientTreatmentDAO;
    }

    private PatientDiseaseDAO patientDiseaseDAO;

    public void setPatientDiseaseDAO(PatientDiseaseDAO patientDiseaseDAO) {
        this.patientDiseaseDAO = patientDiseaseDAO;
    }

    private PatientPrescribedDAO patientPrescribedDAO;

    public void setPatientPrescribedDAO(PatientPrescribedDAO patientPrescribedDAO) {
        this.patientPrescribedDAO = patientPrescribedDAO;
    }
    
    private FileDAO FileDAO;
    
    public void setFileDAO(FileDAO fileDAO) {
        FileDAO = fileDAO;
    }

    @Override
    public Map<String, Object> getCureDetailList(String pNo) throws SQLException {
        Map<String, Object> dataMap = null;

        List<CureDlistVO> curedetailList = curedetailDAO.selectCrueDetailList(pNo);

        dataMap = new HashMap<String, Object>();
        dataMap.put("curedetailList", curedetailList);

        return dataMap;
    }

    @Override
    public List<Map<String, Object>> cureDetail(String pNo) throws SQLException {

        List<Map<String, Object>> curedetailList = curedetailDAO.cureDetail(pNo);

        return curedetailList;
    }

    @Override
    public List<ChartCureDetailCommand> getCureDetailListByPNoForChar(String pNo) throws SQLException {
        List<ChartCureDetailCommand> cdList = curedetailDAO.selectCureDetailListByPNoForChar(pNo);

        // 바꾸고 담기는지 확인 필요
        // 내역에 따른 내용 리스트.
        // 그 리스트 속 DZ_NUM에 대한 DZ_NAME와 DZ_CODE 값.
        for (ChartCureDetailCommand ccdlc : cdList) {

            // cccNumber 값에 따라 PI와 진료 구분 출력
            String cccNumber = ccdlc.getCccNumber();
            if (cccNumber.equals("2")) {
                List<PatientPrescribedSelectCommand> drugNameList = patientPrescribedDAO.selectDrugNameList(ccdlc.getCdCode());
                ccdlc.setDrugNameList(drugNameList);
            } else {
                // 진료 정보 리스트
                List<PatientTreatmentSelectCommand> treatList = patientTreatmentDAO
                        .selectPatientTreatmentListByCdCode(ccdlc.getCdCode());
                List<PatientDzSelectCommand> dzList = patientDiseaseDAO.selectPatientDzListByCdCode(ccdlc.getCdCode());
                ccdlc.setTreatmentList(treatList);
                ccdlc.setDzList(dzList);
            }

        }

        return cdList;
    }

    @Override
    public void piRegist(CureDetailVO cd) throws Exception {
        curedetailDAO.piInsert(cd);
    }

    @Override
    public void registCureDetail(CureDetailRegistCommand cdrc) throws Exception {
        String cdCode = curedetailDAO.insertCureDetail(cdrc);

        int[] cureCodeList = cdrc.getCureCodeList();
        int[] dzCodeList = cdrc.getDzCodeList();
        String pNo = cdrc.getPNo();
        if (cureCodeList != null) {
            PatienTreatmentRegistCommand ptrc = new PatienTreatmentRegistCommand();
            ptrc.setCdCode(cdCode);
            ptrc.setPNo(pNo);
            for (int i : cureCodeList) {
                ptrc.setTlNumber(i);
                patientTreatmentDAO.insertPatienTreatment(ptrc);
            }
        }
        if (dzCodeList != null) {
            PatienDiseaseRegistCommand pdrc = new PatienDiseaseRegistCommand();
            pdrc.setCdCode(cdCode);
            pdrc.setPNo(pNo);
            for (int i : dzCodeList) {
                pdrc.setDzNum(i);
                patientDiseaseDAO.insertPatienDisease(pdrc);
            }
        }

    }
    
    @Override
    public List<PatientPrescribedSelectListCommand> getPrescribedDrugListAll(String pno) throws Exception {
        List<PatientPrescribedSelectListCommand> ppdl = patientPrescribedDAO.selectPrescribedDrugListAll(pno);
        return ppdl;
    }
    

}
