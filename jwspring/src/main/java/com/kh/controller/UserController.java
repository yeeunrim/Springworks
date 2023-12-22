package com.kh.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class UserController {

	@GetMapping("/user")
	public void user() {
		System.out.println("user test...");
		log.info("user test...");
	}
}
