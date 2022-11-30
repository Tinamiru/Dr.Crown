package kr.co.drcrown.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import kr.co.drcrown.command.ChartSearchCommand;
import kr.co.drcrown.command.TLCCommand;
import kr.co.drcrown.command.TLListCommand;
import kr.co.drcrown.command.TLSearchCommand;
import kr.co.drcrown.command.TLDetailCommand;
import kr.co.drcrown.command.TLDetailSelectCommand;
import kr.co.drcrown.command.TSCCommand;
import kr.co.drcrown.dao.TreatmentListDAO;

@Service
public class TreatmentListServiceImpl implements TreatmentListService{

    private TreatmentListDAO treatmentListDAO;
    
    public void setTreatmentListDAO(TreatmentListDAO treatmentListDAO) {
        this.treatmentListDAO = treatmentListDAO;
    }

    @Override
    public List<TLCCommand> getTreatmentListAll() throws Exception {
        // tl 리스트
        List<TLCCommand> tlcList = null;
        tlcList = treatmentListDAO.selectTreatmentListAll();
        // ts 리스트
        for (TLCCommand tlcCommand : tlcList) {
            int tlcCode = tlcCommand.getTlcCode();
            List<TSCCommand> tscList = treatmentListDAO.selectTscList(tlcCode);
            // tl title 리스트
            for (TSCCommand tscCommand : tscList) {
                int tscCode = tscCommand.getTscCode();
                List<TLListCommand> tlList = treatmentListDAO.selectTlList(tscCode);
                tscCommand.setTlList(tlList);
            }
            tlcCommand.setTscList(tscList);
            
        }
        
        return tlcList;
    }

    @Override
    public List<TLDetailCommand> getTreatmentDetailList(TLDetailSelectCommand tldsc) throws Exception {
        List<TLDetailCommand> tlDetailList = treatmentListDAO.selectTreatmentDetailList(tldsc);
        return tlDetailList;
    }

    @Override
    public List<TLSearchCommand> getTreatmentListByKeyword(ChartSearchCommand csc) throws Exception {
        List<TLSearchCommand> TLSearchList = treatmentListDAO.selectTreatmentListByKeyword(csc);
        return TLSearchList;
    }

}

