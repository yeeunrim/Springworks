<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MEMBERS | UPDATE</title>
<style>
	.content{margin-left: 30px;}
</style>
</head>
<body>
	<div class="content">
		<h2>회원 정보 수정</h2>
		<form action="/member/update" method="post" name="updateform">
			<input type="hidden" name="id" value="${member.id}">
			<p>
				<label>이메일</label>
				<input type="text" name="email" value="${member.email}" readonly>
			</p>
			<p>
				<label>비밀번호</label>
				<input type="text" name="password" value="${member.password}">
			</p>
			<p>
				<label>이름</label>
				<input type="text" name="name" value="${member.name}">
			</p>
			<p>
				<label>나이</label>
				<input type="text" name="age" value="${member.age}">
			</p>
			<p>
				<!-- <input type="button" value="목록" onclick="list()"> -->
				<button type="button" onclick="updateFn()">수정</button>
				<button type="button" onclick="back()">이전</button>
			</p>
		</form>
	</div>
	
	<script>
		const updateFn = function(){
			document.updateform.submit();
		}
		
		const back = function(){
			location.href = "/main";
		}
	</script>
</body>
</html>