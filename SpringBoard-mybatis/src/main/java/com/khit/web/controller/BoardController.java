package com.khit.web.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.khit.web.dto.BoardDTO;
import com.khit.web.service.BoardService;

import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@AllArgsConstructor // 생성자 주입
@Slf4j
@RequestMapping("/board")
@Controller
public class BoardController {
	
	private BoardService boardService;

	// 글쓰기
	@GetMapping("/write")
	public String writeForm() {
		return "/board/write";
	}
	
	// 글쓰기 처리
	@PostMapping("/write")
	public String write(BoardDTO boardDTO) {
		boardService.insert(boardDTO);
		log.info("boardDTO = " + boardDTO);
		return "redirect:/board/";
	}
	
	// 글 목록
	@GetMapping("/")
	public String getList(Model model) {
		List<BoardDTO> boardDTOList = boardService.getListAll();
		model.addAttribute("boardList", boardDTOList);
		return "/board/boardlist";
	}
	
}
