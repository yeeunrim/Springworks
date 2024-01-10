<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MEMBERS | LOGIN</title>
<style>
	.content{margin-left: 30px;}
</style>
</head>
<body>
	<div class="content">
		<h2>로그인</h2>
		<form action="/member/login" method="post">
			<p>
				<input type="text" name="email" placeholder="이메일">
			</p>
			<p>
				<input type="password" name="password" placeholder="비밀번호">
			</p>
			<p>
				<input type="submit" value="로그인">
				<input type="reset" value="취소">
			</p>
		</form>
	</div>
</body>
</html>