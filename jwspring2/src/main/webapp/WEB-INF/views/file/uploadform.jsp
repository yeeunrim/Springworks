<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FILE UPLOAD</title>
</head>
<body>
	<form action="/file/upload" method="post" enctype="multipart/form-data">
		<p>
			<input type="file" name="filename">
		</p>
		
		<p>
			<input type="submit" value="전송">
		</p>
		
		<p>저장된 파일 : ${filename}</p>
	</form>
</body>
</html>