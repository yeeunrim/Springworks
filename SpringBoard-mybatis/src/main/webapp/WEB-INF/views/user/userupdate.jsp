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
		<h1><a href="/">KHIT EX.MYBATIS</a></h1>
		<div id="userdetail">
			<h4>My Info</h4>
			<form action="/user/update" method="post">
				<input type="hidden" name="id" value="${user.id}">
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
							<input type="text" name="userPasswd" class="join_blk" value="${user.userPasswd}">
						</td>
					</tr>
					<tr>
						<td>
							<label>이름</label>
							<input type="text" name="userName" class="join_blk" value="${user.userName}">
						</td>
					</tr>
					<tr>
						<td>
							<label>나이</label>
							<input type="text" name="userAge" class="join_blk" value="${user.userAge}">
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<button type="reset" class="userupdate_btn">취소</button>
							<button type="submit" class="userupdate_btn">수정</button>
							<a href="/user/delete?id=${user.id}"><button onclick="alert('정말로 탈퇴하시겠습니까?')" class="userupdate_btn">탈퇴</button></a>
						</td>
					</tr>
				</table>
			</form>
		</div>
	</div>
</body>
</html>