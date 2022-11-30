package kr.co.drcrown.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/picture")
public class PictureController {

	@RequestMapping("/main")
	public void main() throws Exception {
	}

	@GetMapping("/list")
	public String list() {
		String url = "/picture/list";
		return url;
	}

	@GetMapping("/filming")
	public String filming() {
		String url = "/picture/filming";
		return url;
	}
	
	@GetMapping("/whitening")
	public String whitening() {
	    String url = "/picture/whitening";
	    return url;
	}
	@GetMapping("/upload")
	public String upload(String pNo, HttpServletRequest request) {
	    String url = "/picture/upload";
	    request.setAttribute("pNo", pNo);
	    return url;
	}
}
