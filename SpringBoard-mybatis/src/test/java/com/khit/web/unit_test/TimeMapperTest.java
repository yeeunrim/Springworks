package com.khit.web.unit_test;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.khit.web.mapper.TimeMapper;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src\\main\\webapp\\WEB-INF\\spring\\root-context.xml")
public class TimeMapperTest {
	
	@Autowired
	private TimeMapper mapper;
	
	@Test
	public void testGetTime() {
		log.info(mapper.getTime());
	}

}
