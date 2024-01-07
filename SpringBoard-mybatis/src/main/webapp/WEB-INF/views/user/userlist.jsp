<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>KHIT | USER LIST</title>
<link rel="stylesheet" href="/resources/css/style.css">
</head>
<body>
	<div id="content">
		<h1><a href="/">KHIT EX.MYBATIS</a></h1>
		<div id="userlist">
			<h4>User List</h4>
			<p>관리자가 관리하는 가입한 회원들의 정보 리스트입니다.</p>
			<table id="list_tbl">
				<tr>
					<th>번호</th>
					<th>아이디</th>
					<th>비밀번호</th>
					<th>이름</th>
					<th>나이</th>
					<th>계정</th>
				</tr>
				<c:forEach items="${userList}" var="user">
					<tr>
						<td>${user.id}</td>
						<td><a href="/user?id=${user.id}">${user.userId}</a></td>
						<td>${user.userPasswd}</td>
						<td>${user.userName}</td>
						<td>${user.userAge}</td>
						<td>
							<a href="/user/delete?id=${user.id}">
							<button class="delete_btn">삭제</button>
						</a>
					</td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</div>
</body>
</html>