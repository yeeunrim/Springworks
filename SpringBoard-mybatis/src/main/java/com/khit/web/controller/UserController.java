package com.khit.web.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.khit.web.dto.UserDTO;
import com.khit.web.service.UserService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequestMapping("/user")
@Controller
public class UserController {
	
	@Autowired
	private UserService userService;
	
	// 회원가입
	@GetMapping("/join")
	public String joinForm() {
		return "/user/join";
	}
	
	// 회원가입 처리
	@PostMapping("/join")
	public String join(@ModelAttribute UserDTO userDTO) {
		log.info("userDTO = " + userDTO);
		userService.insert(userDTO);
		return "redirect:/";
	}
	
	// 회원 목록
	@GetMapping("/")
	public String userList(Model model) {
		List<UserDTO> userDTOList = userService.findAll();
		model.addAttribute("userList", userDTOList);
		return "/user/userlist";
	}
	
	// 회원 상세보기
	@GetMapping
	public String getUser(@RequestParam("id") Long id, Model model) {
		UserDTO userDTO = userService.findById(id);
		model.addAttribute("user", userDTO);
		return "/user/userdetail";
	}

	// 로그인
	@GetMapping("/login")
	public String login() {
		return "/user/login";
	}
	
	// 로그인 처리
	@PostMapping("/login")
	public String login(@ModelAttribute UserDTO userDTO, HttpSession session) {
		// 로그인 성공 or 실패
		UserDTO loginUser = userService.login(userDTO);
		
		if(loginUser != null) {
			session.setAttribute("sessionId", userDTO.getUserId());
			return "redirect:/main";			
		} else {
			return "/user/login";
		}
	}
	
	// 로그아웃
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}

}