package kr.co.drcrown.dao;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import kr.co.drcrown.command.Criteria;
import kr.co.drcrown.dto.NoticeVO;
import kr.co.drcrown.dto.PatientVO;

public class PatientDAOImpl implements PatientDAO {
	
	
	private SqlSession session;
	public void setSession(SqlSession session) {
		this.session = session;
	}
	
	private PatientDAO patientDAO;
	public void setPatientDAO(PatientDAO patientDAO) {
		this.patientDAO = patientDAO;
	}
	
	@Override
    public List<PatientVO> selectSearchPatientList(Criteria cri) throws SQLException {

        
        int startRow = cri.getStartRowNum()+1;
        int endRow = startRow+cri.getPerPageNum()-1;        
        
        Map<String, Object> dataParam = new HashMap<String, Object>();
        dataParam.put("startRow", startRow);
        dataParam.put("endRow", endRow);
        dataParam.put("searchType", cri.getSearchType());
        dataParam.put("keyword", cri.getKeyword());

        List<PatientVO> patientList = session.selectList("Patient-Mapper.selectSearchPatientList", dataParam);

        return patientList;
    }

	@Override
	public int selectSearchPatientListCount(Criteria cri) throws SQLException {
		int count = session.selectOne("Patient-Mapper.selectSearchPatientListCount", cri);
		return count;
	}

	@Override
	public PatientVO selectPatientByPatientNo(String pNo) throws SQLException {
		PatientVO patient = session.selectOne("Patient-Mapper.selectPatientByPatientNo", pNo);
		return patient;
	}
  

	@Override
	public void insertPatient(PatientVO patient) throws SQLException {
		 session.update("Patient-Mapper.insertPatient",patient);
	
		
	}

    @Override
    public List<PatientVO> searchPatientList(Criteria cri) throws SQLException {
        Map<String, Object> dataParam = new HashMap<String, Object>();
        dataParam.put("searchType", cri.getSearchType());
        dataParam.put("keyword", cri.getKeyword());

        List<PatientVO> searchpatientList = session.selectList("Patient-Mapper.selectPatientBySerchKeyword", dataParam);
        return searchpatientList;
    }

    @Override
    public void deletePatient(String pNo) throws SQLException {
        session.update("Patient-Mapper.deletePatient",pNo);
        
    }

    @Override
    public void updatePatient(PatientVO patient) throws SQLException {
        session.update("Patient-Mapper.updatePatient",patient);
        
    }

}






