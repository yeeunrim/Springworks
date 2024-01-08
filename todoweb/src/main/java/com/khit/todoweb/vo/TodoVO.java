package com.khit.todoweb.vo;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Builder
@NoArgsConstructor
@AllArgsConstructor
@Data
public class TodoVO {
	
	// 필드
	private Long tno;
	private String title;
	private String writer;
	private Timestamp createdDate;

}
