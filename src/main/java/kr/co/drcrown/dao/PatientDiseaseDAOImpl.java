package kr.co.drcrown.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.co.drcrown.command.PatienDiseaseRegistCommand;
import kr.co.drcrown.command.PatientDzSelectCommand;

public class PatientDiseaseDAOImpl implements PatientDiseaseDAO {
    private SqlSession session;
    
    public void setSession(SqlSession session) {
        this.session = session;
    }
    @Override
    public void insertPatienDisease(PatienDiseaseRegistCommand pdrc) throws SQLException {
        session.insert("PatientDisease-Mapper.insertPatienDisease",pdrc);
    }
    @Override
    public List<PatientDzSelectCommand> selectPatientDzListByCdCode(String cdCode) throws SQLException {
        return session.selectList("PatientDisease-Mapper.selectPatientDzListByCdCode",cdCode);
    }


}
