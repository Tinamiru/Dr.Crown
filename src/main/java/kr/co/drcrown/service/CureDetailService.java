package kr.co.drcrown.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public interface CureDetailService {

    Map<String,Object> getCureDetailList(String pNo)throws SQLException;
    
    List<Map<String, Object>> cureDetail(String pNo)throws SQLException;
    
}
