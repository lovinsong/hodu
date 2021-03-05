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
<style>

</style>
<body>
	
	<nav class="row navbar no-gutters align-items-center is-guest"><!-- navbar navbar-expand-lg navbar-light bg-light -->
	
		<div class="container-fluid"><!---->
			<a class="navbar-brand" href="#"> 
				<img src="/project/static/hodu.jpg" alt="" width="130" height="50">
			</a>
			

			<c:choose>
				<c:when test="${member != null}">
					<a href="#"><span>카테고리</span></a>
					<a href="#"><span>클래스 찾기</span></a>
					<a href="#"><span>돋보기</span></a>
					
					<div><a href="#"><span>&nbsp;</span></a></div>
					<div><a href="#"><span>&nbsp;</span></a></div>
					<div><a href="#"><span>&nbsp;</span></a></div>
					<div><a href="#"><span>&nbsp;</span></a></div>
					<div><a href="#"><span>&nbsp;</span></a></div>
					<div><a href="#"><span>&nbsp;</span></a></div>
					<div><a href="#"><span>&nbsp;</span></a></div>
					<div><a href="#"><span>&nbsp;</span></a></div>
					<div><a href="#"><span>&nbsp;</span></a></div>
					<div><a href="#"><span>&nbsp;</span></a></div>
					
					<div class="row">
						<div class="col-auto">
							<a href="#"><span>톡</span></a>
						</div>
						<div class="col-auto">
							<a href="#">종모양</a>
						</div>
						<div class="col-auto ">
							<%-- <ul>
							<li><a href="#" id="current">${member.member_name } 고객님</a>
								<ul>
								     <li><span>안녕하세요,${member.member_name }님</span></li>
								     <li><a href="#">받은 견적</a></li>
								     <li><a href="../mypage/mypage">마이페이지</a></li><hr>
								     <li><a href="../account/mentor-reg">멘토로 가입하기</a></li>
								     <li><a href="../account/logout">로그아웃</a></li>
							    </ul>
						    </li>
						    </ul> --%>
						    
						   <nav id="nav">
								<ul>
									<li>
										<a href="#">${member.member_name } 고객님</a>
										<ul>
											<li><span>안녕하세요,${member.member_name }님</span></li>
										    <li><a href="#">수정수정</a></li>
										    <li><a href="../mypage/mypage">마이페이지</a></li><hr>
										    <li><a href="../account/mentor-reg">멘토로 가입하기</a></li>
										    <li><a href="../account/logout">로그아웃</a></li>
										</ul>
									</li>
								</ul>
							</nav> 
						</div>
						
					</div>
				</c:when>
			</c:choose>

			<c:choose>
				<c:when test="${member == null}">
					<div class="row">
						<div class="col-auto">
							<a href="#"><span>클래스찾기</span></a>
						</div>
						<div class="col-auto">
							<a href="../account/mentor-reg">멘토가입</a>
						</div>
						<div class="col-auto">
							<a href="../account/join">회원가입</a>
						</div>
						<div class="col-auto">
							<a href="../account/login">로그인</a>
						</div>
					</div>
				</c:when>
			</c:choose>
		</div>
	</nav>
	<hr>

	<script src="${pageContext.request.contextPath}/resources/assets/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/jquery.dropotron.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/browser.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/breakpoints.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/util.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/main.js"></script>
			

</body>
</html>