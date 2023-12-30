<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>KHIT | LOGIN</title>
<link rel="stylesheet" href="/resources/css/style.css">
</head>
<body>
	<div id="content">
		<h1><a href="/">KHIT EX.MYBATIS</a></h1>
		<div id="login">
			<h4>Login</h4>
			<form action="/user/login" method="post">
				<table id="join_tbl">
					<tr>
						<td>
							<input type="text" name="userId" class="login_blk" placeholder="아이디" required>
						</td>
					</tr>
					<tr>
						<td>
							<input type="password" name="userPasswd" class="login_blk" placeholder="비밀번호" required>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<input type="submit" value="로그인" class="join_btn">
						</td>
					</tr>
				</table>
			</form>
		</div>
	</div>
</body>
</html>