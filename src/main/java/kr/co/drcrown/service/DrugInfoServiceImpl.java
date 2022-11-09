package kr.co.drcrown.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


import kr.co.drcrown.dto.DrugInfoVO;
import kr.co.drcrown.command.ChartSearchCommand;
import kr.co.drcrown.command.Criteria;
import kr.co.drcrown.command.PageMaker;
import kr.co.drcrown.dao.DrugInfoDAO;


public class DrugInfoServiceImpl implements DrugInfoService {

	private DrugInfoDAO drugInfoDAO;

	public void setDrugInfoDAO(DrugInfoDAO drugInfoDAO) {
		this.drugInfoDAO = drugInfoDAO;
	}

    @Override
    public Map<String, Object> getDrugInfoList(Criteria cri) throws SQLException {
        Map<String, Object> dataMap = null;
        
        List<DrugInfoVO> drugInfoList = drugInfoDAO.selectDrugInfoList(cri);
        
        System.out.println("druginfolist = " + drugInfoList.toString());
        
        PageMaker pageMaker = new PageMaker();
        pageMaker.setCri(cri);
        pageMaker.setTotalCount(drugInfoDAO.selectDrugInfoListCount(cri));
        
        System.out.println("pageMaker totalCount = " + pageMaker.getTotalCount());
        
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
        System.out.println("드러그인포 서비스 들어옴?");
        List<DrugInfoVO> drugList = drugInfoDAO.getDrugListByKeyword(csc);
        return drugList;
    }
	
}