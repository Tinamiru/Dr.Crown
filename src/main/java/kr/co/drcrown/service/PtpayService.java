package kr.co.drcrown.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;


public interface PtpayService {
    List<Map<String, Object>> ptPaylist(Map<String, Object> vo)throws SQLException;
    
    List<Map<String, Object>> ptPaylistpNo(Map<String, Object> vo)throws SQLException;
    
    public void insertPtpay(Map<String, Object> vo) throws Exception;

    public void endPtpay(Map<String, Object> vo) throws Exception;
}
