package org.khit.myapp.sample;

import org.springframework.stereotype.Component;

import lombok.NoArgsConstructor;
import lombok.ToString;

// @AllArgsConstructor // 매개변수가 있는 생성자
@NoArgsConstructor // 매개변수가 없는 생성자
@ToString
@Component // @Controller, @Repository, @Service의 부모 = @Component
public class Employee {
	
}
