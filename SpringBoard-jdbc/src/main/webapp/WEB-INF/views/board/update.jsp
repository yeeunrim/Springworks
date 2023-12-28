<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SpringBoard-jdbc | 글 수정하기</title>
<link rel="stylesheet" href="/resources/css/style.css">
</head>
<body>
	<div id="content">
		<h2>Content Update</h2>
		<form action="/board/update" method="post">
		<input type="hidden" name="id" value="${board.id}">
			<table id="write_tbl">
				<tr>
					<td>
						<input type="text" name="boardTitle" class="input_blk" value="${board.boardTitle}">
					</td>
				</tr>
				<tr>
					<td>
						<input type="text" name="boardWriter" class="input_blk" value="${board.boardWriter}" readonly>
					</td>
				</tr>
				<tr>
					<td>
						<textarea rows="20" cols="50" name="boardContent" class="input_blk">${board.boardContent}</textarea>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<button type="submit" class="input_btn">UPDATE</button>
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>