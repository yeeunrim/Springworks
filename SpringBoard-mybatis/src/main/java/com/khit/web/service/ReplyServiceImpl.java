package com.khit.web.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.khit.web.dto.ReplyDTO;
import com.khit.web.mapper.ReplyMapper;

@Service
public class ReplyServiceImpl implements ReplyService{
	
	@Autowired
	private ReplyMapper replyMapper;

	@Override
	public void insert(ReplyDTO replyDTO) {
		replyMapper.insert(replyDTO);
	}

	@Override
	public List<ReplyDTO> getReplyList(Long boardId) {
		return replyMapper.getReplyList(boardId);
	}

}
