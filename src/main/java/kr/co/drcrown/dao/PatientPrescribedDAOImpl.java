package kr.co.drcrown.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.co.drcrown.command.PatientPrescribedRegistCommand;
import kr.co.drcrown.command.PatientPrescribedSelectCommand;
import kr.co.drcrown.command.PatientPrescribedSelectListCommand;

public class PatientPrescribedDAOImpl implements PatientPrescribedDAO {
    
    private SqlSession session;
    
    public void setSession(SqlSession session) {
        this.session = session;
    }
    
    @Override
    public void insertPatientPrescribed(PatientPrescribedRegistCommand pprc) throws SQLException {
        session.insert("PatientPrescribed-Mapper.insertPatientPrescribed",pprc);
    }

    @Override
    public List<PatientPrescribedSelectCommand> selectDrugNameList(String cdCode) throws SQLException {
       return session.selectList("PatientPrescribed-Mapper.selectDrugNameList",cdCode);
    }
    @Override
    public List<PatientPrescribedSelectListCommand> selectPrescribedDrugListAll(String pno) throws SQLException {
        return session.selectList("PatientPrescribed-Mapper.selectPrescribedDrugListAll",pno);
    }

}
