<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>아이디찾기 결과창</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>
<body>
	<div class="container" align="center">
		<br><br><br>
		<h2>검색결과</h2>
		<hr><br>
		<div class="form-group">
			<b class="col-sm-2 ">&nbsp;&nbsp;&nbsp;아이디:</b>
			<div class="col-sm-5 d-inline-block">
				<div class="form-control">${member.id}</div>
			</div>
		</div>
		<div class="form-group">
			<b class="col-sm-2 ">가입날짜:</b>
			<div class="col-sm-5 d-inline-block">
				<div class="form-control">${member.regist_day}</div>
			</div>
		</div>
		<br><br>
		<a href="javascript:history.back()" class="btn btn-primary">뒤로가기</a>
		<a href="findPw" class="btn btn-success">비밀번호찾기</a>
	</div>
</body>
</html>