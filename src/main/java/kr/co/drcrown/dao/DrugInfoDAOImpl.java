package kr.co.drcrown.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import kr.co.drcrown.command.ChartSearchCommand;
import kr.co.drcrown.command.Criteria;
import kr.co.drcrown.dto.DrugInfoVO;
import kr.co.drcrown.dto.DiseasesVO;

public class DrugInfoDAOImpl implements DrugInfoDAO {
	
	
	private SqlSession session;
	
	public void setSession(SqlSession session) {
		this.session = session;
	}
    @Override
    public List<DrugInfoVO> selectDrugInfoList(Criteria cri) throws SQLException {
        
        int offset = cri.getStartRowNum();
        int limit = cri.getPerPageNum();
        RowBounds rowBounds = new RowBounds(offset, limit);
        
        List<DrugInfoVO> drugInfoList = 
                session.selectList("DrugInfo-Mapper.selectDrugInfoList", cri, rowBounds);

        return drugInfoList;
        
    }
    
    
    @Override
    public int selectDrugInfoListCount(Criteria cri) throws SQLException {
        int count = session.selectOne("DrugInfo-Mapper.selectDrugInfoListCount", cri);
        return count;

    }
    
    @Override
    public DrugInfoVO selectDrugInfoNo(String drugNo) throws SQLException {

        DrugInfoVO drugInfo = session.selectOne("DrugInfo-Mapper.selectDrugInfoNo", drugNo);
        return drugInfo;

    }
    @Override
    public List<DrugInfoVO> getDrugListByKeyword(ChartSearchCommand csc) throws SQLException {
        List<DrugInfoVO> drugList = session.selectList("DrugInfo-Mapper.selectDrugListByKeyword", csc);
        return drugList;
    }
    
    
}