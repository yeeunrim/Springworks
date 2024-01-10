<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ajax-study</title>
<script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
<style>
	.content{
		margin-left: 30px;
	}
</style>
</head>
<body>
	<div class="content">
		<h2>1. GET 요청하기</h2>
		<p><button type="button" onclick="myFunction()">전송</button></p>
	</div>
	
	<script>
		// Ajax는 제이쿼리 라이브러리를 임포트해야하
		// Ajax 함수는 객체로 구성되고 형태는 {key: value}임
		const myFunction = function(){
			// alert("test..!");
			$.ajax({
				// 요청 방식 : GET, 요청 주소 : /ex01, (함수) - 성공, 실패
				type : "GET",
				url : "/ex01",
				success : function(res){ // res는 서버에서 보내주는 자료
					console.log("성공", res);
				},
				error : function(){
					console.log("실패");
				}
			});
		}
	</script>
</body>
</html>