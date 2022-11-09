package kr.co.drcrown.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.co.drcrown.command.Criteria;
import kr.co.drcrown.dto.MemberVO;
import kr.co.drcrown.dto.NoticeVO;
import kr.co.drcrown.dto.PatientVO;

public interface PatientDAO {
	

	List<PatientVO> selectSearchPatientList(Criteria cri) throws SQLException;
	
	int selectSearchPatientListCount(Criteria cri) throws SQLException;
	
	PatientVO selectPatientByPatientNo(String pNo) throws SQLException;
	
	public void insertPatient(PatientVO patient) throws SQLException;
	
	public void deletePatient(String pNo) throws SQLException;
	
	public void updatePatient(PatientVO patient) throws SQLException;
	
	List<PatientVO> searchPatientList(Criteria cri) throws SQLException;

 
}
