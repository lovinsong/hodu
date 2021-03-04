<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://code.jquery.com/jquery-3.4.1.js"
	integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
	crossorigin="anonymous">
	
</script>
<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl"
	crossorigin="anonymous">

</head>

<body>

	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container-fluid">
			<a class="navbar-brand" href="#"> <img
				src="/project/static/hodu.jpg" alt="" width="130" height="50">
			</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<c:choose>
				<c:when test="${member != null}">
					<ul id="nav-top" class="nav navbar-nav navbar-right">
						<li><input type="button" value="클래스찾기"></li>
						<li><input type="button" value="클래스찾기"></li>
						<li><input type="button" value="클래스찾기"></li>
						<li><input type="button" onclick = "location.href='../account/logout'" value="로그아웃"></li>
					</ul>
				</c:when>
			</c:choose>

			<c:choose>
				<c:when test="${member == nulld}">
					<div class="row">
						<div class="col-3">
							<input type="button" value="클래스찾기">
						</div>
						<div class="col-3">
							<input type="button" value="멘토가입">
						</div>
						<div class="col-3">
							<input type="button" onclick="location.href='../account/join'" value="회원가입">
						</div>
						<div class="col-3">
							<input type="button" onclick="location.href='../account/login'" id="loginbtn" value="로그인">
						</div>
					</div>
				</c:when>
			</c:choose>
		</div>
	</nav>
	<hr>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0"
		crossorigin="anonymous"></script>

</body>
<script>
</script>
</html>