package kr.co.drcrown.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import kr.co.drcrown.dto.DiseasesVO;
import kr.co.drcrown.command.Criteria;
import kr.co.drcrown.command.PageMaker;
import kr.co.drcrown.command.ChartSearchCommand;
import kr.co.drcrown.dao.DiseasesDAO;

@Service
public class DiseasesServiceImpl implements DiseasesService {

	private DiseasesDAO diseasesDAO;

	public void setDiseasesDAO(DiseasesDAO diseasesDAO) {
		this.diseasesDAO = diseasesDAO;
	}

    @Override
    public Map<String, Object> getDiseasesList(Criteria cri) throws SQLException {

        Map<String, Object> dataMap2 = null;

        // 처리.......
        List<DiseasesVO> DiseasesList = diseasesDAO.selectDiseasesList(cri);
        PageMaker pageMaker = new PageMaker();
        pageMaker.setCri(cri);
        pageMaker.setTotalCount(diseasesDAO.selectDiseasesListCount(cri));

        dataMap2 = new HashMap<String, Object>();
        dataMap2.put("DiseasesList", DiseasesList);
        dataMap2.put("pageMaker", pageMaker);

        return dataMap2;
    }

    @Override
    public DiseasesVO getDiseasesCode(String symCode) throws SQLException {
        DiseasesVO Diseases = diseasesDAO.selectDiseasesCode(symCode);
        return Diseases;
    }

    @Override
    public List<DiseasesVO> getDiseasesListByKeyword(ChartSearchCommand csc) throws SQLException {
        
        List<DiseasesVO> symList = diseasesDAO.getDiseasesListByKeyword(csc);
        return symList;
    }
	
}