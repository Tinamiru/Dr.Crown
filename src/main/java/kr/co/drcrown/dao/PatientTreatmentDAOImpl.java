package kr.co.drcrown.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.co.drcrown.command.PatienTreatmentRegistCommand;
import kr.co.drcrown.command.PatientTreatmentSelectCommand;

public class PatientTreatmentDAOImpl implements PatientTreatmentDAO {
    
    private SqlSession session;
    
    public void setSession(SqlSession session) {
        this.session = session;
    }

    @Override
    public void insertPatienTreatment(PatienTreatmentRegistCommand ptrc) throws SQLException {
        session.insert("PatientTreatment-Mapper.insertPatienTreatment",ptrc);
    }

    @Override
    public List<PatientTreatmentSelectCommand> selectPatientTreatmentListByCdCode(String cdCode) throws SQLException {
        return session.selectList("PatientTreatment-Mapper.selectPatientTreatmentListByCdCode",cdCode);
    }

}
