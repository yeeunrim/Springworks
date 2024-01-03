<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>KHIT | BOARD DETAIL</title>
<link rel="stylesheet" href="/resources/css/style.css">
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
						${board.createdTime}
					</td>
				</tr>
				<tr>
					<td class="boarddetail_blk">
						${board.boardContent}
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<div id="boarddetail_menu">
							<a href="/board/"><button class="boarddetail_btn">목록</button></a>
							<a href="/board/"><button class="boarddetail_btn">수정</button></a>
							<a href="/board/"><button class="boarddetail_btn">삭제</button></a>
						</div>
					</td>
				</tr>
			</table>
		</div>
	</div>
</body>
</html>