package com.khit.web.dto;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class BoardDTO {

	// 필드
		private Long id;
		private String boardTitle;
		private String boardWriter;
		private String boardContent;
		private int hit;
		private Timestamp createdTime;
		private Timestamp updatedTime;
		
}
