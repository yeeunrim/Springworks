<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>KHIT | USER UPDATE</title>
<link rel="stylesheet" href="/resources/css/style.css">
</head>
<body>
	<div id="content">
		<h2>User Update</h2>
		<table id="join_tbl">
			<tr>
				<td>
					<label>Id</label>
					<input type="text" name="userId" class="join_blk" value="${user.userId}" readonly>
				</td>
			</tr>
			<tr>
				<td>
					<label>Password</label>
					<input type="text" name="userPasswd" class="join_blk" value="${user.userPasswd}">
				</td>
			</tr>
			<tr>
				<td>
					<label>Name</label>
					<input type="text" name="userName" class="join_blk" value="${user.userName}" readonly>
				</td>
			</tr>
			<tr>
				<td>
					<label>Age</label>
					<input type="text" name="userAge" class="join_blk" value="${user.userAge}">
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<button class="input_btn" onclick="list()">COMPLETE</button>
				</td>
			</tr>
		</table>
	</div>
	
	<script>
		let list = function(){
			location.href = "/user/";
		}
	</script>
</body>
</html>