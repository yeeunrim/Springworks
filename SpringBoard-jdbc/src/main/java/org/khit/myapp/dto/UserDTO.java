package org.khit.myapp.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class UserDTO {

	private Long id;
	private String userId;
	private String userPasswd;
	private String userName;
	private Integer userAge;
	
}
