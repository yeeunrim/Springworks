<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TO-DO | LIST</title>
</head>
<body>
	<div class="container-fluid">
		<jsp:include page="../layout/header.jsp" />
		
		<!-- 등록 -->
		<div class="row content">
			<div class="col">
				<div class="card">
					<div class="card-body">
						<h5 class="card-title">TO-DO List</h5>
						<table class="table">
							<thead>
								<tr>
									<th>번호</th>
									<th>제목</th>
									<th>작성자</th>
									<th>작성일</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${todoList}" var="todo">
									<tr>
										<td>${todo.tno}</td>
										<td>${todo.title}</td>
										<td>${todo.writer}</td>
										<td><fmt:formatDate pattern="yyyy-MM-dd aa hh:mm" value="${todo.createdDate}"/></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
		
		<jsp:include page="../layout/footer.jsp" />
	</div>
</body>
</html>