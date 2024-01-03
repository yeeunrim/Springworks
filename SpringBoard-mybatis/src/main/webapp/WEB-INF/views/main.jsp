<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>KHIT | MAIN</title>
<link rel="stylesheet" href="/resources/css/style.css">
</head>
<body>
	<c:if test="${empty sessionId}">
		<script>
			alert("로그인 후, 이용이 가능합니다.");
			location.href = "/user/login";
		</script>
	</c:if>
	
	<jsp:include page="layout/header.jsp"></jsp:include>
	
	<div id="main">
  		<img src="/resources/images/snow.jpg" alt="스노우" width="100%">
		<div id="main_notice">
	   		<h3>Dear&nbsp;<span id="wel_id">${sessionId}</span>, Nice to meet you :D</h3>
	   		<p id="main_btns">
	   			<button onclick="update()" class="logout_btn">회원정보 수정</button>
	   			<button onclick="delete()" class="logout_btn">회원 탈퇴</button>	   			
	   			<button onclick="logout()" class="logout_btn">로그아웃</button>
	   		</p>
		</div>
  	</div>
   
   <script>
   		const logout = () => {
   			location.href = "/user/logout";
   		}
   		
   		const update = () => {
   			location.href = "/user/update";
   		}
   </script>
</body>
