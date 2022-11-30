package kr.co.drcrown.dao;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import kr.co.drcrown.command.ChartCureDetailCommand;
import kr.co.drcrown.command.Criteria;
import kr.co.drcrown.command.CureDetailRegistCommand;
import kr.co.drcrown.command.PatienDiseaseRegistCommand;
import kr.co.drcrown.command.PatienTreatmentRegistCommand;
import kr.co.drcrown.command.PatientPrescribedRegistListCommand;
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
        = session.selectList("CureDetail-Mapper.selectCureDetailListByPNoForChart", pNo);
        return cureDlist;
    }
    @Override
    public List<Map<String, Object>> cureDetail(String pNo) {
        
        List<Map<String, Object>> cureDelist 
        = session.selectList("CureDetail-Mapper.selectCureD", pNo);
        return cureDelist;

    }
    @Override
    public List<ChartCureDetailCommand> selectCureDetailListByPNoForChar(String pNo) throws SQLException {
        List<ChartCureDetailCommand> cdList = session.selectList("CureDetail-Mapper.selectCureDetailListByPNoForChart",pNo);
        return cdList;
    }
    @Override
    public void piInsert(CureDetailVO cd) throws SQLException {
        session.insert("CureDetail-Mapper.piInsert",cd);
    }
    @Override
    public List<Object> selectPiList(String pNo) throws SQLException {
        List<Object> piList = session.selectList("CureDetail-Mapper.selectPiList",pNo);
        return piList;
    }
    @Override
    public String insertCureDetail(CureDetailRegistCommand cdrc) throws SQLException {
        int totalPay = 0;
        
        int[] cureCountList = cdrc.getCureCountList();
        int[] curePriceList = cdrc.getCurePriceList();

        
        for (int i = 0; i < cureCountList.length; i++) {
            totalPay += cureCountList[i] * curePriceList[i];
        }
        
        cdrc.setCdTotalpay(totalPay);
        session.insert("CureDetail-Mapper.insertCureDetail",cdrc);
        String cdCode = cdrc.getCdCode();
        
        return cdCode;
        
    }
    
    @Override
    public String insertCureDetailForPrescribed(PatientPrescribedRegistListCommand pprcl) throws SQLException {
        session.insert("CureDetail-Mapper.insertCureDetailForPrescribed",pprcl);
        String cdCode = pprcl.getCdCode();
        
        return cdCode;
        
    }

}
