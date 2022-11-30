package kr.co.drcrown.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import kr.co.drcrown.command.Criteria;
import kr.co.drcrown.command.PatCommand;

public class ManageDAOImpl implements ManageDAO {

    private SqlSession session;
    
    public void setSession(SqlSession session) {
        this.session = session;
    }
    
    @Override
    public List<Map<String, Object>> patStats(PatCommand patco) throws SQLException {

        List<Map<String, Object>> patStats 
        = session.selectList("Manage-Mapper.patStats", patco);
        return patStats;
    }

    @Override
    public List<Map<String, Object>> patStatsmon(PatCommand patco) throws SQLException {
        List<Map<String, Object>> patStats 
        = session.selectList("Manage-Mapper.patStatsmon", patco);
        return patStats;
    }

}
