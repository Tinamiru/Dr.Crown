package kr.co.drcrown.controller;


import java.sql.SQLException;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.josephoconnell.html.HTMLInputFilter;

import kr.co.drcrown.command.Criteria;
import kr.co.drcrown.dto.StockVO;
import kr.co.drcrown.service.StockService;

@Controller
@RequestMapping("/stock")
public class StockController
{
    
	@Autowired
	private StockService stockService;

	@RequestMapping("/main")
	public ModelAndView mainList(ModelAndView mnv)throws Exception{
        String url = "stock/main";
        
        Map<String,Object> dataMap = stockService.getALLList();
        mnv.addObject("dataMap",dataMap);
        mnv.setViewName(url);
        
        return mnv;
    }
	
	
	
	@RequestMapping("/equip/list")
	public ModelAndView equipList(ModelAndView mnv)throws Exception{
		String url = "stock/equip/list";
		
		Map<String,Object> dataMap = stockService.getEquipmentList();	
		mnv.addObject("dataMap",dataMap);
        mnv.setViewName(url);
		
		return mnv;
	}
	
	
	@RequestMapping("/equip/listJson")
	@ResponseBody
	public ResponseEntity<StockVO> listCopy(String equCode) throws SQLException{
	ResponseEntity<StockVO> entity = null;
	
	StockVO stock =null;
    stock=stockService.getEquipDetail(equCode);
    
    
    entity = new ResponseEntity<StockVO>(stock, HttpStatus.OK);
    
    return entity;
	}
	
	@RequestMapping(value = "/equip/listSucces",method = RequestMethod.POST)
    public String equipListInsert(StockVO equip) throws SQLException {
        String url = "stock/equip/listSucces";
        stockService.insertEquipPreOrder(equip);
        
        return url;
    }
	
	@GetMapping("/equip/detail")
	public ModelAndView equipDetail(String equCode,String from, ModelAndView mnv )throws SQLException{
	    
	    String url="stock/equip/detail";      
	    System.out.println("equCode"+equCode);
	    StockVO stock =null;
	    if(from!=null && from.equals("equipList")) {
	        stock=stockService.getEquipDetail(equCode);
	        url="redirect:/equip/detail?equCode="+equCode;
	    }else {
	        stock=stockService.getEquipDetailForModify(equCode);
	    }
	                
	    mnv.addObject("stock",stock);       
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
	
    
     @RequestMapping(value = "/equip/newAddsucces",method = RequestMethod.POST)
     public String equipInsert(StockVO equip) throws SQLException {
         String url = "stock/equip/newAddsucces";
         stockService.insertEquip(equip);
         
         return url;
     }
     
     
     ////////////////////////////////
     
	
     @RequestMapping("/consum/list")
     public ModelAndView consumeList(ModelAndView mnv)throws Exception{
         String url = "stock/consum/list";
         
         Map<String,Object> dataMap = stockService.getConsumeList();
         mnv.addObject("dataMap",dataMap);
         mnv.setViewName(url);
         
         return mnv;
     }
     
     
     @RequestMapping("/consum/listJson")
     @ResponseBody
     public ResponseEntity<StockVO> consumlistCopy(String conCode) throws SQLException{
     ResponseEntity<StockVO> entity = null;
     
     StockVO stock =null;
     stock=stockService.getConsumeDetail(conCode);
     
     entity = new ResponseEntity<StockVO>(stock, HttpStatus.OK);
     
     return entity;
     }
     
     @RequestMapping(value = "/consum/listSucces",method = RequestMethod.POST)
     public String consumeListInsert(StockVO consume) throws SQLException {
         String url = "stock/consum/listSucces";
         stockService.insertConsume(consume);
         
         return url;
     }
     
     @GetMapping("/consum/detail")
     public ModelAndView consumeDetail(String conCode,String from, ModelAndView mnv )throws SQLException{
         
         String url="stock/consum/detail";      
         System.out.println("conCode"+conCode);
         StockVO stock =null;
         if(from!=null && from.equals("consumeList")) {
             stock=stockService.getConsumeDetail(conCode);
             url="redirect:/consum/detail?equCode="+conCode;
         }else {
             stock=stockService.getConsumeDetailForModify(conCode);
         }
                     
         mnv.addObject("stock",stock);       
         mnv.setViewName(url);
         
         return mnv; 
     }
     
     
     @RequestMapping("/consum/orderdetail")
     public String consumeOrderDetail() {
         String url = "stock/consum/orderdetail";
         return url;
     }
     
     @RequestMapping("/consum/newAdd")
     public String consumeNewAdd() {
         String url = "stock/consum/newAdd";
         return url;
     }
     
     
      @RequestMapping(value = "/consum/newAddsucces",method = RequestMethod.POST)
      public String consumeInsert(StockVO consume) throws SQLException {
          String url = "stock/consum/newAddsucces";
          stockService.insertConsume(consume);
          
          return url;
      }

      ////////////////////////
      
      @RequestMapping("/medivice/list")
      public ModelAndView mediList(ModelAndView mnv)throws Exception{
          String url = "stock/medivice/list";
          
          Map<String,Object> dataMap = stockService.getMedideciveList();
          mnv.addObject("dataMap",dataMap);
          mnv.setViewName(url);
          
          return mnv;
      }
      
      
      @RequestMapping("/medivice/listJson")
      @ResponseBody
      public ResponseEntity<StockVO> medilistCopy(String mediCode) throws SQLException{
      ResponseEntity<StockVO> entity = null;
      
      StockVO stock =null;
      stock=stockService.getMediDetail(mediCode);
      
      entity = new ResponseEntity<StockVO>(stock, HttpStatus.OK);
      
      return entity;
      }
      
      @RequestMapping(value = "/medivice/listSucces",method = RequestMethod.POST)
      public String mediListInsert(StockVO medi) throws SQLException {
          String url = "stock/medivice/listSucces";
          stockService.insertMediPreOrder(medi);
          
          return url;
      }
      
      @GetMapping("/medivice/detail")
      public ModelAndView mediDetail(String mediCode,String from, ModelAndView mnv )throws SQLException{
          
          String url="stock/medivice/detail";      
          System.out.println("mediCode"+mediCode);
          StockVO stock =null;
          if(from!=null && from.equals("mediList")) {
              stock=stockService.getEquipDetail(mediCode);
              url="redirect:/equip/detail?mediCode="+mediCode;
          }else {
              stock=stockService.getMediDetailForModify(mediCode);
          }
                      
          mnv.addObject("stock",stock);       
          mnv.setViewName(url);
          
          return mnv; 
      }
      
      
      @RequestMapping("/medivice/orderdetail")
      public String mediOrderDetail() {
          String url = "stock/medivice/orderdetail";
          return url;
      }
      
      @RequestMapping("/medivice/newAdd")
      public String mediNewAdd() {
          String url = "stock/medivice/newAdd";
          return url;
      }
      
      
       @RequestMapping(value = "/medivice/newAddsucces",method = RequestMethod.POST)
       public String mediInsert(StockVO medi) throws SQLException {
           String url = "stock/medivice/newAddsucces";
           stockService.insertMedi(medi);
           
           return url;
       }
       
       ///////////////
       
       @RequestMapping("/drug/list")
       public ModelAndView dstList(ModelAndView mnv)throws Exception{
           String url = "stock/drug/list";
           
           Map<String,Object> dataMap = stockService.getDrugStockList();
           mnv.addObject("dataMap",dataMap);
           mnv.setViewName(url);
           
           return mnv;
       }
       
       
       @RequestMapping("/drug/listJson")
       @ResponseBody
       public ResponseEntity<StockVO> dstlistCopy(String dstCode) throws SQLException{
       ResponseEntity<StockVO> entity = null;
       
       StockVO stock =null;
       stock=stockService.getDstDetail(dstCode);
       
       entity = new ResponseEntity<StockVO>(stock, HttpStatus.OK);
       
       return entity;
       }
       
       @RequestMapping(value = "/drug/listSucces",method = RequestMethod.POST)
       public String dstListInsert(StockVO dst) throws SQLException {
           String url = "stock/drug/listSucces";
           stockService.insertDstPreOrder(dst);
           
           return url;
       }
       
       @GetMapping("/drug/detail")
       public ModelAndView dstDetail(String dstCode,String from, ModelAndView mnv )throws SQLException{
           
           String url="stock/drug/detail";      
           System.out.println("dstCode"+dstCode);
           StockVO stock =null;
           if(from!=null && from.equals("mediList")) {
               stock=stockService.getDstDetail(dstCode);
               url="redirect:/drug/detail?dstCode="+dstCode;
           }else {
               stock=stockService.getDstDetailForModify(dstCode);
           }
                       
           mnv.addObject("stock",stock);       
           mnv.setViewName(url);
           
           return mnv; 
       }
       
       
       @RequestMapping("/drug/orderdetail")
       public String dstOrderDetail() {
           String url = "stock/drug/orderdetail";
           return url;
       }
       
       @RequestMapping("/drug/newAdd")
       public String dstNewAdd() {
           String url = "stock/drug/newAdd";
           return url;
       }
       
        @RequestMapping(value = "/drug/newAddsucces",method = RequestMethod.POST)
        public String dstInsert(StockVO dst) throws SQLException {
            String url = "stock/drug/newAddsucces";
            stockService.insertDst(dst);
            
            return url;
        }

}