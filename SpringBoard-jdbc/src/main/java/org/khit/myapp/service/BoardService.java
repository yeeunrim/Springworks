package org.khit.myapp.service;

import java.util.List;

import org.khit.myapp.dto.BoardDTO;
import org.khit.myapp.repository.BoardRepository;
import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;

@AllArgsConstructor // 생성자 주입 (DI)
@Service
public class BoardService {
	
	private BoardRepository boardRepository;

	public void save(BoardDTO boardDTO) {
		boardRepository.save(boardDTO);
	}

	public List<BoardDTO> getListAll() {
		return boardRepository.getListAll();
	}

	public BoardDTO findById(Long id) {
		return boardRepository.findById(id);
	}

	public void delete(Long id) {
		boardRepository.delete(id);
	}

	public void update(BoardDTO boardDTO) {
		boardRepository.update(boardDTO);
	}

}
