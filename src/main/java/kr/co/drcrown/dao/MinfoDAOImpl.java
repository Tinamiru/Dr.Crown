package kr.co.drcrown.dao;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.drcrown.command.Criteria;
import kr.co.drcrown.dto.MinfoVO;




public class MinfoDAOImpl implements MinfoDAO {
	

    private SqlSession session;
    public void setSession(SqlSession session) {
        this.session = session;
    }
    
    private MinfoDAO minfoDAO;
    public void setMinfoDAO(MinfoDAO minfoDAO) {
        this.minfoDAO = minfoDAO;
    }
    @Override
    public List<MinfoVO> selectSearchMinfoList(Criteria cri) throws SQLException {

        
        int startRow = cri.getStartRowNum()+1;
        int endRow = startRow+cri.getPerPageNum()-1;        
        
        Map<String, Object> dataParam = new HashMap<String, Object>();
        dataParam.put("startRow", startRow);
        dataParam.put("endRow", endRow);
        dataParam.put("searchType", cri.getSearchType());
        dataParam.put("keyword", cri.getKeyword());

        List<MinfoVO> minfoList = session.selectList("Minfo-Mapper.selectSearchMinfoList", dataParam);

        return minfoList;
    }

    @Override
    public int selectSearchMinfoListCount(Criteria cri) throws SQLException {
        int count = session.selectOne("Minfo-Mapper.selectSearchMinfoListCount", cri);
        return count;
    }

    @Override
    public MinfoVO selectMinfoByMinfoNo(int minfoNo) throws SQLException {
        MinfoVO minfo = session.selectOne("Minfo-Mapper.selectMinfoByMinfoNo", minfoNo);
        return minfo;
    }

    @Override
    public void increaseViewCount(int minfoCount) throws SQLException {
        session.update("Minfo-Mapper.increaseViewCount", minfoCount);

    }

    @Override
    public int selectMinfoSequenceNextValue() throws SQLException {
        int seq_num = session.selectOne("Minfo-Mapper.selectMinfoSequenceNextValue");
        return seq_num;
    }

    @Override
    public void insertMinfo(MinfoVO minfo) throws SQLException {
        session.update("Minfo-Mapper.insertMinfo", minfo);

    }

    @Override
    public void updateMinfo(MinfoVO minfo) throws SQLException {
        session.update("Minfo-Mapper.updateMinfo", minfo);
    }

    @Override
    public void deleteMinfo(int minfoNo) throws SQLException {
        session.update("Minfo-Mapper.deleteMinfo", minfoNo);
    }
    
    @Override
    public MinfoVO selectMinfoByImage(String imageFile) throws SQLException {
        MinfoVO minfo = session.selectOne("Minfo-Mapper.selectMinfoByImage",imageFile);
        return minfo;
    }
    @Override
    public List<MinfoVO> selectCategoryList() throws SQLException {
        List<MinfoVO> categoryList = session.selectList("Minfo-Mapper.selectCategoryList");
        return categoryList;
    }

}
