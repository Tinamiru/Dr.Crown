package kr.co.drcrown.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.drcrown.command.MemberRegistCommand;
import kr.co.drcrown.dto.MemberVO;
import kr.co.drcrown.service.MemberService;


@Controller
@RequestMapping("/member")
public class MemberController {

	@Autowired
	private MemberService memberService;

	
	@GetMapping("/registForm")
	public String registForm() {
		String url = "member/regist";
		return url;
	}
	
	@GetMapping("/detail")
	public String detail(String id, Model model) throws Exception {

		String url = "member/detail";

		MemberVO member = memberService.getMember(id);
		model.addAttribute("member", member);

		return url;
	}

	
	
	@GetMapping("/idCheck")
	@ResponseBody
	public ResponseEntity<String> idCheck(String id) throws Exception {
		ResponseEntity<String> entity = null;

		MemberVO member = memberService.getMember(id);

		if (member != null) {
			entity = new ResponseEntity<String>("duplicated", HttpStatus.OK);
		} else {
			entity = new ResponseEntity<String>("", HttpStatus.OK);
		}

		return entity;
	}
	
	@Resource(name = "picturePath")
	private String picturePath;
	
	@GetMapping("/getPicture")
	@ResponseBody
	public ResponseEntity<byte[]> getPicture(String id) throws Exception {
		ResponseEntity<byte[]> entity = null;

		String picture = memberService.getMember(id).getMemPic();

		InputStream in = null;
		String imgPath = this.picturePath;
		try {
			in = new FileInputStream(new File(imgPath, picture));

			entity = new ResponseEntity<byte[]>(IOUtils.toByteArray(in), HttpStatus.CREATED);
		} finally {
			if (in != null)
				in.close();
		}

		return entity;
	}
	
	
	
}
