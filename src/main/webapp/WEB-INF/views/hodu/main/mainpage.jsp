<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome Hodu</title>
</head>
<style>
@charset "UTF-8";

* {
	margin: 0;
	padding: 0;
} /* 화면 전체 렙 */
.wrapper {
	width: 1900px;
} /* content 랩 */
.wrap {
	width: 1080px;
	margin: auto;
} /* 홈페이지 기능 네비 */
.top_gnb_area {
	width: 100%;
	height: 50px;
	background-color: #a2a2ea;
} /* 로고, 검색, 로그인 */
.top_area {
	width: 100%;
	height: 150px; /* background-color: #f7f0b9; */
} /* 로고 영역 */
.logo_area {
	width: 25%;
	height: 100%;
	background-color: red;
	float: left;
} /* 검색 박스 영역 */
.search_area {
	width: 50%;
	height: 100%;
	background-color: yellow;
	float: left;
} /* 로그인 버튼 영역 */
.login_area {
	width: 25%;
	height: 100%;
	display: inline-block;
	text-align: center;
}

.login_button {
	height: 50%;
	background-color: #D4DFE6;
	margin-top: 30px;
	line-height: 77px;
	font-size: 40px;
	font-weight: 900;
	border-radius: 10px;
	cursor: pointer;
}

.login_area>span {
	margin-top: 10px;
	font-weight: 900;
	display: inline-block;
}

.login_button {
	height: 50%;
	background-color: #D4DFE6;
	margin-top: 30px;
} /* 제품 목록 네비 */
.navi_bar_area {
	width: 100%;
	height: 70px;
	background-color: #7696fd;
} /* 홈페이지 메인 제품 목록 */

.content_area {
	width: 100%;
	background-color: #97ef97;
	height: 1000px;
}

	/* 로그인 성공 영역 */
.login_success_area { height : 62%;
	width: 80%;
	border: 2px solid #7474ad;
	border-radius: 15px;
	margin: 5% auto;
	padding-top: 5%;
}

.login_success_area>span {
	display: block;
	text-align: left;
	margin-left: 10%;
}

.login_success_area>a{
    font-size: 15px;
    font-weight: 900;
    display: inline-block;
    margin-top: 5px;
    background: #e1e5e8;
    width: 82px;
    height: 22px;
    line-height: 22px;
    border-radius: 25px;
    color: #606267;    
}

/* float 속성 해제 */
.clearfix {
	clear: both;
}
</style>
<body>
	<div class="wrapper">
		<div class="wrap">
			<div class="top_gnb_area">
				<h1>gnb area</h1>
			</div>
			<div class="top_area">
				<div class="logo_area">
					<h1>logo area</h1>
				</div>
				<div class="search_area">
					<h1>Search area</h1>
				</div>
				<div class="login_area">
				
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
							<span>회원 : ${member.member_name}</span>
							<span>닉네임 : ${member.member_nickname}</span>
							<span>충전금액 : <fmt:formatNumber value="${member.member_cash }" pattern="\#,###.## 호두"/></span>
							<a href="../mypage/mypage">마이페이지</a>
							<a href="../account/logout">로그아웃</a>

						</div>
					</c:if>
					
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="navi_bar_area">
				<h1>navi area</h1>
			</div>
			<div class="content_area">
				<h1>content area</h1>
			</div>
		</div>
	</div>
</body>
</html>

