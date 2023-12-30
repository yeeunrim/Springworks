package com.khit.web.service;

import java.util.List;

import com.khit.web.dto.BoardDTO;

public interface BoardService {

	void insert(BoardDTO boardDTO);

	List<BoardDTO> getListAll();

}
