package kr.co.drcrown.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/stock")
public class StockController
{
	@RequestMapping("/equip/list")
	public String equipList() {
		String url = "stock/equip/list";
		return url;
	}
	
	@RequestMapping("/equip/detail")
	public String equipDetail() {
		String url = "stock/equip/detail";
		return url;
	}
	
	@RequestMapping("/medivice/list")
	public String mediviceList() {
		String url = "stock/medivice/list";
		return url;
	}
	@RequestMapping("/consum/list")
	public String consumList() {
		String url = "stock/consum/list";
		return url;
	}
	@RequestMapping("/drug/list")
	public String drugList() {
		String url = "stock/drug/list";
		return url;
	}
}
