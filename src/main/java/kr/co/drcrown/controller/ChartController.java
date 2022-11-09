package kr.co.drcrown.controller;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import kr.co.drcrown.command.ChartSearchCommand;
import kr.co.drcrown.command.Criteria;
import kr.co.drcrown.dto.DrugInfoVO;
import kr.co.drcrown.dto.SymptomVO;
import kr.co.drcrown.service.DrugInfoService;
//import kr.co.drcrown.service.DrugInfoService;
import kr.co.drcrown.service.SymptomService;

@Controller
@RequestMapping("/chart")
public class ChartController {

    @Autowired
    private SymptomService symptomService;
    
    @Autowired
    private DrugInfoService drugInfoService;

    @RequestMapping("/main")
    public void main() throws Exception {
    }

    @RequestMapping("/list")
    public String list(Criteria cri, Model model) throws Exception {

        String url = "/chart/list";

        return url;
    }

    @PostMapping("/getSymListByKeyword")
    @ResponseBody
    public ResponseEntity<List<SymptomVO>> getSymListByKeyword(ChartSearchCommand csc) throws Exception {
        ResponseEntity<List<SymptomVO>> entity = null;

        List<SymptomVO> symList = symptomService.getSymptomListByKeyword(csc);
        for (SymptomVO symptomVO : symList) {
            System.out.println(symptomVO.getSymKo());
        }
        
        try {
            entity = new ResponseEntity<List<SymptomVO>>(symList, HttpStatus.OK);
        } catch (Exception e) {
            entity = new ResponseEntity<List<SymptomVO>>(HttpStatus.INTERNAL_SERVER_ERROR);
            e.printStackTrace();
        }
        return entity;
    }
    @PostMapping("/getDrugListByKeyword")
    @ResponseBody
    public ResponseEntity<List<DrugInfoVO>> getDrugListByKeyword(ChartSearchCommand csc) throws Exception {
        ResponseEntity<List<DrugInfoVO>> entity = null;
        
        System.out.println("드러그 인포 겟키워드 컨트롤러: "+csc.getKeyword());
        System.out.println("드러그 인포 겟키워드 컨트롤러: "+csc.getSearchType());
        
        List<DrugInfoVO> drugList = drugInfoService.getDrugListByKeyword(csc);
//        for (DrugInfoVO drugInfoVO : drugList) {
//            System.out.println(drugInfoVO.getDrugName());
//        }
        try {
            entity = new ResponseEntity<List<DrugInfoVO>>(drugList, HttpStatus.OK);
        } catch (Exception e) {
            entity = new ResponseEntity<List<DrugInfoVO>>(HttpStatus.INTERNAL_SERVER_ERROR);
            e.printStackTrace();
        }
        return entity;
    }

    @GetMapping("/diagnosisRegist")
    public String diagnosisRegist() {
        String url = "/chart/diagnosisRegist";
        return url;
    }

}
