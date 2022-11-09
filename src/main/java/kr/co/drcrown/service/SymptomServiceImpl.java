package kr.co.drcrown.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import kr.co.drcrown.dto.SymptomVO;
import kr.co.drcrown.command.Criteria;
import kr.co.drcrown.command.PageMaker;
import kr.co.drcrown.command.ChartSearchCommand;
import kr.co.drcrown.dao.SymptomDAO;


public class SymptomServiceImpl implements SymptomService {

	private SymptomDAO symptomDAO;

	public void setSymptomDAO(SymptomDAO symptomDAO) {
		this.symptomDAO = symptomDAO;
	}

    @Override
    public Map<String, Object> getSymptomList(Criteria cri) throws SQLException {

        Map<String, Object> dataMap2 = null;

        // 처리.......
        List<SymptomVO> symptomList = symptomDAO.selectSymptomList(cri);
        //System.out.println(symptomList);
        PageMaker pageMaker = new PageMaker();
        pageMaker.setCri(cri);
        pageMaker.setTotalCount(symptomDAO.selectSymptomListCount(cri));

        dataMap2 = new HashMap<String, Object>();
        dataMap2.put("symptomList", symptomList);
        dataMap2.put("pageMaker", pageMaker);

        return dataMap2;
    }

    @Override
    public SymptomVO getSymptomCode(String symCode) throws SQLException {
        SymptomVO symptom = symptomDAO.selectSymptomCode(symCode);
        return symptom;
    }

    @Override
    public List<SymptomVO> getSymptomListByKeyword(ChartSearchCommand csc) throws SQLException {
        
        List<SymptomVO> symList = symptomDAO.getSymptomListByKeyword(csc);
        return symList;
    }
	
}