package kr.co.drcrown.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/home")
public class HomeController {
	@RequestMapping("/main")
	public void main()throws Exception{}
	@RequestMapping("/diner/main")
	public void diner()throws Exception{}
	@RequestMapping("/atten/main")
	public void atten()throws Exception{}
	
	
}
