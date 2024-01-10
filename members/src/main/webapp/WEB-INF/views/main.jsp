<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<title>MEMBERS | MAIN</title>
<style>
	.content{margin-left: 30px;}
</style>
</head>
<body>
	<div class="content">
		<h2>${sessionEmail}님, 환영합니다 !</h2>
		<h4><button type="button" onclick="update()">내 정보 수정</button></h4>
		<h4><button type="button" onclick="logout()">로그아웃</button></h4>
		<h4><button type="button" onclick="index()">홈</button></h4>
	</div>
	
	<script>
		let index = function(){
			location.href = "/";
		}
		
		let logout = function(){
			location.href = "/member/logout";
		}
	</script>
</body>
</html>