package com.khit.todoweb.mapper;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.khit.todoweb.vo.TodoVO;

import lombok.extern.log4j.Log4j;

@Log4j
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src\\main\\webapp\\WEB-INF\\spring\\root-context.xml")
public class TodoMapperTest {
	
	@Autowired // 자동주입 - todoMapper가 new한거랑 같음
	private TodoMapper todoMapper;

	@Test
	public void testGetTime() {
		log.info(todoMapper.getTime());
	}
	
	// @Test
	// public void testInsert() {
		// JDBC로 했을 경우,
		/* TodoVO todoVO = new TodoVO();
		todoVO.setTitle("12시 전에 잠들기");
		todoVO.setWriter("임예은"); */
		
		// 데이터 1개 생성 - bulider() 
		// TodoVO todoVO = TodoVO.builder()
						// .title("20분 운동하기")
						// .writer("임예은")
						// .build();
		
		// todoMapper.insert(todoVO);
	// } 
	
	@Test
	public void testFindAll() {
		// db에 있는 데이터 추출하기 (검색하기)
		List<TodoVO> todoList = todoMapper.findAll();
		
		for(TodoVO todo : todoList) {
			log.info(todo);
		}
	}
	
}
