package kr.co.drcrown.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/manage")
public class ManageController {

	@RequestMapping("/main")
	public void main() throws Exception {
	}

	@GetMapping("/statis/list")
	public String statisList() {
		String url = "/manage/statis/list";
		return url;
	}

	@GetMapping("/member/list")
	public String memberList() {
		String url = "/manage/member/list";
		return url;
	}

	@GetMapping("/work/list")
	public String workList() {
		String url = "/manage/work/list";
		return url;
	}

	@GetMapping("/address/list")
	public String addressList() {
		String url = "/manage/address/list";
		return url;
	}
}
