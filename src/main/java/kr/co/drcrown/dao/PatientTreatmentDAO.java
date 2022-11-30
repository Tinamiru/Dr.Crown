package kr.co.drcrown.dao;

import java.sql.SQLException;
import java.util.List;

import kr.co.drcrown.command.PatienTreatmentRegistCommand;
import kr.co.drcrown.command.PatientTreatmentSelectCommand;

public interface PatientTreatmentDAO {

    void insertPatienTreatment(PatienTreatmentRegistCommand ptrc) throws SQLException;

    List<PatientTreatmentSelectCommand> selectPatientTreatmentListByCdCode(String cdCode) throws SQLException;

}
