package com.khit.members.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.khit.members.dto.MemberDTO;
import com.khit.members.service.MemberService;

import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@AllArgsConstructor
@Slf4j
@RequestMapping("/member")
@Controller
public class MemberController {
	
	private MemberService memberService;
	
	// 회원가입 페이지 이동
	@GetMapping("/join")
	public String joinForm() {
		return "/member/join";
	}
	
	// 회원가입 처리
	@PostMapping("/join")
	public String join(@ModelAttribute MemberDTO memberDTO) {
		log.info("memberDTO : ", memberDTO);
		// 회원 가입 처리
		memberService.insert(memberDTO);
		return "/member/login";
	}
	
	// 로그인 페이지 이동
	@GetMapping("/login")
	public String loginForm() {
		return "/member/login";
	}
	
	// 로그인 처리
	@PostMapping("/login")
	public String login(@ModelAttribute MemberDTO memberDTO, HttpSession session) {
		MemberDTO loginMember = memberService.login(memberDTO);
		if(loginMember != null) { // 로그인된 객체가 있으면 세션 발급
			session.setAttribute("sessionEmail", memberDTO.getEmail());
			return "main";
		} else {
			return "/member/login";
		}
	}
	
	// 로그아웃
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
	
	// 회원 목록
	@GetMapping("/")
	public String getMemberList(Model model) {
		List<MemberDTO> memberDTOList = memberService.findAll();
		model.addAttribute("memberList", memberDTOList);
		return "/member/list";
	}
	
	// 회원 상세
	@GetMapping
	public String getMember(@RequestParam("id") Long id, Model model) {
		MemberDTO memberDTO = memberService.findById(id);
		model.addAttribute("member", memberDTO);
		return "/member/detail";
	}
	
	// 회원 삭제
	@GetMapping("/delete")
	public String delete(@RequestParam("id") Long id) {
		memberService.delete(id);
		return "redirect:/member/";
	}
	
	// 회원 수정 페이지 이동
	// 수정 시, 아이디로 찾지 않고 세션(email)으로 찾는다.
	@GetMapping("/update")
	public String updateForm(Model model, HttpSession session) {
		String email = (String)session.getAttribute("sessionEmail");
		MemberDTO memberDTO = memberService.findByEmail(email);
		model.addAttribute("member", memberDTO);
		return "/member/update";
	}
	
	// 회원 수정 처리
	@PostMapping("/update")
	public String update(@ModelAttribute MemberDTO memberDTO) {
		log.info("memberDTO = " + memberDTO);
		memberService.update(memberDTO);
		return "redirect:/member/update?id=" + memberDTO.getId();
	}
	
	// 이메일 중복 검사
	@PostMapping("/checkemail")
	public @ResponseBody String checkEmail(@RequestParam("email") String email) {
		String resultText = memberService.checkEmail(email);
		return resultText;
	}
	
}
