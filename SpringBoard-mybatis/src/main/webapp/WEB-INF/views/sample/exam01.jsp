<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SAMPLE EXAMPLE | MODEL</title>
<style>
	h2{text-align: center; font-family: Lucida Grande;}
</style>
</head>
<body>
	<h2>
		현재 시간 : 
		<fmt:formatDate pattern="yyyy-MM-dd aa hh:mm:ss" value="${serverTime}"/>
	</h2>
</body>
</html>