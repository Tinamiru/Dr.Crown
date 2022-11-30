package kr.co.drcrown.service;

import java.util.List;
import java.util.Map;

import kr.co.drcrown.command.ChartSearchCommand;
import kr.co.drcrown.command.TLCCommand;
import kr.co.drcrown.command.TLDetailCommand;
import kr.co.drcrown.command.TLDetailSelectCommand;
import kr.co.drcrown.command.TLSearchCommand;

public interface TreatmentListService {

    List<TLCCommand> getTreatmentListAll() throws Exception;

    List<TLDetailCommand> getTreatmentDetailList(TLDetailSelectCommand tldsc) throws Exception;

    List<TLSearchCommand> getTreatmentListByKeyword(ChartSearchCommand csc)throws Exception;
}
