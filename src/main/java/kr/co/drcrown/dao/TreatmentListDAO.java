package kr.co.drcrown.dao;

import java.sql.SQLException;
import java.util.List;

import kr.co.drcrown.command.ChartSearchCommand;
import kr.co.drcrown.command.TLCCommand;
import kr.co.drcrown.command.TLListCommand;
import kr.co.drcrown.command.TLSearchCommand;
import kr.co.drcrown.command.TLDetailCommand;
import kr.co.drcrown.command.TLDetailSelectCommand;
import kr.co.drcrown.command.TSCCommand;

public interface TreatmentListDAO {

    List<TLCCommand> selectTreatmentListAll() throws SQLException;

    List<TSCCommand> selectTscList(int tlcCode) throws SQLException;

    List<TLListCommand> selectTlList(int tscCode) throws SQLException;

    List<TLDetailCommand> selectTlListDetail(String tlTitle) throws SQLException;

    List<TLDetailCommand> selectTreatmentDetailList(TLDetailSelectCommand tldsc) throws SQLException;

    List<TLSearchCommand> selectTreatmentListByKeyword(ChartSearchCommand csc) throws SQLException;

}
