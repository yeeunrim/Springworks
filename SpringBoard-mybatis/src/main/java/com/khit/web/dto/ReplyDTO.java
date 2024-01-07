package com.khit.web.dto;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class ReplyDTO {
	
	private Long id;                // 댓글 번호
	private Long boardId;           // 게시글 번호
	private String replyer;         // 작성자
	private String replyContent;    // 댓글 내용
	private Timestamp createdTime;  // 작성 시간
	private Timestamp updatedTime;  // 수정 시간

}
