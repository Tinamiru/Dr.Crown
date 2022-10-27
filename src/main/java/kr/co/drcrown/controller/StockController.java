package kr.co.drcrown.controller;


import java.util.Map;
import org.springframework.ui.Model;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.drcrown.command.Criteria;
import kr.co.drcrown.service.StockService;

@Controller
@RequestMapping("/stock")
public class StockController
{
	@Autowired
	private StockService stockService;

	@RequestMapping("/main")
	public void main() {}
	
	@RequestMapping("/equip/list")
	public String equipList(Criteria cri, Model model)throws Exception{
		String url = "stock/equip/list";
		
		Map<String,Object> dataMap = stockService.getEquipmentList(cri);	
		model.addAttribute("dataMap",dataMap);
		
		return url;
	}
	
	@RequestMapping("/equip/detail")
	public String equipDetail() {
		String url = "stock/equip/detail";
		return url;
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
	
	@RequestMapping("/consum/list")
	public String consumList() {
		String url = "stock/consum/list";
		return url;
	}
	
	@RequestMapping("/consum/detail")
	public String consumDetail() {
		String url = "stock/consum/detail";
		return url;
	}
	
	
	@RequestMapping("/consum/orderdetail")
	public String consumOrderDetail() {
		String url = "stock/consum/orderdetail";
		return url;
	}
	
	@RequestMapping("/consum/newAdd")
	public String consumNewAdd() {
		String url = "stock/consum/newAdd";
		return url;
	}
	
	@RequestMapping("/drug/list")
	public String drugList() {
		String url = "stock/drug/list";
		return url;
	}
	
	@RequestMapping("/drug/detail")
	public String drugDetail() {
		String url = "stock/drug/detail";
		return url;
	}
	
	
	@RequestMapping("/drug/orderdetail")
	public String drugOrderDetail() {
		String url = "stock/drug/orderdetail";
		return url;
	}
	
	@RequestMapping("/drug/newAdd")
	public String drugNewAdd() {
		String url = "stock/drug/newAdd";
		return url;
	}
	
	@RequestMapping("/medivice/list")
	public String mediviceList() {
		String url = "stock/medivice/list";
		return url;
	}
	
	@RequestMapping("/medivice/detail")
	public String mediviceDetail() {
		String url = "stock/medivice/detail";
		return url;
	}
	
	
	@RequestMapping("/medivice/orderdetail")
	public String mediviceOrderdetail() {
		String url = "stock/medivice/orderdetail";
		return url;
	}
	
	@RequestMapping("/medivice/newAdd")
	public String mediviceNewAdd() {
		String url = "stock/medivice/newAdd";
		return url;
	}
}
