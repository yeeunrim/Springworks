<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>KHIT | BOARD LIST</title>
<link rel="stylesheet" href="/resources/css/style.css">
</head>
<body>
	<%-- <c:if test="${empty sessionId}">
		<script>
			alert("로그인 후, 이용이 가능합니다.");
			location.href = "/user/login";
		</script>
	</c:if> --%>
	
	<div id="content">
		<h1><a href="/">KHIT EX.MYBATIS</a></h1>
		<div id="boardlist">
			<h4>Board</h4>
			<table id="list_tbl">
				<thead>
					<tr>
						<th>번호</th>
						<th>글 제목</th>
						<th>작성자</th>
						<th>작성일</th>
						<th>조회수</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${boardList}" var="board">
						<tr>
							<td>${board.id}</td>
							<td><a href="/board?id=${board.id}">${board.boardTitle}</a></td>
							<td>${board.userId}</td>
							<td><fmt:formatDate pattern="yyyy-MM-dd aa hh:mm" value="${board.createdTime}"/></td>
							<td>${board.hit}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<div id="list_write">
				<a href="/board/write"><button class="write2_btn">글 작성</button></a>
			</div>
		</div>
	</div>
</body>
</html>