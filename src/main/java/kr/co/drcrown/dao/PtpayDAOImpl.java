package kr.co.drcrown.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

public class PtpayDAOImpl implements PtpayDAO {

    private SqlSession session;
    
    public void setSession(SqlSession session) {
        this.session = session;
    }
    
    @Override
    public List<Map<String, Object>> ptPaylist(Map<String, Object> vo) {
        List<Map<String, Object>> ptPaylist 
        = session.selectList("Ptpay-Mapper.selectlistPtpay", vo);
        return ptPaylist;
    }

    @Override
    public void insertPtpay(Map<String, Object> vo) {
        session.insert("Ptpay-Mapper.insertPtpay", vo);

    }

    @Override
    public List<Map<String, Object>> ptPaylistpNo(Map<String, Object> vo) {
        List<Map<String, Object>> ptPaylist 
        = session.selectList("Ptpay-Mapper.listPtpay", vo);
        return ptPaylist;
    }

    @Override
    public void endPtpay(Map<String, Object> vo) {
        session.insert("Ptpay-Mapper.endPtpay", vo);
        
    }

}
