package kr.co.drcrown.dao;

import java.util.List;
import java.util.Map;

public interface PtpayDAO {
    List<Map<String, Object>> ptPaylist(Map<String, Object> vo);
    
    List<Map<String, Object>> ptPaylistpNo(Map<String, Object> vo);
    
    void insertPtpay(Map<String, Object> vo);
    
    void endPtpay(Map<String, Object> vo);
}
