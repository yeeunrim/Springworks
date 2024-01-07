package com.khit.web.service;

import java.util.List;

import com.khit.web.dto.UserDTO;

public interface UserService {

	// 추상 메서드로 들어가게 된다. -> 구현 필요
	void insert(UserDTO userDTO);

	List<UserDTO> findAll();

	UserDTO findById(Long id);

	UserDTO login(UserDTO userDTO);

	UserDTO finByUserId(String userId);

	void update(UserDTO userDTO);

	void delete(Long id);

	String checkUserId(String userId);

}
