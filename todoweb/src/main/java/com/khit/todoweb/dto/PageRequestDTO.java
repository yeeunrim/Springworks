package com.khit.todoweb.dto;

import java.util.Arrays;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Builder
@NoArgsConstructor
@AllArgsConstructor
@Data
public class PageRequestDTO { // 파라미터(page, kw) 수집용 DTO

	private int page = 1;  // 페이지 번호
	private int size = 10; // 페이지당 게시글 
	
	// 검색
	private String[] types; // 검색 유형
	private String keyword; // 검색어
 	
	public int getSkip() {
		return (page - 1) * 10; // 1page = 0(index=1), 2page = 10(index=11)
	}
	
	// 검색유형(t, w) 체크박스 
	public boolean checkType(String type) {
		// type에 체크가 없으면 반환값이 없음
		if(types == null || types.length == 0) {
	         return false;
	    }
		
		// type에 일치하는 유형을 반환
		return Arrays.stream(types).anyMatch(type::equals);
	}
	
}



