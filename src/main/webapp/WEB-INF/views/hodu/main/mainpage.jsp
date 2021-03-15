<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ include file="./header.jsp"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />

<!-- CSS Libraries -->
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/assets_main/lib/slick/slick.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/assets_main/lib/slick/slick-theme.css" rel="stylesheet">

<!-- Template Stylesheet -->
<link href="${pageContext.request.contextPath}/resources/assets_main/css/style.css" rel="stylesheet" />
<link href="${pageContext.request.contextPath}/resources/assets_main/css/main.css" rel="stylesheet" />

<!-- Favicon -->
<link href="${pageContext.request.contextPath}/resources/hodu.ico" rel="icon" />
<link href="${pageContext.request.contextPath}/resources/hodu.ico" rel="shortcut icon" />
<link href="${pageContext.request.contextPath}/resources/assets/favicon.ico" rel="icon" />
<link href="${pageContext.request.contextPath}/resources/assets/favicon.ico" rel="shortcut icon" />

<title>호두 : 생활 서비스 멘토 매칭</title>	
<style>
.cn-title a {
color:white;
}
</style>
</head>



<body class="is-preload">

	<!-- Wrapper -->
		<div id="wrapper">

		<!-- Body -->
			<div id="background">

			<!-- Header -->
				<header id="header" class="alt">
					<span class="logo">
						<img src="${pageContext.request.contextPath}/resources/assets_main/images/hodu.png" alt="" />
					</span> 
				</header>

			<!-- Nav -->
				<nav id="nav">
					<ul>
						<li><a href="#category" class="active">카테고리</a></li>
						<li><a href="#hot">인기 클래스</a></li>
						<li><a href="#new">NEW 클래스</a></li>
						<li><a href="#hodu">호두 100% 이용법</a></li>
					</ul>
				</nav>

			<!-- Main -->
				<div id="main">

					<!-- 카테고리 -->
					<section id="category" class="main">
						<div class="spotlight">
							<div class="content">
								<header class="major">
									<h2><input name="q" type="text" class="form-control rounded-pill" placeholder="키워드로 검색하기" aria-label="Recipient's username" aria-describedby="button-addon2"></h2>
								</header>

								<ul class="actions">
									<li><a href="/project/hodu/board/item/item-category"><i class="fab fa-hotjar"></i></a></li>
									<li><a href="/project/hodu/board/item/item-category?item_type=뷰티/헬스"><i class="fa fa-dumbbell"></i></a></li>
									<li><a href="/project/hodu/board/item/item-category?item_type=홈/리빙"><i class="fa fa-home"></i></a></li>
									<li><a href="/project/hodu/board/item/item-category?item_type=취미/공예"><i class="fa fa-palette"></i></a></li>
								</ul>	
								<ul class="actions">
									<li><a href="/project/hodu/board/item/item-category?item_type=머니"><i class="fa fa-hand-holding-usd"></i></a></li>
									<li><a href="/project/hodu/board/item/item-category?item_type=IT/커리어"><i class="fa fa-keyboard"></i></a></li>
									<li><a href="/project/hodu/board/item/item-category?item_type=디자인/영상"><i class="fab fa-youtube"></i></a></li>
									<li><a href="/project/hodu/board/item/item-category?item_type=외국어"><i class="fa fa-globe-americas"></i></a></li>
								</ul>

							</div>
							
							<span class="auto_images">
								<div class="auto_pic">
									<div class="images">
										<div class="img">
											<img src="${pageContext.request.contextPath}/resources/assets_main/images/move1.png" alt="" class="auto_img">
											<img src="${pageContext.request.contextPath}/resources/assets_main/images/move2.png" alt="" class="auto_img">
											<img src="${pageContext.request.contextPath}/resources/assets_main/images/move3.png" alt="" class="auto_img">
											<img src="${pageContext.request.contextPath}/resources/assets_main/images/move4.png" alt="" class="auto_img">
											<img src="${pageContext.request.contextPath}/resources/assets_main/images/move5.png" alt="" class="auto_img">										
										</div>
									</div>
								</div>					
							</span>

						</div>
					</section>

					<!-- 인기 클래스 -->
					<section id="hot" class="main special">
						<header class="major">
							<h2>인기 클래스</h2>
							<p></p>
						</header>

						<!-- 사진 슬라이드 -->
						<div class="cat-news">
							<div class="news">
								<div class="row">
									<div class="col-md-6">
										<h6>원데이</h6>
										<div class="row cn-slider">
										<c:forEach var="op1" items="${oneday_pop }">
											<div class="col-md-6">
												<div class="cn-img">
													<img src="/project/upload/Thumbnail/${op1.item_thumbnailimg}" />
													<div class="cn-title">
														<a href="/project/hodu/board/item/item-detail/?item_code=${op1.item_code}" style="color: white;">${op1.item_title }</a>
													</div>
												</div>
											</div>
										</c:forEach>
										</div>
									</div>
									<div class="col-md-6">
										<h6>다회차</h6>
										<div class="row cn-slider">
										
										<c:forEach var="op2" items="${days_pop }">
											<div class="col-md-6">
												<div class="cn-img">
													<img src="/project/upload/Thumbnail/${op2.item_thumbnailimg}" />
													<div class="cn-title">
														<a href="/project/hodu/board/item/item-detail/?item_code=${op2.item_code}" style="color: white;">${op2.item_title }</a>
													</div>
												</div>
											</div>
										</c:forEach>

										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- Category News End-->

						<footer class="major"></footer>
					</section>

					<!-- NEW 클래스 -->
					<section id="new" class="main special">
						<header class="major">
							<h2>NEW 클래스</h2>
							<p></p>
						</header>

						<!-- 사진 슬라이드 -->
						<div class="cat-news">
							<div class="news">
								<div class="row">
									<div class="col-md-6">
										<h6>원데이</h6>
										<div class="row cn-slider">
										
											<c:forEach var="op3" items="${oneday_new }">
												<div class="col-md-6">
													<div class="cn-img">
														<img src="/project/upload/Thumbnail/${op3.item_thumbnailimg}" />
														<div class="cn-title">
															<a href="/project/hodu/board/item/item-detail/?item_code=${op3.item_code}" style="color: white;">${op3.item_title }</a>
														</div>
													</div>
												</div>
											</c:forEach>
											
										</div>
									</div>
									<div class="col-md-6">
										<h6>다회차</h6>
										<div class="row cn-slider">
										
										<c:forEach var="op4" items="${days_new }">
											<div class="col-md-6">
												<div class="cn-img">
													<img src="/project/upload/Thumbnail/${op4.item_thumbnailimg}" />
													<div class="cn-title">
														<a href="/project/hodu/board/item/item-detail/?item_code=${op4.item_code}" style="color: white;">${op4.item_title }</a>
													</div>
												</div>
											</div>
										</c:forEach>

										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- Category News End-->


						<footer class="major"></footer>
					</section>

					<!-- 사용법 -->
					<section id="hodu" class="main special">
						<header class="major">
							<h2>호두 서비스 소개</h2>
						</header>
						<ul class="features">
							<li>
								<span class="icon solid major style1 fa-search"></span>
								<h3>원하는 클래스 찾기</h3>
								<p>원하는 '카테고리'를 선택하시면 관련된 서비스 목록만 확인하실 수 있습니다. '필터 기능'을 이용하시면 보다 구체적인 조건으로 분류된 서비스를 찾아보실 수 있습니다.</p>
							</li>
							<li>
								<span class="icon major style1 fa-question-circle"></span>
								<h3>호두에 문의하는 방법</h3>
								<p>서비스 이용 중 문의 사항은 호두 문의하기 (02-1234-1234, 1:1 문의)로 접수하실 수 있습니다. </p>
							</li>
							<li>
								<span class="icon major style1 fa-credit-card"></span>
								<h3>안전하고 편리한 거래</h3>
								<p>거래가 시작되는 시점부터 완료되는 시점까지 멘토의 클래스를 정한 후 '구매 확정' 하시면 마이페이지에 보관되어 있던 호두 캐쉬가 멘토에게 전달됩니다.</p>
							</li>
						</ul>
						<footer class="major"></footer>
					</section>

				</div>

			</div>

		</div>
	

		<!-- Scripts -->
		<script src="${pageContext.request.contextPath}/resources/assets_main/js/jquery.min.js"></script>
		<script src="${pageContext.request.contextPath}/resources/assets_main/js/jquery.scrollex.min.js"></script>
		<script src="${pageContext.request.contextPath}/resources/assets_main/js/jquery.scrolly.min.js"></script>
		<script src="${pageContext.request.contextPath}/resources/assets_main/js/browser.min.js"></script>
		<script src="${pageContext.request.contextPath}/resources/assets_main/js/breakpoints.min.js"></script>
		<script src="${pageContext.request.contextPath}/resources/assets_main/js/util.js"></script>
		<script src="${pageContext.request.contextPath}/resources/assets_main/js/main.js"></script>

		
		<!-- 자동 슬라이드 -->
		<script type="module" id="auto">
		
				var indexValue = 0;
				function slideShow(){
				  setTimeout(slideShow, 1500);
				  var x;
				  const img = document.querySelectorAll(".auto_img");				  
				  for(x = 0; x < img.length; x++){
					img[x].style.display = "none";
				  }
				  indexValue++;
				  if(indexValue > img.length){indexValue = 1}
				  img[indexValue -1].style.display = "block";
				}
				slideShow();
				
		</script>		
		
	
		
		<!-- 사진 슬라이드 -->
		<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
		<script src="${pageContext.request.contextPath}/resources/assets_main/lib/easing/easing.min.js"></script>
		<script src="${pageContext.request.contextPath}/resources/assets_main/lib/slick/slick.min.js"></script>
		<script src="${pageContext.request.contextPath}/resources/assets_main/js/main2.js"></script>
		
		<ul class="actions">
			<li>
				<a style="display:scroll;position:fixed;bottom:20px;right:20px; font-size:60%" href="#" title=”top"><i class="fas fa-arrow-up" style="color:gray"></i></a>
			</li>
		</ul>


<%@ include file="./footer.jsp"%>
	</body>
</html>

