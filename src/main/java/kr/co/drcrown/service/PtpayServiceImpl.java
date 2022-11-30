package kr.co.drcrown.service;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import kr.co.drcrown.dao.PtpayDAO;

public class PtpayServiceImpl implements PtpayService {

    private  PtpayDAO ptpayDAO;
    
    public void setPtpayDAO(PtpayDAO ptpayDAO) {
        this.ptpayDAO = ptpayDAO;
    }
    
    @Override
    public List<Map<String, Object>> ptPaylist(Map<String, Object> vo) throws SQLException {
        
        HashMap<String, Object> map = new HashMap<String, Object>();
        
        List<Map<String, Object>> ptpaylist = ptpayDAO.ptPaylist(vo);
        
      
        /*
                Map<String, Object> dataMap = null;
         * dataMap = (Map<String, Object>) vo.get(0);
         * List listSender = new ArrayList<Object>();
         * 
         * dataMap.put("ptpaylist", ptpaylist);
         * listSender.add(ptpaylist);
         */        return ptpaylist;
    }

    @Override
    public void insertPtpay(Map<String, Object> vo) throws Exception {
        ptpayDAO.insertPtpay(vo);
        ptpayDAO.endPtpay(vo);

    }

    @Override
    public List<Map<String, Object>> ptPaylistpNo(Map<String, Object> vo) throws SQLException {
     
        
        List<Map<String, Object>> ptpaylist = ptpayDAO.ptPaylistpNo(vo);
        return ptpaylist;
    }
    @Override
    public void endPtpay(Map<String, Object> vo) throws Exception {
      
        
    }

}
