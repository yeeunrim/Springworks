<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MEMBERS | JOIN</title>
<script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
<style>
	.content{margin-left: 30px;}
</style>
</head>
<body>
	<div class="content">
		<h2>회원 가입</h2>
		<form action="/member/join" method="post">
			<p>
				<input type="text" name="email" id="email" onblur="checkEmail()" placeholder="이메일">
			</p>
			<p id="check-result"></p>
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
	
	<script>
		// 이메일 입력값을 가져오고, 
		// ajax() -> 입력값을 서버(컨트롤러)로 전송
		// 이메일이 체크된 후, 사용 가능 여부를 아래에 표시
		const checkEmail = function(){
			let inputEmail = document.getElementById("email").value;
			let checkResult = document.getElementById("check-result");
			console.log("이메일 : ", email);
			
			$.ajax({
				// 요청방식, url, data, 함수(성공, 실패)
				type : "POST",
				url : "/member/checkemail",
				data : {
					email : inputEmail,
				},
				success : function(res){
					console.log("성공", res);
					if(res == "OK"){
						checkResult.innerHTML = "사용 가능한 이메일입니다.";	
						checkResult.style.color = "blue";
					} else {
						checkResult.innerHTML = "이미 가입된 이메일입니다.";	
						checkResult.style.color = "red";
					}
				},
				error : function(err){
					console.log("실패", err);   
				}
			});
		};
	</script>
</body>
</html>