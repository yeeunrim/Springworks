<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SpringBoard-jdbc | 글 상세보기</title>
<link rel="stylesheet" href="/resources/css/style.css">
</head>
<body>
	<div id="content">
		<h2>Content Detail</h2>
		<table id="write_tbl">
			<tr>
				<td>
					<input type="text" name="boardTitle" class="input_blk" value="${board.boardTitle}" readonly>
				</td>
			</tr>
			<tr>
				<td>
					<input type="text" name="boardWriter" class="input_blk" value="${board.boardWriter}" readonly>
				</td>
			</tr>
			<tr>
				<td>
					<textarea rows="20" cols="50" name="boardContent" class="input_blk" readonly>${board.boardContent}</textarea>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<a href="/board/list"><button class="input_btn">LIST</button></a>
					<c:if test="${board.boardWriter eq sessionId}">
						<a href="/board/delete?id=${board.id}"><button class="input_btn" onclick="return confirm('정말로 삭제하시겠습니까 ?')">DELETE</button></a>
						<a href="/board/update?id=${board.id}"><button class="input_btn">UPDATE</button></a>
					</c:if>
				</td>
			</tr>
		</table>
	</div>
</body>
</html>