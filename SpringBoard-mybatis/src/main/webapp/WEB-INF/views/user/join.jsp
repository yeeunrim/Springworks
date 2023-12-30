<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>KHIT | JOIN</title>
<link rel="stylesheet" href="/resources/css/style.css">
</head>
<body>
	<div id="content">
		<h1><a href="/">KHIT EX.MYBATIS</a></h1>
		<div id="join">
			<h4>Create An Account</h4>
			<p>* 필수입력</p>
			<form action="/user/join" method="post">
				<table id="join_tbl">
					<tr>
						<td>
							<input type="text" name="userId" class="join_blk" placeholder="아이디*" required>
						</td>
					</tr>
					<tr>
						<td>
							<input type="password" name="userPasswd" class="join_blk" placeholder="비밀번호*" required>
						</td>
					</tr>
					<tr>
						<td>
							<input type="text" name="userName" class="join_blk" placeholder="이름* (한글만 입력 가능)" required>
						</td>
					</tr>
					<tr>
						<td>
							<input type="text" name="userAge" class="join_blk" placeholder="나이* (숫자만 입력 가능)" required>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<input type="submit" value="회원가입" class="join_btn">
						</td>
					</tr>
				</table>
			</form>
		</div>
	</div>
</body>
</html>