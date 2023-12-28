package org.khit.myapp.service;

import org.khit.myapp.dto.UserDTO;
import org.khit.myapp.repository.UserRepository;
import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;

@AllArgsConstructor
@Service
public class UserService {
	
	private UserRepository userRepository;

	public void save(UserDTO userDTO) {
		userRepository.save(userDTO);
	}

	public boolean login(UserDTO userDTO) {
		// 로그인한 결과를 객체로 반환 받음
		UserDTO loginUser = userRepository.login(userDTO);
		if(loginUser != null) {
			return true;
		} else {
			return false;
		}
	}

}
