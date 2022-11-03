package kr.co.drcrown.dao;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import kr.co.drcrown.command.Criteria;
import kr.co.drcrown.dto.BookingVO;
import kr.co.drcrown.dto.CureDetailVO;
import kr.co.drcrown.dto.CureDlistVO;
import kr.co.drcrown.dto.MemberVO;

public class CureDetailDAOImpl implements CureDetailDAO {
    
    private SqlSession session;
    
    public void setSession(SqlSession session) {
        this.session = session;
    }
    @Override
    public List<CureDlistVO> selectCrueDetailList(String pNo) throws SQLException {
    
        List<CureDlistVO> cureDlist 
        = session.selectList("CureDetail-Mapper.selectCureDetail", pNo);
        return cureDlist;
    }

    @Override
    public int selectCrueDetailListCount(Criteria cri) throws SQLException {
        int count = session.selectOne("CureDetail-Mapper.selectCureDetailListCount", cri);
        return count;
    }

    @Override
    public List<CureDlistVO> selectCrueDetail(String pNo) throws SQLException {
        List<CureDlistVO> cureDlist 
        = session.selectList("CureDetail-Mapper.selectCureDetail", pNo);
        return cureDlist;
    }
    @Override
    public List<Map<String, Object>> cureDetail(String pNo) {
        
        List<Map<String, Object>> cureDelist 
        = session.selectList("CureDetail-Mapper.selectCureD", pNo);
        return cureDelist;

    }

}
