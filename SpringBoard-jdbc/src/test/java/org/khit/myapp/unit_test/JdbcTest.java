package org.khit.myapp.unit_test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import org.junit.Test;

import lombok.extern.slf4j.Slf4j;

@Slf4j // 로그(기록)을 출력하는 라이브러리
public class JdbcTest {
	
	@Test // JUnit을 할 때, 꼭 붙여줘야 함 -> 자바의 main 메서드처럼 사용 가능
	public void testConnection() {
		String className="com.mysql.cj.jdbc.Driver";
		String url="jdbc:mysql://localhost:3306/springdb?serverTime=Asia/Seoul";
		String username="springuser";
		String password="pwspring";
		
		try {
			Class.forName(className);
			Connection conn = DriverManager.getConnection(url, username, password);
			// System.out.println("db 연결 객체 생성 : " + conn);
			log.info("db 연결 객체 생성 : " + conn);
			conn.close();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
