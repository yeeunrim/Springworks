package com.khit.web.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.khit.web.dto.UserDTO;
import com.khit.web.mapper.UserMapper;

@Service
public class UserServiceImpl implements UserService{
	
	@Autowired
	private UserMapper userMapper;

	// UserService.java에서 생성된 추상메서드를 구현
	@Override
	public void insert(UserDTO userDTO) {
		userMapper.insert(userDTO);
	}

	@Override
	public List<UserDTO> findAll() {
		return userMapper.findAll();
	}

	@Override
	public UserDTO findById(Long id) {
		return userMapper.findById(id);
	}

	@Override
	public UserDTO login(UserDTO userDTO) {
		return userMapper.login(userDTO);
	}

	@Override
	public UserDTO finByUserId(String userId) {
		return userMapper.findByUserId(userId);
	}

	@Override
	public void update(UserDTO userDTO) {
		userMapper.update(userDTO);
	}

	@Override
	public void delete(Long id) {	
		userMapper.delete(id);
	}

	@Override
	public String checkUserId(String userId) {
		UserDTO user = userMapper.findByUserId(userId);
		if(user == null) { 		  // DB에 저장된 아이디(객체)가 없으면
			return "usable";      // 사용
		} else {                  // DB에 저장된 아이디(객체)가 있으면
			return "not_usable";  // 사용 불가
		}
	}

}
