package kr.co.drcrown.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/approval")
public class ApprovalController {

	@RequestMapping("/main")
	public void main() throws Exception {
	}

	@GetMapping("/list")
	public String list() {
		String url = "/approval/list";
		return url;
	}

	@GetMapping("/order")
	public String order() {
		String url = "/approval/order";
		return url;
	}
}
