package com.khit.todoweb.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AjaxViewController {
	
	@GetMapping("/ajax/main")
	public String main() {
		return "/ajax-ex/main";
	}
	
	@GetMapping("/ajax/ex01")
	public String ex01() {
		return "/ajax-ex/ex01";
	}
	
	@GetMapping("/ajax/ex02")
	public String ex02() {
		return "/ajax-ex/ex02";
	}
	
	@GetMapping("/ajax/ex03")
	public String ex03() {
		return "/ajax-ex/ex03";
	}
	
	@GetMapping("/ajax/ex04")
	public String ex04() {
		return "/ajax-ex/ex04";
	}

}
