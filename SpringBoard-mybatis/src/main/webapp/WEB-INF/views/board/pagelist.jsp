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
<script src="https://kit.fontawesome.com/aa24b12773.js" crossorigin="anonymous"></script>
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
							<td><a href="/board?id=${board.id}&page=${paging.page}">${board.boardTitle}</a></td>
							<td>${board.userId}</td>
							<td><fmt:formatDate pattern="yyyy-MM-dd aa hh:mm" value="${board.createdTime}"/></td>
							<td>${board.hit}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			
			<!-- 페이지 처리 -->
			<div id="pagination">
				<!-- 이전 페이지 -->
				<c:choose>
					<c:when test="${paging.page <= 1}">
					   <span><i class="fa-solid fa-caret-left" style="color: #444444;"></i></span>
					</c:when>
					<c:otherwise>
					   <a href="/board/paging?page=${paging.page-1}"><i class="fa-solid fa-caret-left" style="color: #444444;"></i></a>
					</c:otherwise>
				</c:choose>
				<!-- 현재 페이지 -->
				<c:forEach var="i" begin="${paging.startPage}" end="${paging.endPage}">
					<a href="/board/paging?page=${i}" id="page_num ${paging.page eq i ? 'active' : ''}">${i}</a>
				</c:forEach>
			    <!-- 다음 페이지 -->
				<c:choose>
					<c:when test="${paging.page >= paging.maxPage}">
					   <span><i class="fa-solid fa-caret-right" style="color: #444444;"></i></span>
					</c:when>
					<c:otherwise>
					   <a href="/board/paging?page=${paging.page + 1}"><i class="fa-solid fa-caret-right" style="color: #444444;"></i></a>
					</c:otherwise>
				</c:choose>
			</div>
			
			<div id="list_write">
				<a href="/board/write"><button class="write2_btn">글 작성</button></a>
			</div>
		</div>
	</div>
</body>
</html>