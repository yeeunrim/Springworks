<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>KHIT | UPDATE</title>
<link rel="stylesheet" href="/resources/css/style.css">
</head>
<body>
	<div id="content">
		<h1><a href="/">KHIT EX.MYBATIS</a></h1>
		<div id="write">
			<h4>Content Update</h4>
			<form action="/board/update" method="post">
				<input type="hidden" name="id" value="${board.id}">
				<table id="write_tbl">
					<tr>
						<td>
							<input type="text" name="boardTitle" class="write_blk" value="${board.boardTitle}">
						</td>
					</tr>
					<tr>
						<td>
							<input type="text" name="userId" class="write_blk" value="${sessionId}" readonly>
						</td>
					</tr>
					<tr>
						<td>
							<textarea rows="20" cols="50" name="boardContent" class="write_blk">${board.boardContent}</textarea>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<input type="reset" value="취소" class="write_btn">
							<input type="submit" value="수정" class="write_btn">
						</td>
					</tr>
				</table>
			</form>
		</div>
	</div>
</body>
</html>