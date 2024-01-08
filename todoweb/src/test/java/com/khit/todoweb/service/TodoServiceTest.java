package com.khit.todoweb.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.khit.todoweb.dto.TodoDTO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src\\main\\webapp\\WEB-INF\\spring\\root-context.xml")
public class TodoServiceTest {
	
	@Autowired
	private TodoService todoService;
	
	@Test
	public void testInsert() {
		// 폼에 입력된 자료로 인식
		TodoDTO todoDTO = TodoDTO.builder()
						  .title("취업하기")
						  .writer("임예은")
						  .build();
		todoService.insert(todoDTO);
	}

}
