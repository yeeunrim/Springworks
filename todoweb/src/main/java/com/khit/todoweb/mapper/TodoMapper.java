package com.khit.todoweb.mapper;

import java.util.List;

import com.khit.todoweb.dto.PageRequestDTO;
import com.khit.todoweb.vo.TodoVO;

public interface TodoMapper {
	
	public String getTime(); // 현재 시간 테스트
	
	public void insert(TodoVO todoVO); // 등록하기
	
	List<TodoVO> findAll(); // 목록
	
	List<TodoVO> pagingList(PageRequestDTO pageRequestDTO); // 페이지

	public TodoVO findById(Long tno); // 상세보기

	public void delete(Long tno); // 삭제

	public void update(TodoVO todoVO); // 수정
	
	public int todoCount();

}
