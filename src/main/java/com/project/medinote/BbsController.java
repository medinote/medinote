package com.project.medinote;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BbsController {

	@RequestMapping("/bbs")
	public String bbs() {
		return "bbs/list";
	}
	
	@RequestMapping("/write")
	public String write() {
		return "bbs/write";
	}
	
	@RequestMapping("/view")
	public String view() {
		return "bbs/view";
	}
}
