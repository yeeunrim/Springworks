package com.khit.test.dto;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class BoardDTO {
	
	private Long id;
	private String btitle;
	private String bwriter;
	private String bcontent;
	private Integer hit;
	private Timestamp createdTime;

}