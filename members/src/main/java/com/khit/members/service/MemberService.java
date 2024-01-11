package com.khit.members.service;

import java.util.List;

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

	public List<MemberDTO> findAll() {
		return memberRepository.findAll();
	}

	public MemberDTO findById(Long id) {
		return memberRepository.findById(id);
	}

	public void delete(Long id) {
		memberRepository.delete(id);
	}

	public MemberDTO findByEmail(String email) {
		return memberRepository.findByEmail(email);
	}

	public void update(MemberDTO memberDTO) {
		memberRepository.update(memberDTO);
	}

	public String checkEmail(String email) {
		MemberDTO memberDTO = memberRepository.findByEmail(email);
		if(memberDTO == null) { // 찾는 객체가 없으면 사용 가능 
			return "OK";
		} else {
			return "NO";
		}
	}

}
