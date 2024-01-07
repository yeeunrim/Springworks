<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>KHIT | ERROR</title>
<link rel="stylesheet" href="/resources/css/style.css">
</head>
<body>
	<jsp:include page="../layout/header.jsp"></jsp:include>
	
	<div id="error">
		<h2>페이지에 오류가 발생했습니다.</h2>
		<h4>${exception.getMessage()}</h4>
	</div>
</body>
</html>