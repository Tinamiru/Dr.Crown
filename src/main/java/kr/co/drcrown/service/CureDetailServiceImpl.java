package kr.co.drcrown.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import kr.co.drcrown.dao.CureDetailDAO;
import kr.co.drcrown.dto.CureDlistVO;
import kr.co.drcrown.dto.MemberVO;

public class CureDetailServiceImpl implements CureDetailService {

    private CureDetailDAO curedetailDAO;
    
    public void setCureDetailDAO(CureDetailDAO curedetailDAO ) {
      this.curedetailDAO = curedetailDAO;
    }

    @Override
    public Map<String, Object> getCureDetailList(String pNo) throws SQLException {
        Map<String, Object> dataMap = null;
        
        List<CureDlistVO> curedetailList  = curedetailDAO.selectCrueDetailList(pNo);
        
        dataMap = new HashMap<String, Object>();
        dataMap.put("curedetailList", curedetailList);
        
        return dataMap;
    }

    @Override
    public  List<Map<String, Object>>cureDetail(String pNo) throws SQLException {
        
      
        
        List<Map<String, Object>> curedetailList  = curedetailDAO.cureDetail(pNo);
        

        return curedetailList;
    }
    
 
   
}
