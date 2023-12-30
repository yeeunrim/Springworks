package com.khit.web.dto;

import lombok.Data;

/* @AllArgsConstructor
   @NoArgsConstructor
   @ToString
   @Getter
   @Setter -> = @Date */
@Data
public class UserDTO {
	
	// 필드
	private Long id;
	private String userId;
	private String userPasswd;
	private String userName;
	private Integer userAge;
	
}
