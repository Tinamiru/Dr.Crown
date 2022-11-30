package kr.co.drcrown.dao;

import java.sql.SQLException;
import java.util.List;

import kr.co.drcrown.command.PatienDiseaseRegistCommand;
import kr.co.drcrown.command.PatientDzSelectCommand;

public interface PatientDiseaseDAO {

    void insertPatienDisease(PatienDiseaseRegistCommand pdrc) throws SQLException;

    List<PatientDzSelectCommand> selectPatientDzListByCdCode(String cdCode)throws SQLException;

}
