package com.khit.web.mapper;

import java.util.List;
import java.util.Map;

import com.khit.web.dto.BoardDTO;

public interface BoardMapper {

	void insert(BoardDTO boardDTO);

	List<BoardDTO> findAll();

	BoardDTO findById(Long id);

	void updateHit(Long id);

	void update(BoardDTO boardDTO);

	void delete(Long id);

	List<BoardDTO> pagingList(Map<String, Integer> pagingParam);

	int boardCount();

}
