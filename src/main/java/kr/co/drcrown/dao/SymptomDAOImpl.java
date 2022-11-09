package kr.co.drcrown.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import kr.co.drcrown.command.Criteria;
import kr.co.drcrown.command.ChartSearchCommand;
import kr.co.drcrown.dto.SymptomVO;

public class SymptomDAOImpl implements SymptomDAO {
	
	
	private SqlSession session;
	
	public void setSession(SqlSession session) {
		this.session = session;
	}

    @Override
    public List<SymptomVO> selectSymptomList(Criteria cri) throws SQLException {

        int offset = cri.getStartRowNum();
        int limit = cri.getPerPageNum();
        RowBounds rowBounds = new RowBounds(offset, limit);

        List<SymptomVO> symptomList 
                = session.selectList("Symptom-Mapper.selectSymptomList", cri, rowBounds);
        //System.out.println(symptomList);
        return symptomList;
        

    }
    
    @Override
    public int selectSymptomListCount(Criteria cri) throws SQLException {
        int count = session.selectOne("Symptom-Mapper.selectSymptomListCount", cri);
        return count;

    }
    
    @Override
    public SymptomVO selectSymptomCode(String symCode) throws SQLException {

        SymptomVO symptom = session.selectOne("Symptom-Mapper.selectSymptomCode", symCode);
        return symptom;

    }

    @Override
    public List<SymptomVO> getSymptomListByKeyword(ChartSearchCommand csc) throws SQLException {
        List<SymptomVO> symList = session.selectList("Symptom-Mapper.selectSymptomListByKeyword", csc);
        return symList;
    }
    
}