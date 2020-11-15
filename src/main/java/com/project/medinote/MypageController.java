package com.project.medinote;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MypageController {
	
	@RequestMapping("/myPage")
	public String myPage() {
		return "myPage/myPage";
	}
	@RequestMapping("/infoEdit")
	public String infoEdit() {
		return "myPage/infoEdit";
	}
	@RequestMapping("/infoEdit_ok")
	public String infoEdit_ok() {
		return "myPage/infoEdit_ok";
	}
	@RequestMapping("/myComm")
	public String myComm() {
		return "myPage/myComm";
	}
}