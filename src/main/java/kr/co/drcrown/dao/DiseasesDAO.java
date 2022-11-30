
package kr.co.drcrown.dao;

import java.sql.SQLException;
import java.util.List;

import kr.co.drcrown.command.Criteria;
import kr.co.drcrown.command.ChartSearchCommand;
import kr.co.drcrown.dto.DiseasesVO;

public interface DiseasesDAO {

    List<DiseasesVO> selectDiseasesList(Criteria cri)throws SQLException;
    
    int selectDiseasesListCount(Criteria cri)throws SQLException;
    
    DiseasesVO selectDiseasesCode(String dzCode)throws SQLException;

    List<DiseasesVO> getDiseasesListByKeyword(ChartSearchCommand csc)throws SQLException;
}
