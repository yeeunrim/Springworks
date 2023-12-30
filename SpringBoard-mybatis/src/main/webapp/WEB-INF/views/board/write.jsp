<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>KHIT | WRITE</title>
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
		<h1><a href="/">KHIT EX.MYBATIS</a></h1>
		<div id="write">
			<h4>Content</h4>
			<form action="/board/write" method="post">
				<table id="write_tbl">
					<tr>
						<td>
							<input type="text" name="boardTitle" class="write_blk" placeholder="글 제목" required>
						</td>
					</tr>
					<tr>
						<td>
							<input type="text" name="boardWriter" class="write_blk" value="${sessionId}" readonly>
						</td>
					</tr>
					<tr>
						<td>
							<textarea rows="20" cols="50" name="boardContent" class="write_blk"  placeholder="내용" required></textarea>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<input type="reset" value="취소" class="write_btn">
							<input type="submit" value="등록" class="write_btn">
						</td>
					</tr>
				</table>
			</form>
		</div>
	</div>
</body>
</html>