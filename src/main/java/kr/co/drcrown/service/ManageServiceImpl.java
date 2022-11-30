package kr.co.drcrown.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import kr.co.drcrown.command.Criteria;
import kr.co.drcrown.command.PatCommand;
import kr.co.drcrown.dao.ManageDAO;


public class ManageServiceImpl implements ManageService {
    
    private ManageDAO manageDAO;
    public void setManageDAO(ManageDAO manageDAO) {
        this.manageDAO = manageDAO;
    }
    
    @Override
    public List<Map<String, Object>> patStats(PatCommand patco) throws SQLException {
        
            List<Map<String, Object>> patStats = manageDAO.patStats(patco);

            return patStats;
        }

    @Override
    public List<Map<String, Object>> patStatsmon(PatCommand patco) throws SQLException {
        List<Map<String, Object>> patStats = manageDAO.patStatsmon(patco);

        return patStats;
    }



    

}
