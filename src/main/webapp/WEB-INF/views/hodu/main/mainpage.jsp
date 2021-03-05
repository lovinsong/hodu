<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome Hodu</title>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.5.0/css/all.css"
	integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU"
	crossorigin="anonymous">
<style>
.material-icons {
	font-size: 65px; body ,html{ height : 100%;
	width: 100%;
	margin: 0;
	padding: 0;
	background: #e74c3c !important;
}
.searchbar {
	margin-bottom: auto;
	margin-top: auto;
	height: 60px;
	background-color: #353b48;
	border-radius: 30px;
	padding: 10px;
}

.search_input {
	color: white;
	border: 0;
	outline: 0;
	background: none;
	width: 0;
	caret-color: transparent;
	line-height: 40px;
	transition: width 0.4s linear;
}

.searchbar:hover>.search_input {
	padding: 0 10px;
	width: 450px;
	caret-color: red;
	transition: width 0.4s linear;
}

.searchbar:hover>.search_icon {
	background: white;
	color: #e74c3c;
}

.search_icon {
	height: 40px;
	width: 40px;
	float: right;
	display: flex;
	justify-content: center;
	align-items: center;
	border-radius: 50%;
	color: white;
	text-decoration: none;
}
</style>
</head>
<body>
	<!-- footer 파일 포함 코드 -->
	<%@ include file="../headerfooter/hoduheader.jsp"%>
	<!-- 로그인 하지 않은 상태 -->
	<c:if test="${member == null }">
		<div class="login_button">
			<a href="../account/login">로그인</a>
		</div>
		<span><a href="../account/join">회원가입</a></span>
	</c:if>

	<!-- 로그인 한 상태 -->
	<c:if test="${member != null }">
		<div class="login_success_area">
			<span>회원 : ${member.member_name}</span> <span>닉네임 :
				${member.member_nickname}</span> <span>충전금액 : <fmt:formatNumber
					value="${member.member_cash }" pattern="#,###.## 호두" /></span> <a
				href="../mypage/mypage">마이페이지</a> <a href="../account/logout">로그아웃</a>

		</div>
	</c:if>

	<div class="p-3"></div>
	<!-- 공백 주기 -->
	<div class="container">
		<div class="p-3"></div>
		<div class="container bg-dark">
			<div class="p-5"></div>
			<div class="p-5"></div>
			<div class="p-5"></div>
			<div class="row">
				<div class="col-md-1"></div>
				<div class="col-md-3"><p style="font-size:30px;">어떤 서비스가 필요하세요?<p></div>
				<div class="col-md-2"></div>
				<div class="col-md-2"></div>
				<div class="col-md-2"></div>
				<div class="col-md-3"></div>
			</div>
			
			<div class="row">
			<div class="col-md-1"></div>
    			<div class="col-md-5">
    <div class="mx-auto mt-1 search-bar input-group mb-4 width: 100px">
      <input name="q" type="text" class="form-control rounded-pill" placeholder="취미 입력" aria-label="Recipient's username" aria-describedby="button-addon2">
      <div class="input-group-append">
      </div>
    </div>
    	</div>
				<div class="col-md-1"></div>
				<div class="col-md-1"></div>
				<div class="col-md-2"></div>
				<div class="col-md-3"></div>
    </div>
			<div class="row">
				<div class="col-md-1"></div>
				<div class="col-md-1">
					<span class="material-icons"> grade </span>
				</div>
				&nbsp; &nbsp;
				<div class="col-md-1">
					<span class="material-icons"> fitness_center </span>
				</div>
				&nbsp; &nbsp;
				<div class="col-md-1">
					<span class="material-icons"> roofing </span>
				</div>
				&nbsp; &nbsp;
				<div class="col-md-1">
					<span class="material-icons"> camera_enhance </span>
				</div>
				<div class="col-md-2"></div>
				<div class="col-md-2"></div>
				<div class="col-md-3"></div>
			</div>
			<div class="row">
				<div class="col-md-1"></div>
				<div class="col-md-1">
					<span class="material-icons"> local_atm </span>
				</div>
				&nbsp; &nbsp;
				<div class="col-md-1">
					<span class="material-icons"> monitor </span>
				</div>
				&nbsp; &nbsp;
				<div class="col-md-1">
					<span class="material-icons"> photo_camera_front </span>
				</div>
				&nbsp; &nbsp;
				<div class="col-md-1">
					<span class="material-icons"> g_translate </span>
				</div>
				<div class="col-md-2"></div>
				<div class="col-md-2"></div>
				<div class="col-md-3"></div>
			</div>
				<div class="p-5"></div>
				<div class="p-5"></div>
				<div class="p-5"></div>
				<div class="p-5"></div>
				<div class="p-5"></div>
				<div class="p-5"></div>
				<div class="p-5"></div>
				<div class="p-5"></div>
				<div class="p-5"></div>
				<div class="p-5"></div>
				<div class="p-5"></div>
				<div class="p-5"></div>
				<div class="p-5"></div>
				<div class="p-5"></div>
				<div class="p-5"></div>
				<div class="p-5"></div>

		</div>
	</div>

	<div class="p-5"></div>
	<div class="p-5"></div>






	<!-- footer 파일 포함 코드 -->
	<%@ include file="../headerfooter/hodufooter.jsp"%>
</body>
</html>

