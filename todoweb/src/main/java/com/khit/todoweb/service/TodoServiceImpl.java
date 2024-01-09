package com.khit.todoweb.service;

import java.util.List;
import java.util.stream.Collectors;

import org.modelmapper.ModelMapper;
import org.springframework.stereotype.Service;

import com.khit.todoweb.dto.PageRequestDTO;
import com.khit.todoweb.dto.PageResponseDTO;
import com.khit.todoweb.dto.TodoDTO;
import com.khit.todoweb.mapper.TodoMapper;
import com.khit.todoweb.vo.TodoVO;

import lombok.AllArgsConstructor;

@AllArgsConstructor
@Service
public class TodoServiceImpl implements TodoService{
	
	private TodoMapper todoMapper;
	
	private ModelMapper modelMapper;

	@Override
	public void insert(TodoDTO todoDTO) {
		// DTO를 VO로 변환 -> DB에 데이터 저장 가능
		
		// 1. 모듈(ModelMapper)을 사용 안한 경우,
		/* TodoVO todoVO = TodoVO.builder()
					.title(todoDTO.getTitle())
					.writer(todoDTO.getWriter())
					.build(); */
		
		// 2. 모듈(ModelMapper)을 사용한 경우,
		TodoVO todoVO = modelMapper.map(todoDTO, TodoVO.class);
		
		todoMapper.insert(todoVO);
	}

	@Override
	public List<TodoDTO> findAll() {
		// VO를 DTO로 변환 -> DB에 데이터 가져오기 가능
		
		// vo 리스트 데이터 가져오기
		List<TodoVO> voList = todoMapper.findAll();
		
		// DB에서 가져온 데이터를 담을 객체 : DTO로 변환해서 반환
		// List<TodoDTO> dtoList = new ArrayList<>();
		// for문 사용하면 전체 게시글 불러오기
		// for(TodoVO todoVO : voList) {			
			// 게시글 1개 보기 = 상세보기
			// VO -> DTO로 변환
			// TodoDTO todoDTO = TodoDTO.builder()
					// .tno(todoVO.getTno())
					// .title(todoVO.getTitle())
					// .writer(todoVO.getWriter())
					// .build();
			// list에 담기
			// dtoList.add(todoDTO);
		// }
		
		// vo 리스트를 dto로 저장하고 반환함 (람다식으로 구현)
		// 이 구문을 사용하기를 권장 - 위에 구문보다 간단
	    List<TodoDTO> dtoList = voList.stream()
							    .map(vo -> modelMapper.map(vo, TodoDTO.class))
   						        .collect(Collectors.toList());
		
		return dtoList;
	}

	@Override
	public TodoDTO findById(Long tno) {
		// VO를 가져와서 DTO로 변환
		TodoVO todoVO = todoMapper.findById(tno);
		
		/* TodoDTO todoDTO = TodoDTO.builder()
						  .tno(todoVO.getTno())
						  .title(todoVO.getTitle())
						  .writer(todoVO.getWriter())
						  .build(); */
		
		TodoDTO todoDTO = modelMapper.map(todoVO, TodoDTO.class);
		
		return todoDTO;
	}

	@Override
	public void delete(Long tno) {
		todoMapper.delete(tno);
	}

	@Override
	public void update(TodoDTO todoDTO) {
		// DTO -> VO로 변환
		TodoVO todoVO = modelMapper.map(todoDTO, TodoVO.class);
		
		todoMapper.update(todoVO);
	}

	@Override
	public PageResponseDTO<TodoDTO> pagingList(PageRequestDTO pageRequestDTO) {
		// DB에서 VO 가져오기
		List<TodoVO> voList = todoMapper.pagingList(pageRequestDTO);
		
		// VO -> DTO로 변환
		List<TodoDTO> dtoList = voList.stream()
									  .map(vo -> modelMapper.map(vo, TodoDTO.class))
									  .collect(Collectors.toList());
		
		// 전체 게시글 개수 가져오기
		int total = todoMapper.todoCount();
		
		PageResponseDTO<TodoDTO> pageResponseDTO = PageResponseDTO.<TodoDTO>withAll()
												   .dtoList(dtoList)
												   .total(total)
												   .pageRequestDTO(pageRequestDTO)
												   .build();
		return pageResponseDTO;
	}

}
