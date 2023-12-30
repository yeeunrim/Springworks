<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>KHIT | USER DETAIL</title>
<link rel="stylesheet" href="/resources/css/style.css">
</head>
<body>
	<div id="content">
		<h1><a href="/">KHIT EX.MYBATIS</a></h1>
		<div id="userdetail">
			<h4>User Detail</h4>
			<table id="detail_tbl">
				<tr>
					<td>
						<label>아이디</label>
						<input type="text" name="userId" class="join_blk" value="${user.userId}" readonly>
					</td>
				</tr>
				<tr>
					<td>
						<label>비밀번호</label>
						<input type="text" name="userPasswd" class="join_blk" value="${user.userPasswd}" readonly>
					</td>
				</tr>
				<tr>
					<td>
						<label>이름</label>
						<input type="text" name="userName" class="join_blk" value="${user.userName}" readonly>
					</td>
				</tr>
				<tr>
					<td>
						<label>나이</label>
						<input type="text" name="userAge" class="join_blk" value="${user.userAge}" readonly>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<button class="detail_btn" onclick="list()">회원 목록으로 되돌아가기</button>
					</td>
				</tr>
			</table>
		</div>
	</div>
	
	<script>
		let list = function(){
			location.href = "/user/";
		}
	</script>
</body>
</html>