package kr.co.drcrown.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/chart")
public class ChartController {
	
	@RequestMapping("/main")
	public void main()throws Exception{}
	
	@GetMapping("/list")
	public String list() {
		String url = "/chart/list";
		return url;
	}

	@GetMapping("/diagnosisRegist")
	public String diagnosisRegist() {
	    String url = "/chart/diagnosisRegist";
	    return url;
	}
}
