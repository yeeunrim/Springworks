package com.khit.members.dto;

import lombok.Data;

@Data
public class MemberDTO {
	
	private Long id;
	private String email;
	private String password;
	private String name;
	private int age;

}
