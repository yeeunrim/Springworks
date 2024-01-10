<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MEMBERS | JOIN</title>
<style>
	.content{margin-left: 30px;}
</style>
</head>
<body>
	<div class="content">
		<h2>회원 가입</h2>
		<form action="/member/join" method="post">
			<p>
				<input type="text" name="email" placeholder="이메일">
			</p>
			<p>
				<input type="password" name="password" placeholder="비밀번호">
			</p>
			<p>
				<input type="text" name="name" placeholder="이름">
			</p>
			<p>
				<input type="text" name="age" placeholder="나이">
			</p>
			<p>
				<input type="submit" value="가입">
				<input type="reset" value="취소">
			</p>
		</form>
	</div>
</body>
</html>