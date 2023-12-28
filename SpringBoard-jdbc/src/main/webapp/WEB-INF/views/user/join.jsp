<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SpringBoard-jdbc | 회원가입</title>
<link rel="stylesheet" href="/resources/css/style.css">
</head>
<body>
	<div id="content">
		<h2>Account</h2>
		<form action="/user/join" method="post">
			<table id="join_tbl">
				<tr>
					<td>
						<label>Id</label>
						<input type="text" name="userId" class="join_blk" required>
					</td>
				</tr>
				<tr>
					<td>
						<label>Password</label>
						<input type="password" name="userPasswd" class="join_blk" required>
					</td>
				</tr>
				<tr>
					<td>
						<label>Name</label>
						<input type="text" name="userName" class="join_blk" required>
					</td>
				</tr>
				<tr>
					<td>
						<label>Age</label>
						<input type="text" name="userAge" class="join_blk" required>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="reset" value="RESET" class="input_btn">
						<input type="submit" value="JOIN" class="input_btn">
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>