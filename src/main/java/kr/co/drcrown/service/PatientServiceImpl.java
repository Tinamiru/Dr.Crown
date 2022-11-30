package kr.co.drcrown.service;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import kr.co.drcrown.command.Criteria;
import kr.co.drcrown.command.PageMaker;
import kr.co.drcrown.dto.NoticeVO;
import kr.co.drcrown.dto.PatientVO;
import kr.co.drcrown.dao.PatientDAO;

@Service
public class PatientServiceImpl implements PatientService {

	private PatientDAO patientDAO;

	public void setPatientDAO(PatientDAO patientDAO) {
		this.patientDAO = patientDAO;
	}

	@Override
	public Map<String, Object> getPatientList(Criteria cri) throws SQLException {

		Map<String, Object> dataMap = new HashMap<String, Object>();

		// 현재 page 번호에 맞는 리스트를 perPageNum 개수 만큼 가져오기.
		List<PatientVO> patientList = patientDAO.selectSearchPatientList(cri);

		// 전체 board 개수
		int totalCount = patientDAO.selectSearchPatientListCount(cri);

		// PageMaker 생성.
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(totalCount);

		dataMap.put("patientList", patientList);
		dataMap.put("pageMaker", pageMaker);

		return dataMap;

	}

	@Override
	public PatientVO getPatient(String pNo) throws SQLException {

		PatientVO patient = patientDAO.selectPatientByPatientNo(pNo);
		return patient;

	}
	
	  

	@Override
	public void regist(PatientVO patient) throws Exception {
		patientDAO.insertPatient(patient);
		
	}

    @Override
    public Map<String, Object> getsearchPatientList(Criteria cri) throws SQLException {
        Map<String, Object> dataMap = new HashMap<String, Object>();

      
        List<PatientVO> patientsearchList = patientDAO.searchPatientList(cri);


        dataMap.put("patientsearchList", patientsearchList);

        return dataMap;

    }

    @Override
    public void updatePatient(PatientVO patient) throws SQLException {
        patientDAO.updatePatient(patient);
        
    }

    @Override
    public void deletePatient(String pNo) throws SQLException {
       patientDAO.deletePatient(pNo);
        
    }
}
