package kr.co.drcrown.dao;

import java.sql.SQLException;
import java.util.List;

import kr.co.drcrown.command.ChartCureCommand;
import kr.co.drcrown.dto.CureVO;

public interface CureDAO {

    List<Object> selectCureListByCureCode(String cureCode)throws SQLException;
    

}
