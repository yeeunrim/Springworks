package com.khit.web.controller;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.khit.web.dto.BoardDTO;
import com.khit.web.dto.PageDTO;
import com.khit.web.dto.ReplyDTO;
import com.khit.web.service.BoardService;
import com.khit.web.service.ReplyService;

import lombok.extern.slf4j.Slf4j;

// @AllArgsConstructor // 생성자 주입
@Slf4j
@RequestMapping("/board")
@Controller
public class BoardController {
	
	@Autowired
	private BoardService boardService;
	
	@Autowired
	private ReplyService replyService;

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
		
		return "redirect:/board/paging";
	}
	
	// 글 목록
	@GetMapping("/")
	public String getList(Model model) {
		List<BoardDTO> boardDTOList = boardService.findAll();
		model.addAttribute("boardList", boardDTOList);
		
		return "/board/boardlist";
	}
	
	// 글 목록 (페이지 처리)
	// /board/paging?page=2
	// @RequestParam(required=true/false) fasle는 필수 아님
	@GetMapping("/paging")
	public String getPageList(Model model, 
			@RequestParam(value = "page", required = false, defaultValue = "1") int page) {
		log.info("page=" + page);
		
		//페이지와 글 개수를 구현된 목록 보기
		List<BoardDTO> pagingList = boardService.pagingList(page);
		log.info("pagingList=" + pagingList);
		model.addAttribute("boardList", pagingList);
		
		//화면 하단 구현
		PageDTO pageDTO = boardService.pagingParam(page);
		model.addAttribute("paging", pageDTO);
		
		return "/board/pagelist";
	}
	
	// 글 상세보기 & 조회수
	// board?id=
	@GetMapping
	public String getBoard(@RequestParam("id") Long id, Model model,
			@RequestParam(value = "page", required = false, defaultValue = "1") int page) {
		// 조회수 증가
		boardService.updateHit(id);
		
		// 수정 시간
		Date now = new Date();
		model.addAttribute("now", now);
		
		// 댓글 목록
		List<ReplyDTO> replyListDTO = replyService.getReplyList(id);
		model.addAttribute("replyList", replyListDTO);
		
		// 글 상세보기
		BoardDTO boardDTO = boardService.findById(id);
		model.addAttribute("board", boardDTO);
		
		// 페이지
		model.addAttribute("page", page);
		
		return "/board/detail";
	}
	
	// 글 수정
	@GetMapping("/update")
	public String update(@RequestParam("id") Long id, Model model) {
		BoardDTO boardDTO = boardService.findById(id);
		model.addAttribute("board", boardDTO);
		
		return "/board/boardupdate";
	}
	
	// 글 수정 처리
	@PostMapping("/update")
	public String update(@ModelAttribute BoardDTO boardDTO) {
		boardService.update(boardDTO);
		log.info("boardDTO = " + boardDTO);
		
		return "redirect:/board/paging";
	}
	
	// 글 삭제
	@GetMapping("/delete")
	public String delete(@RequestParam("id") Long id) {	
		boardService.delete(id);
		
		return "redirect:/board/paging";
	}
	
}
