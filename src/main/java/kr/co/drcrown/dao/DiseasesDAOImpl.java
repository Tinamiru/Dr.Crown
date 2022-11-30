package kr.co.drcrown.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import kr.co.drcrown.command.Criteria;
import kr.co.drcrown.command.ChartSearchCommand;
import kr.co.drcrown.dto.DiseasesVO;

public class DiseasesDAOImpl implements DiseasesDAO {
	
	
	private SqlSession session;
	
	public void setSession(SqlSession session) {
		this.session = session;
	}

    @Override
    public List<DiseasesVO> selectDiseasesList(Criteria cri) throws SQLException {

        int offset = cri.getStartRowNum();
        int limit = cri.getPerPageNum();
        RowBounds rowBounds = new RowBounds(offset, limit);

        List<DiseasesVO> diseasesList 
                = session.selectList("Diseases-Mapper.selectDiseasesList", cri, rowBounds);
        return diseasesList;
        

    }
    
    @Override
    public int selectDiseasesListCount(Criteria cri) throws SQLException {
        int count = session.selectOne("Diseases-Mapper.selectDiseasesListCount", cri);
        return count;

    }
    
    @Override
    public DiseasesVO selectDiseasesCode(String dzCode) throws SQLException {

        DiseasesVO Diseases = session.selectOne("Diseases-Mapper.selectDiseasesCode", dzCode);
        return Diseases;

    }

    @Override
    public List<DiseasesVO> getDiseasesListByKeyword(ChartSearchCommand csc) throws SQLException {
        List<DiseasesVO> dzList = session.selectList("Diseases-Mapper.selectDiseasesListByKeyword", csc);
        return dzList;
    }
    
}