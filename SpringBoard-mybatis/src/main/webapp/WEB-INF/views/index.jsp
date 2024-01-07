<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>KHIT | HOME</title>
<link rel="stylesheet" href="/resources/css/style.css">
<!-- 파비콘 -->
<link rel="apple-touch-icon" sizes="180x180" href="/resources/images/apple-touch-icon.png">
<link rel="icon" type="image/png" sizes="32x32" href="/resources/images/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="16x16" href="/resources/images/favicon-16x16.png">
<link rel="manifest" href="./favicon_io/site.webmanifest">
</head>
<body>
	<jsp:include page="layout/header.jsp"></jsp:include>
	
	<c:choose>
			<c:when test="${empty sessionId}">
				<div id="welcome">
					<img src="/resources/images/snow.jpg" alt="스노우" width="100%">
					<p>HELLO, NICE TO MEET YOU :D</p>
				</div>
			</c:when>
			<c:otherwise>
				<div id="welcome">
		   			<h3>Dear&nbsp;<span id="wel_id">${sessionId}</span>, Nice to meet you :D</h3>
					<img src="/resources/images/snow.jpg" alt="스노우" width="100%">
				</div>
			</c:otherwise>
		</c:choose>
</body>
</html>