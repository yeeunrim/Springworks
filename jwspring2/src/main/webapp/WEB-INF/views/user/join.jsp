<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 폼</title>
</head>
<body>
	<h2>회원 가입</h2>
	<form action="/user/join" method="post">
		<p>
			<label>이름</label>
			<input type="text" name="name" placeholder="이름">
		</p>
		<p>
			<label>나이</label>
			<input type="text" name="age" placeholder="나이">
		</p>
		<p><input type="submit" value="가입하기"></p>
	</form>
</body>
</html>