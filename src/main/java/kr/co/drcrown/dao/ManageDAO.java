package kr.co.drcrown.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import kr.co.drcrown.command.Criteria;
import kr.co.drcrown.command.PatCommand;



public interface ManageDAO {
    
    List<Map<String, Object>> patStats(PatCommand patco)throws SQLException;
    List<Map<String, Object>> patStatsmon(PatCommand patco)throws SQLException;
}
