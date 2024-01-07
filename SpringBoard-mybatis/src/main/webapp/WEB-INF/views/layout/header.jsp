<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>

<header>
	<div id="header">
		<h1><a href="/">KHIT EX.MYBATIS</a></h1>
		<c:choose>
			<c:when test="${empty sessionId}">
				<div id="menu">
		   			<a href="/board/paging">BOARD</a>&nbsp;&nbsp;&nbsp;	
		   			<a href="/board/write">WRITE</a>&nbsp;&nbsp;&nbsp;
		   			<a href="/user/">MEMBER</a>&nbsp;&nbsp;&nbsp;
		   			<a href="/user/join">ACCOUNT</a>&nbsp;&nbsp;&nbsp;	
		   			<a href="/user/login">LOGIN</a>&nbsp;&nbsp;&nbsp;
				</div>
			</c:when>
			<c:otherwise>
				<div id="menu">
		   			<a href="/board/paging">BOARD</a>&nbsp;&nbsp;&nbsp;	
		   			<a href="/board/write">WRITE</a>&nbsp;&nbsp;&nbsp;
		   			<a href="/user/">MEMBER</a>&nbsp;&nbsp;&nbsp;
		   			<a href="/user/update">MYINFO</a>&nbsp;&nbsp;&nbsp;	
		   			<a href="/user/logout">LOGOUT</a>&nbsp;&nbsp;&nbsp;	
				</div>
			</c:otherwise>
		</c:choose>
	</div>
</header>