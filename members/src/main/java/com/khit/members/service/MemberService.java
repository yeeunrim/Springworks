package com.khit.members.service;

import org.springframework.stereotype.Service;

import com.khit.members.dto.MemberDTO;
import com.khit.members.repository.MemberRepository;

import lombok.AllArgsConstructor;

@AllArgsConstructor
@Service
public class MemberService {
	
	private MemberRepository memberRepository;

	public void insert(MemberDTO memberDTO) {
		memberRepository.insert(memberDTO);
	}

	public MemberDTO login(MemberDTO memberDTO) {
		return memberRepository.login(memberDTO);
	}

}
