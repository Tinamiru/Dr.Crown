package kr.co.drcrown.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/desk")
public class DeskController {
	
	@RequestMapping("/main")
	public void main()throws Exception{}
	
	@GetMapping("/booking/list")
	public String bookingList() {
		String url = "/desk/booking/list";
		return url;
	}
	
	@GetMapping("/patient/list")
	public String patientList() {
		String url = "/desk/patient/list";
		return url;
	}
	@GetMapping("/document/list")
	public String documentList() {
		String url = "/desk/document/list";
		return url;
	}
}
