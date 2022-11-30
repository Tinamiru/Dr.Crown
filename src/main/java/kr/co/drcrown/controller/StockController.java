package kr.co.drcrown.controller;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.drcrown.command.ChartSearchCommand;
import kr.co.drcrown.dto.StockVO;
import kr.co.drcrown.service.PreOrderService;
import kr.co.drcrown.service.StockService;

@Controller
@RequestMapping("/stock")
public class StockController {

    @Autowired
    private StockService stockService;

    @Autowired
    private PreOrderService preOrderService;
   

    @RequestMapping("/equip/list")
    public ModelAndView equipList(ModelAndView mnv) throws Exception {
        String url = "stock/equip/list";

        Map<String, Object> dataMap = stockService.getEquipmentList();
        Map<String, Object> dataMap2 = preOrderService.getPreOrderList();
        mnv.addObject("dataMap", dataMap);
        mnv.addObject("dataMap2", dataMap2);
        mnv.setViewName(url);

        return mnv;
    }
    
   
    
    @PostMapping("/equip/getSearchEquListByKeyword")
    @ResponseBody
    public ResponseEntity<List<StockVO>> getSearchEquipList(ChartSearchCommand csc) throws Exception{
        ResponseEntity<List<StockVO>> entity = null;
        
        List<StockVO> searchEquList = stockService.getSearchEquListByKeyword(csc);
        
        try {
            entity = new ResponseEntity<List<StockVO>>(searchEquList, HttpStatus.OK);
        } catch (Exception e) {
            entity = new ResponseEntity<List<StockVO>>(searchEquList, HttpStatus.INTERNAL_SERVER_ERROR);
            e.printStackTrace();
        }
        return entity;
    }
    
    
    
    
//    @PostMapping("/equip/listSuccess")
//    public String equipListInsert(StockVO preOrderList,RedirectAttributes rttr, HttpServletRequest req) throws SQLException {
//        String url = "stock/equip/listSucces";
//        
//        
//        stockService.insertEquipListPreOrder(preOrderList);
//
//        rttr.addFlashAttribute("form","listSuccess");
//        
//        return url;
//    }
    
    

    @GetMapping("/equip/equipDetail")
    public ModelAndView equipDetail(String equipCode, String from, ModelAndView mnv) throws SQLException {

        String url = "stock/equip/equipDetail";
        StockVO stock = null;
        if (from != null && from.equals("equipList")) {
            stock = stockService.getEquipListDetail(equipCode);
            url = "redirect:/equip/equipDetail?equipCode=" + equipCode;
        } else {
            stock = stockService.getEquipListDetailForModify(equipCode);
        }

        mnv.addObject("stock", stock);
        mnv.setViewName(url);

        return mnv;
    }
    
    @RequestMapping("/equip/orderdetail")
    public String equipOrderDetail() {
        String url = "stock/equip/orderdetail";
        return url;
    }

    @RequestMapping("/equip/newAdd")
    public String equipNewAdd() {
        String url = "stock/equip/newAdd";
        return url;
    }

    @RequestMapping(value = "/equip/newAddsucces", method = RequestMethod.POST)
    public String equipInsert(StockVO equipList) throws SQLException {
        String url = "stock/equip/newAddsucces";
        stockService.insertEquipList(equipList);

        return url;
    }

}