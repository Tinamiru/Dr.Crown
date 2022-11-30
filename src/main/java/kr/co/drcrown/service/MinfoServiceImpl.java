package kr.co.drcrown.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.drcrown.command.Criteria;
import kr.co.drcrown.command.PageMaker;
import kr.co.drcrown.dao.MinfoDAO; 
import kr.co.drcrown.dto.MinfoVO;



@Service
public class MinfoServiceImpl implements MinfoService {

    private MinfoDAO minfoDAO;

    public void setMinfoDAO(MinfoDAO minfoDAO) {
        this.minfoDAO = minfoDAO;
    }

    @Override
    public Map<String, Object> getMinfoList(Criteria cri) throws SQLException {

        Map<String, Object> dataMap = new HashMap<String, Object>();

        // 현재 page 번호에 맞는 리스트를 perPageNum 개수 만큼 가져오기.
        List<MinfoVO> minfoList = minfoDAO.selectSearchMinfoList(cri);

        // 전체 board 개수
        int totalCount = minfoDAO.selectSearchMinfoListCount(cri);
        
        // PageMaker 생성.
        PageMaker pageMaker = new PageMaker();
        pageMaker.setCri(cri);
        pageMaker.setTotalCount(totalCount);

        dataMap.put("minfoList", minfoList);
        dataMap.put("pageMaker", pageMaker);

        return dataMap;

    }

    @Override
    public MinfoVO getMinfo(int minfoNo) throws SQLException {

        MinfoVO board = minfoDAO.selectMinfoByMinfoNo(minfoNo);
        minfoDAO.increaseViewCount(minfoNo);
        return board;

    }
    @Override
    public MinfoVO getMinfoForModify(int minfoNo) throws SQLException {

        MinfoVO board = minfoDAO.selectMinfoByMinfoNo(minfoNo);
        return board;

    }

    @Override
    public void regist(MinfoVO minfo) throws SQLException {

        int minfoNo = minfoDAO.selectMinfoSequenceNextValue();
        minfo.setMinfoNo(minfoNo);
        minfoDAO.insertMinfo(minfo);

    }

    @Override
    public void modify(MinfoVO minfo) throws SQLException {

        minfoDAO.updateMinfo(minfo);

    }

    @Override
    public void remove(int minfoNo) throws SQLException {

        minfoDAO.deleteMinfo(minfoNo);

    }

    @Override
    public List<MinfoVO> getMinfoCategoryList() throws SQLException {
        List<MinfoVO> categoryList = minfoDAO.selectCategoryList();
        return categoryList;
    }

}






