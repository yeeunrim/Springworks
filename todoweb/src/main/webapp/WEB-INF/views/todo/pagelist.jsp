<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TO-DO | PAGE LIST</title>
<script src="https://kit.fontawesome.com/aa24b12773.js" crossorigin="anonymous"></script>
</head>
<body>
	<div class="container-fluid">
		<jsp:include page="../layout/header.jsp" />
		
		<!-- 검색 영역 -->
		<div class="row content">
			<div class="col">
				<div class="card">
					<div class="card-body">
						<h5 class="card-title">Search</h5>
						<form action="/todo/paging" method="get">
							<div class="mb-3">
								<input type="checkbox" name="types" value="t">제목
								<input type="checkbox" name="types" value="w">작성자
								<input type="text" name="keyword" class="form-control">
							</div>
							<div class="mb-3">
								<div class="floot-end">
									<button type="submit" class="btn btn-primary">검색</button>
									<button type="reset" class="btn btn-info">지우기</button>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
		
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
								<c:forEach items="${responseDTO.dtoList}" var="todo">
									<tr>
										<td>${todo.tno}</td>
										<td><a href="/todo?tno=${todo.tno}&page=${responseDTO.page}">${todo.title}</a></td>
										<td>${todo.writer}</td>
										<td><fmt:formatDate pattern="yyyy-MM-dd aa hh:mm" value="${todo.createdDate}"/></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
						
						<!-- 하단 : 페이지 처리 -->
						<div class="d-flex justify-content-center">
							<ul class="pagination flex-wrap">
								<!-- 이전 페이지 -->
								<c:if test="${responseDTO.page > 1}">
									<li class="page-item">
										<a href="/todo/paging?page=${responseDTO.page-1}" class="page-link">
											<i class="fa-solid fa-caret-left" style="color: #444444;"></i>
										</a>
									</li>
								</c:if>
								<c:if test="${responseDTO.prev}">
									<li class="page-item">
										<a href="/todo/paging?page=${responseDTO.startPage-1}" class="page-link">
											<i class="fa-solid fa-backward" style="color: #444444;"></i>
										</a>
									</li>
								</c:if>
								
								<!-- 페이지 번호 -->
								<c:forEach var="num" begin="${responseDTO.startPage}" end="${responseDTO.endPage}">
									<li class="page-item ${responseDTO.page eq num ? 'active' : ''}">
										<a href="/todo/paging?page=${num}" class="page-link">${num}</a>
									</li>
								</c:forEach>
								
								<!-- 다음 페이지 -->
								<c:if test="${responseDTO.page < responseDTO.maxPage}">
									<li class="page-item">
										<a href="/todo/paging?page=${responseDTO.page+1}" class="page-link">
											<i class="fa-solid fa-caret-right" style="color: #444444;"></i>
										</a>
									</li>
								</c:if>
								<c:if test="${responseDTO.next}">
									<li class="page-item">
										<a href="/todo/paging?page=${responseDTO.endPage+1}" class="page-link">
											<i class="fa-solid fa-forward" style="color: #444444;"></i>
										</a>
									</li>
								</c:if>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<jsp:include page="../layout/footer.jsp" />
	</div>
</body>
</html>