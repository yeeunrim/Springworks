package com.khit.todoweb.dto;

import java.util.List;

import lombok.Builder;
import lombok.Data;

@Data
public class PageResponseDTO<E> { // 목록 데이터, 페이지 이동을 위한 DTO
	// PageResponseDTO를 제네릭으로 만드는 이유 ?
	// 회원 정보나 게시판 정보를 페이지 처리할 수 있기 때문에
	
	private int page;
	private int size; 
	private int total; 
	
	// 시작 페이지 번호
	private int startPage;
	// 마지막 페이지 번호
	private int endPage;
	
	// 이전 페이지 존재 여부
	private boolean prev;
	// 다음 페이지 존재 여부
	private boolean next;
	
	// 목록 데이터
	private List<E> dtoList;
	
	// 최종 페이지
	private int maxPage;
	
	// 생성자
	@Builder(builderMethodName = "withAll")
	public PageResponseDTO(PageRequestDTO pageRequestDTO, List<E> dtoList, int total) {
		this.page = pageRequestDTO.getPage();
		this.size = pageRequestDTO.getSize();
		
		this.total = total;
		this.dtoList = dtoList;
		
		// 만약 page가 2page인 경우,
		// 2 / 10 = 0.2 -> 0.2 * 10 = 2 -> 2 = endPage
		// 만약 page가 20page인 경우,
		// 20 / 10 = 2 -> 2 * 10 = 20 -> 20 = endPage
		this.endPage = (int)(Math.ceil((double) this.page / 10)) * 10;
		// 만약 endPage가 20page인 경우,
		// 20 - 9 = 11 -> 11 = startPage
		this.startPage = this.endPage - 9;
		
		// 만약 total(총 게시글) = 100이면
		// 100 / 10 = 10 -> maxPage = 10page
		this.maxPage = (int)(Math.ceil((double)total/size));
		if(endPage > maxPage) {
			endPage = maxPage;
		}
		
		// 이전 페이지
		this.prev = this.startPage > 1;
		// 다음 페이지
		this.next = total > this.endPage * this.size;
	}

}
