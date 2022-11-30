package kr.co.drcrown.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import kr.co.drcrown.dto.DrugInfoVO;
import kr.co.drcrown.command.ChartSearchCommand;
import kr.co.drcrown.command.Criteria;
import kr.co.drcrown.command.PageMaker;
import kr.co.drcrown.dao.DrugInfoDAO;

@Service
public class DrugInfoServiceImpl implements DrugInfoService {

	private DrugInfoDAO drugInfoDAO;

	public void setDrugInfoDAO(DrugInfoDAO drugInfoDAO) {
		this.drugInfoDAO = drugInfoDAO;
	}

    @Override
    public Map<String, Object> getDrugInfoList(Criteria cri) throws SQLException {
        Map<String, Object> dataMap = null;
        
        List<DrugInfoVO> drugInfoList = drugInfoDAO.selectDrugInfoList(cri);
        
        
        PageMaker pageMaker = new PageMaker();
        pageMaker.setCri(cri);
        pageMaker.setTotalCount(drugInfoDAO.selectDrugInfoListCount(cri));
        
        dataMap = new HashMap<String, Object>();
        dataMap.put("drugInfoList", drugInfoList);
        dataMap.put("pageMaker", pageMaker);
        
        return dataMap;
    }

    @Override
    public DrugInfoVO getDrugInfoNo(String drugNo) throws SQLException {
        DrugInfoVO drugInfo = drugInfoDAO.selectDrugInfoNo(drugNo);
        return drugInfo;
    }

    @Override
    public List<DrugInfoVO> getDrugListByKeyword(ChartSearchCommand csc) throws SQLException {
        List<DrugInfoVO> drugList = drugInfoDAO.getDrugListByKeyword(csc);
        return drugList;
    }
	
}