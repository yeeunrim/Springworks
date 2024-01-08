package com.khit.web.service;

import java.util.List;

import com.khit.web.dto.ReplyDTO;

public interface ReplyService {

	void insert(ReplyDTO replyDTO);
	
	// BoardController에서 작성
	List<ReplyDTO> getReplyList(Long boardId);

	void delete(Long id);

	ReplyDTO findById(Long id);

	void update(ReplyDTO replyDTO);

}
