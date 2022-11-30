package kr.co.drcrown.dao;

import java.sql.SQLException;
import java.util.List;

import kr.co.drcrown.command.PatientPrescribedRegistCommand;
import kr.co.drcrown.command.PatientPrescribedSelectCommand;
import kr.co.drcrown.command.PatientPrescribedSelectListCommand;

public interface PatientPrescribedDAO {

    void insertPatientPrescribed(PatientPrescribedRegistCommand pprc) throws SQLException;

    List<PatientPrescribedSelectCommand> selectDrugNameList(String cdCode) throws SQLException;

    List<PatientPrescribedSelectListCommand> selectPrescribedDrugListAll(String pno) throws SQLException;

}
