<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SpringBoard-jdbc | 글 목록</title>
<link rel="stylesheet" href="/resources/css/style.css">
</head>
<body>
	<c:if test="${empty sessionId}">
		<script>
			alert("로그인 후, 이용이 가능합니다.");
			location.href = "/user/login";
		</script>
	</c:if>
	<div id="content">
		<h2>Board</h2>
		<div id="list_wel">
			Welcome, Thank you for <span id="wel_id">${sessionId}</span>&nbsp;:D&nbsp;&nbsp;
			<a href="/user/logout">Logout</a>
		</div>
		<table id="list_tbl">
			<thead>
				<tr>
					<th>NO</th>
					<th>TITLE</th>
					<th>WRITER</th>
					<th>CREATE DATE</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${boardList}" var="board">
					<tr>
						<td>${board.id}</td>
						<td><a href="/board?id=${board.id}">${board.boardTitle}</a></td>
						<td>${board.boardWriter}</td>
						<td>${board.createTime}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<div id="list_write">
			<a href="/board/write"><button class="list_btn">WRITE</button></a>
		</div>
	</div>
</body>
</html>