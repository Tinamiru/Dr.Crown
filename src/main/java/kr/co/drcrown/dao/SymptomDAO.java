
package kr.co.drcrown.dao;

import java.sql.SQLException;
import java.util.List;

import kr.co.drcrown.command.Criteria;
import kr.co.drcrown.command.ChartSearchCommand;
import kr.co.drcrown.dto.SymptomVO;

public interface SymptomDAO {

    List<SymptomVO> selectSymptomList(Criteria cri)throws SQLException;
    
    int selectSymptomListCount(Criteria cri)throws SQLException;
    
    SymptomVO selectSymptomCode(String symCode)throws SQLException;

    List<SymptomVO> getSymptomListByKeyword(ChartSearchCommand slc)throws SQLException;
}
