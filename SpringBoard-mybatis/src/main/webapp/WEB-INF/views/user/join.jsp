<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>KHIT | JOIN</title>
<link rel="stylesheet" href="/resources/css/style.css">
<script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
</head>
<body>
	<div id="content">
		<h1><a href="/">KHIT EX.MYBATIS</a></h1>
		<div id="join">
			<h4>Create An Account</h4>
			<p id="join_word">* 필수입력</p>
			<form action="/user/join" method="post" name="userform">
				<table id="join_tbl">
					<tr>
						<td>
							<input type="text" name="userId" class="join_blk" id="userId" placeholder="아이디* (4~15자까지 가능)" onblur="checkId()">
							<p id="check_result"></p>
						</td>
					</tr>
					<tr>
						<td>
							<input type="password" name="userPasswd" class="join_blk" id="userPasswd" placeholder="비밀번호* (영문자, 숫자, 특수문자 포함해 8자 이상 가능)" required>
						</td>
					</tr>
					<tr>
						<td>
							<input type="text" name="userName" class="join_blk" id="userName" placeholder="이름* (한글만 입력 가능)">
						</td>
					</tr>
					<tr>
						<td>
							<input type="text" name="userAge" class="join_blk" id="userAge" placeholder="나이* (숫자만 입력 가능)">
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<button onclick="checkUser()" class="join_btn">회원가입</button>
						</td>
					</tr>
				</table>
			</form>
		</div>
	</div>
	
	<script src="../resources/js/validation.js"></script>
</body>
</html>