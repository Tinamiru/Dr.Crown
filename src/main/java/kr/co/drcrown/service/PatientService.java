package kr.co.drcrown.service;

import java.io.IOException;
import java.net.MalformedURLException;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import kr.co.drcrown.command.Criteria;
import kr.co.drcrown.dto.MemberVO;
import kr.co.drcrown.dto.NoticeVO;
import kr.co.drcrown.dto.PatientVO;

public interface PatientService {
	

	// 목록조회
	Map<String, Object> getPatientList(Criteria cri) throws SQLException;
	
	PatientVO getPatient(String pNo) throws SQLException;
	
	public void regist(PatientVO patient) throws Exception;

	Map<String, Object> getsearchPatientList(Criteria cri) throws SQLException;
	
	public void updatePatient(PatientVO patient) throws SQLException;
	
	public void deletePatient(String pNo) throws SQLException;
    
}
