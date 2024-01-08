<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TO-DO | REGISTER</title>
</head>
<body>
	<div class="container-fluid">
		<jsp:include page="../layout/header.jsp" />
		
		<!-- 등록 -->
		<div class="row content">
			<div class="col">
				<div class="card">
					<div class="card-body">
						<form action="/todo/register" method="post">
							<div class="input-group mb-3">
								<span class="input-group-text">할 일</span>
								<input type="text" name="title" class="form-control" placeholder="Title">
							</div>
							<div class="input-group mb-3">
								<span class="input-group-text">작성자</span>
								<input type="text" name="writer" class="form-control" placeholder="Writer">
							</div>
							<p>
								<input type="submit" class="btn btn-success" value="전송">
								<input type="reset" class="btn btn-secondary" value="취소">
							</p>
						</form>
					</div>
				</div>
			</div>
		</div>
		
		<jsp:include page="../layout/footer.jsp" />
	</div>
</body>
</html>