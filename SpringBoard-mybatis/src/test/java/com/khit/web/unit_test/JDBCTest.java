package com.khit.web.unit_test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import org.junit.Test;

import lombok.extern.slf4j.Slf4j;

@Slf4j
public class JDBCTest {
	
	@Test
	public void testConnection() {
		String className="com.mysql.cj.jdbc.Driver";
		String url="jdbc:mysql://localhost:3306/springdb?serverTime=Asia/Seoul";
		String username="springuser";
		String password="pwspring";
		
		try {
			Class.forName(className);
			Connection conn = DriverManager.getConnection(url, username, password);
			
			log.info("db 연결 객체 생성 : " + conn);
			conn.close();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
}
