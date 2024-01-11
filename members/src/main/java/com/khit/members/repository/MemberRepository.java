package com.khit.members.repository;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.khit.members.dto.MemberDTO;

import lombok.AllArgsConstructor;

@AllArgsConstructor
@Repository
public class MemberRepository {
	
	private SqlSessionTemplate sql;
	
	// SqlSessionTemplate에서 사용 가능한 함수
	// insert(삽입), update(변경), delete(삭제)
	// selectOne(상세보기), slectList(목록보기)

	public void insert(MemberDTO memberDTO) {
		sql.insert("Member.insert", memberDTO);
	}

	public MemberDTO login(MemberDTO memberDTO) {
		return sql.selectOne("Member.login", memberDTO);
	}

	public List<MemberDTO> findAll() {
		return sql.selectList("Member.findAll");
	}

	public MemberDTO findById(Long id) {
		return sql.selectOne("Member.findById", id);
	}

	public void delete(Long id) {
		sql.delete("Member.delete", id);
	}

	public MemberDTO findByEmail(String email) {
		return sql.selectOne("Member.findByEmail", email);
	}

	public void update(MemberDTO memberDTO) {
		sql.update("Member.update", memberDTO);
	}

}
