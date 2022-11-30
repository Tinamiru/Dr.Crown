package kr.co.drcrown.dao;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import kr.co.drcrown.command.ChartCureDetailCommand;
import kr.co.drcrown.command.Criteria;
import kr.co.drcrown.command.CureDetailRegistCommand;
import kr.co.drcrown.command.PatientPrescribedRegistListCommand;
import kr.co.drcrown.dto.CureDetailVO;
import kr.co.drcrown.dto.CureDlistVO;
import kr.co.drcrown.dto.MemberVO;



public interface CureDetailDAO{
	
    List<CureDlistVO> selectCrueDetailList(String pNo)throws SQLException;
	int selectCrueDetailListCount(Criteria cri)throws SQLException;
	
	List<CureDlistVO> selectCrueDetail(String pNo)throws SQLException;
	
	List<Map<String, Object>> cureDetail(String pNo);
    List<ChartCureDetailCommand> selectCureDetailListByPNoForChar(String pNo)throws SQLException;
    void piInsert(CureDetailVO cd)throws SQLException;
    
    List<Object> selectPiList(String pNo)throws SQLException;
    String insertCureDetail(CureDetailRegistCommand cdrc)throws SQLException;
    String insertCureDetailForPrescribed(PatientPrescribedRegistListCommand pprc) throws SQLException;
}
