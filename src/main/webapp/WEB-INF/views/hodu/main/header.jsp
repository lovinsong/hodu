<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>

<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets_headfoot/css/header.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets_detail/css/font-awesome.min.css">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Iceland&display=swap" rel="stylesheet">

</head>

<body>

<header class="main-header clearfix" role="header">


<!------------------------------------------------------- 왼쪽 ------------------------------------------------------------------------->
<div class="logo">
	<a href="${pageContext.request.contextPath}/hodu/main/mainpage"><em>HO</em>DU</a>
</div>


<!-- 반응형일 때 -->
<a href="#menu" class="menu-link"><i class="fa fa-bars"></i></a>


<!------------------------------------------------------- 로그아웃 상태 ------------------------------------------------------------------------->

<c:choose>
	<c:when test="${member == null}">
	
		<nav id="menu_left" class="main-nav" role="navigation">
			<ul class="main-menu" style="float: left;">
				<!-- 왼쪽에 넣을 메뉴 공간 -->
			</ul>
		</nav>

		<nav id="menu" class="main-nav" role="navigation">
			<ul class="main-menu">
				<li><a href="${pageContext.request.contextPath}/hodu/board/item/item-category">클래스 찾기</a></li>
				<li><a href="${pageContext.request.contextPath}/hodu/account/login">로그인</a></li>
				<li><a href="${pageContext.request.contextPath}/hodu/account/join">회원가입</a></li>
			</ul>
		</nav>

	</c:when>
</c:choose>

<!--------------------------------------------------------- 로그인 상태 ------------------------------------------------------------------------->

<c:choose>
	<c:when test="${member != null}">

	<nav id="menu_left" class="main-nav" role="navigation">
		<ul class="main-menu" style="float: left;">
			<!-- 왼쪽에 넣을 메뉴 공간 -->
		</ul>
	</nav>

		<nav id="menu">
		
			<ul class="main-menu">

				<li class="has-submenu">
				
					<!-- 프로필 이미지 & 회원 이름 --><!--이미지 엑박 안뜨게 하는코드: onerror="this.style.display='none'" -->
					<img id="profile_img" src="/project/upload/member/${member.member_img}" onerror="this.src='${pageContext.request.contextPath}/resources/assets/image/profile_default.png';"> <a href="#" id="member_name">${member.member_name } 회원님</a>


						<!-- 프로필 터치 시 나오는 메뉴 -->
						<ul class="sub-menu" id="profile_menu">
	
							<li><a href="${pageContext.request.contextPath}/hodu/util/chargehodu">보유 호두 : <fmt:formatNumber value="${member.member_cash }" pattern="#,###.## 호두" /> </a></li>
							
							<c:choose>
								<c:when test="${member.hodu_manager eq 'Y'}"> <li><a href="${pageContext.request.contextPath}/hodu/mypage/managerpage" class="list_mypage">관리자 페이지</a></li> </c:when>
								<c:otherwise> <li><a href="${pageContext.request.contextPath}/hodu/mypage/mypage" class="list_mypage">마이페이지</a></li> </c:otherwise>
							</c:choose>
							
							<c:if test="${member.mentor_enable eq 'N'}"> <li id="list_mentor"><a href="${pageContext.request.contextPath}/hodu/account/mentor-reg">멘토 가입하기</a></li> </c:if>
							
							<li id="list_logout"><a href="${pageContext.request.contextPath}/hodu/account/logout">로그아웃</a></li>
	
						</ul>
				</li>
				
			</ul>
		</nav>

	</c:when>
</c:choose>

	</header>

<hr id="header_hr" style="width: 100%;">

</body>

<script src="${pageContext.request.contextPath}/resources/vendor/jquery/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/assets_headfoot/js/custom.js"></script>

</body>
</html>