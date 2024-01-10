package com.khit.todoweb.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.khit.todoweb.dto.PageRequestDTO;
import com.khit.todoweb.dto.PageResponseDTO;
import com.khit.todoweb.dto.TodoDTO;
import com.khit.todoweb.service.TodoService;

import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@AllArgsConstructor
@Slf4j
@RequestMapping("/todo")
@Controller
public class TodoController {
	
	private TodoService todoService;
	
	@GetMapping("/register")
	public String register() {
		return "/todo/register";
	}
	
	// 등록하기
	@PostMapping("/register")
	public String registerForm(@ModelAttribute TodoDTO todoDTO) {
		log.info("todoDTO = " + todoDTO);
		todoService.insert(todoDTO);
		return "redirect:/todo/paging";
	}
	
	// 목록보기
	@GetMapping("/list")
	public String todoList(Model model) {
		List<TodoDTO> todoDTOList = todoService.findAll();
		model.addAttribute("todoList", todoDTOList);
		return "/todo/list";
	}
	
	@GetMapping("/paging")
	public String todoPagingList(@ModelAttribute PageRequestDTO pageRequestDTO, Model model) {
		PageResponseDTO<TodoDTO> pageResponseDTO = todoService.pagingList(pageRequestDTO);
		model.addAttribute("responseDTO", pageResponseDTO);
		return "/todo/pagelist";
	}
	
	// 상세보기 (1건) - /todo?tno=1
	@GetMapping
	public String getTodo(@RequestParam("tno") Long tno, PageRequestDTO pageRequestDTO, Model model) {
		TodoDTO todoDTO = todoService.findById(tno);
		model.addAttribute("todo", todoDTO);
		return "/todo/detail";
	}
	
	// 수정 페이지 요청
	@GetMapping("/update")
	public String updateForm(@RequestParam("tno") Long tno, PageRequestDTO pageRequestDTO, Model model) {
		// 해당 할 일을 가져오기
		TodoDTO todoDTO = todoService.findById(tno);
		model.addAttribute("todo", todoDTO);
		return "/todo/update";
	}
	
	// 수정 처리
	@PostMapping("/update")
	public String update(@ModelAttribute TodoDTO todoDTO) {
		todoService.update(todoDTO);
		return "redirect:/todo/update?tno=" + todoDTO.getTno();
	}
	
	// 삭제
	@GetMapping("/delete")
	public String delete(@RequestParam("tno") Long tno) {
		todoService.delete(tno);
		return "redirect:/todo/paging";
	}

}
