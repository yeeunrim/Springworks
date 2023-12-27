package org.khit.myapp.unittest;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import org.junit.Test;

import lombok.extern.log4j.Log4j;

@Log4j // 로그(기록)을 출력하는 라이브러리
public class JdbcTest {
	
	@Test // JUnit을 할 때, 꼭 붙여줘야 함 -> 자바의 main 메서드처럼 사용 가능
	public void testConnection() {
		String className="com.mysql.cj.jdbc.Driver";
		String url="jdbc:mysql://localhost:3306/jwebdb?serverTime=Asia/Seoul";
		String username="jweb";
		String password="pwjweb";
		
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
