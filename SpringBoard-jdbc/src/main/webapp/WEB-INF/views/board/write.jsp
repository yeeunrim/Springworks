<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SpringBoard-jdbc | 글 작성</title>
<link rel="stylesheet" href="/resources/css/style.css">
</head>
<body>
	<div id="content">
		<h2>Content</h2>
		<form action="/board/write" method="post">
			<table id="write_tbl">
				<tr>
					<td>
						<input type="text" name="boardTitle" class="input_blk" placeholder="title" required>
					</td>
				</tr>
				<tr>
					<td>
						<input type="text" name="boardWriter" class="input_blk" value="${sessionId}" readonly>
					</td>
				</tr>
				<tr>
					<td>
						<textarea rows="20" cols="50" name="boardContent" class="input_blk"  placeholder="content" required></textarea>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="reset" value="RESET" class="input_btn">
						<input type="submit" value="SUBMIT" class="input_btn">
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>