<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>KHIT | HOME</title>
<link rel="stylesheet" href="/resources/css/style.css">
</head>
<body>
	<jsp:include page="layout/header.jsp"></jsp:include>
	
	<c:choose>
			<c:when test="${empty sessionId}">
				<div id="index">
					<div id="welcome">
						<p>HELLO, NICE TO MEET YOU :D</p>
					</div>
					<img src="/resources/images/snow.jpg" alt="스노우" width="100%">
				</div>
			</c:when>
			<c:otherwise>
				<div id="main">
					<div id="main_notice">
		   				<h3>Dear&nbsp;<span id="wel_id">${sessionId}</span>, Nice to meet you :D</h3>
					</div>
					<img src="/resources/images/snow.jpg" alt="스노우" width="100%">
				</div>
			</c:otherwise>
		</c:choose>
</body>
</html>