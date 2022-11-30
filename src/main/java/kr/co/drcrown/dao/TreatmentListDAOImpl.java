package kr.co.drcrown.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.co.drcrown.command.ChartSearchCommand;
import kr.co.drcrown.command.TLCCommand;
import kr.co.drcrown.command.TLListCommand;
import kr.co.drcrown.command.TLSearchCommand;
import kr.co.drcrown.command.TLDetailCommand;
import kr.co.drcrown.command.TLDetailSelectCommand;
import kr.co.drcrown.command.TSCCommand;

public class TreatmentListDAOImpl implements TreatmentListDAO {
    
    private SqlSession session;
    public void setSession(SqlSession session) {
        this.session = session;
    }
    
    @Override
    public List<TLCCommand> selectTreatmentListAll() throws SQLException {
        return session.selectList("TreatmentList-Mapper.selectTreatmentListAll");
    }

    @Override
    public List<TSCCommand> selectTscList(int tlcCode) throws SQLException {
        return session.selectList("TreatmentList-Mapper.selectTscList",tlcCode);
    }

    @Override
    public List<TLListCommand> selectTlList(int tscCode) throws SQLException {
        return session.selectList("TreatmentList-Mapper.selectTlList",tscCode);
    }

    @Override
    public List<TLDetailCommand> selectTlListDetail(String tlTitle) throws SQLException {
        return session.selectList("TreatmentList-Mapper.selectTlListDetail",tlTitle);
    }

    @Override
    public List<TLDetailCommand> selectTreatmentDetailList(TLDetailSelectCommand tldsc) throws SQLException {
        return session.selectList("TreatmentList-Mapper.selectTreatmentDetailList",tldsc);
    }

    @Override
    public List<TLSearchCommand> selectTreatmentListByKeyword(ChartSearchCommand csc) throws SQLException {
        return session.selectList("TreatmentList-Mapper.selectTreatmentListByKeyword",csc);
    }

}

