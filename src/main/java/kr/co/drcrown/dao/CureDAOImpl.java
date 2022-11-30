package kr.co.drcrown.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.co.drcrown.command.ChartCureCommand;
import kr.co.drcrown.dto.CureVO;

public class CureDAOImpl implements CureDAO {
    
    private SqlSession session;
    
    public void setSession(SqlSession session) {
        this.session = session;
    }

    @Override
    public List<Object> selectCureListByCureCode(String cdCode) throws SQLException {
        List<Object> cureList = session.selectList("Cure-Mapper.selectCureListByCureCode", cdCode);
        return cureList;
    }

}
