<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>KHIT | REPLY UPDATE</title>
<link rel="stylesheet" href="/resources/css/style.css">
</head>
<body>
	<div id="content">
		<h1><a href="/">KHIT EX.MYBATIS</a></h1>
		<div id="boarddetail">
			<h4>Reply Update</h4>
			<!-- 댓글 -->
			<form action="/reply/update" method="post" id="reply">
				<input type="hidden" name="boardId" value="${reply.boardId}">
				<input type="hidden" name="id" value="${reply.id}">
				<h5 id="reply_word">댓글 수정</h5>
				<div id="reply_blk">
					<input type="text" name="replyer" class="reply_area" value="${sessionId}" readonly>
					<textarea rows="3" cols="50" name="replyContent" class="reply_area" id="replyContent">${reply.replyContent}</textarea>
					<button type="submit" class="reply_btn">저장</button>
				</div>
			</form>
		</div>
	</div>
</body>
</html>