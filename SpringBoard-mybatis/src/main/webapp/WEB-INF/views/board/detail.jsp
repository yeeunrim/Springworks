<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>KHIT | BOARD DETAIL</title>
<link rel="stylesheet" href="/resources/css/style.css">
<script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/aa24b12773.js" crossorigin="anonymous"></script>
</head>
<body>
	<div id="content">
		<h1><a href="/">KHIT EX.MYBATIS</a></h1>
		<div id="boarddetail">
			<h4>Detail</h4>
			<table id="boarddetail_tbl">
				<tr>
					<td class="boarddetail_blk">
						${board.boardTitle}
					</td>
				</tr>
				<tr>
					<td class="boarddetail_blk">
						${board.userId}
					</td>
				</tr>
				<tr>
					<td class="boarddetail_blk">
						<fmt:formatDate pattern="yyyy-MM-dd aa hh:mm" value="${board.createdTime}"/>
						&nbsp;&nbsp;
						조회수 ${board.hit}
					</td>
				</tr>
				<tr>
					<td class="boarddetail_blk">
						${board.boardContent}
					</td>
				</tr>
				<c:if test="${not empty board.updatedTime}">
					<tr>
						<td class="boarddetail_blk">
							<c:set var="update_time" value="${(now.time - board.updatedTime.time) / 1000}" />
							<c:choose>
					            <c:when test="${update_time < 60}">
					                <fmt:formatNumber pattern="##" value="${update_time}" />초 전 수정
					            </c:when>
					            <c:when test="${update_time < 3600}">
					                <fmt:formatNumber pattern="##" value="${update_time / 60}" />분 전 수정
					            </c:when>
					            <c:when test="${update_time < 86400}">
					                <fmt:formatNumber pattern="##" value="${update_time / 3600}" />시간 전 수정
					            </c:when>
					        </c:choose>
						</td>
					</tr>
				</c:if>
				<tr>
					<td colspan="2">
						<div id="boarddetail_menu">
							<a href="/board/paging?page=${page}"><button class="boarddetail_btn">목록</button></a>
							<c:if test="${board.userId eq sessionId}">
								<a href="/board/update?id=${board.id}"><button class="boarddetail_btn">수정</button></a>
								<a href="/board/delete?id=${board.id}" onclick="alert('정말로 삭제하시겠습니까?')"><button class="boarddetail_btn">삭제</button></a>
							</c:if>
						</div>
					</td>
				</tr>
			</table>
			
			<!-- 댓글 -->
			<div id="reply">
				<h5 id="reply_word">댓글</h5>
				<!-- 댓글 목록 -->
				<div id="reply_list">
					<c:forEach items="${replyList}" var="reply">
						<h5 id="reply_word2">${reply.replyer}</h5>
						<p>${reply.replyContent}</p>
						<p id="reply_date">
							<fmt:formatDate pattern="yyyy-MM-dd aa hh:mm" value="${reply.createdTime}" />&nbsp;&nbsp;&nbsp;
							<c:if test="${not empty reply.updatedTime}">
								<span class="boarddetail_blk" style="float: right;">
									<c:set var="update_time" value="${(now.time - reply.updatedTime.time) / 1000}" />
									<c:choose>
							            <c:when test="${update_time < 60}">
							                <fmt:formatNumber pattern="##" value="${update_time}" />초 전 수정
							            </c:when>
							            <c:when test="${update_time < 3600}">
							                <fmt:formatNumber pattern="##" value="${update_time / 60}" />분 전 수정
							            </c:when>
							            <c:when test="${update_time < 86400}">
							                <fmt:formatNumber pattern="##" value="${update_time / 3600}" />시간 전 수정
							            </c:when>
							        </c:choose>
						       	</span>
							</c:if>
						</p>
						<p id="reply_menu">
							<a href="/reply/update?boardId=${board.id}&id=${reply.id}">수정</a> |
							<a href="/reply/delete?boardId=${board.id}&id=${reply.id}" 
								onclick="return confirm('정말로 삭제하시겠습니까?')">삭제</a>
						</p>
					</c:forEach>
				</div>
				<c:choose>
					<c:when test="${not empty sessionId}">
						<!-- 댓글 등록 -->
						<input type="hidden" id="boardId" name="boardId" value="${board.id}">
						<div id="reply_blk">
							<input type="text" id="replyer"  name="replyer" class="reply_area" value="${sessionId}" readonly>
							<textarea rows="2" cols="50" id="replyContent" name="replyContent" placeholder="댓글을 작성해주세요." class="reply_area" id="replyContent"></textarea>
							<button type="submit" class="reply_btn" onclick="replyInsert()">등록</button>
						</div>
					</c:when>
					<c:when test="${empty sessionId}">
						<div id="reply_login">
							<a href="/user/login">
								<i class="fa-regular fa-user" style="color: #919191;"></i>
								&nbsp;&nbsp;로그인한 사용자만 댓글 작성이 가능합니다.
							</a>
						</div>
					</c:when>
				</c:choose>
			</div>
		</div>
	</div>
	
	<script>
		const replyInsert = function() {
			// alert("댓글 등록");
			// 댓글 등록이 비어있으면 "댓글을 입력해주세요"
			// 댓글 내용이 있으면 서버에 전송
			let boardId = "${board.id}";
			let replyer = document.getElementById("replyer").value;
			let content = document.getElementById("replyContent").value;
			
			if(content == ""){
				alert("댓글을 입력해주세요.");
				document.getElementById("content").focus();
				return false;
			}
			
			// ajax 구현
			$.ajax({
				// 요청 방식 : POST, 요청 주소 : /reply/insert
				type : "POST",
				url : "/reply/insert",
				data : {
					boardId : boardId,
					replyer : replyer,
					replyContent : content
				},
				success : function(replyList){
					console.log("댓글 등록 성공");
					console.log(replyList);
					// 댓글 목록
					let output = "";
					for(let i in replyList){
						output += "<div class='reply'>";
						output += "<p id='reply_word2'>" + replyList[i].replyer + "</p>";
						output += "<p>" + replyList[i].replyContent + "</p>";
						output += "<p>" + replyList[i].createdTime + "</p>";
						output += "</div>";
					}
					document.getElementById("reply_list").innerHTML = output;
					document.getElementById("replyContent").value = "";
				},
				error : function(){
					console.log("댓글 등록 실패");
				}
			});
		}
	</script>
</body>
</html>