<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
	<head>
		<title>호두 클래스</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/hodu.css" />
	</head>
	<body class="is-preload homepage">
		<div id="page-wrapper">

			<!-- Header -->
				<div id="header-wrapper">
					<header id="header" class="container">
	
						<!-- Nav -->
							<nav id="nav">
								<ul>
									<li>
										<a href="#">☆인기</a>
										<ul>
											<li><a href="#">퍼스널컬러</a></li>
											<li><a href="#">마케팅</a></li>
											<li><a href="#">켈리그라피</a></li>
											<li><a href="#">영어회화</a></li>
										</ul>
									</li>
									<li>
										<a href="#">뷰티/헬스</a>
										<ul>
											<li><a href="#">메이크업</a></li>
											<li><a href="#">퍼스널컬러</a></li>
											<li><a href="#">패션</a></li>
											<li><a href="#">방송댄스</a></li>			
											<li><a href="#">스포츠/레저</a></li>																																
										</ul>
									</li>
									<li>
										<a href="#">홈/리빙</a>
										<ul>
											<li><a href="#">반려동물</a></li>
											<li><a href="#">인테리어</a></li>
											<li><a href="#">요리</a></li>
											<li><a href="#">부모/육아</a></li>																						
										</ul>
									</li>
									<li>
										<a href="#">취미/공예</a>
										<ul>
											<li><a href="#">사진</a></li>
											<li><a href="#">미술/목공/공예</a></li>
											<li><a href="#">음악</a></li>
											<li><a href="#">조향/캔들/비누</a></li>											
										</ul>
									</li>
									<li>
										<a href="#">머니</a>
										<ul>
											<li><a href="#">투잡</a></li>
											<li><a href="#">마케팅/창업</a></li>
											<li><a href="#">주식 투자</a></li>
											<li><a href="#">부동산/금융</a></li>											
										</ul>
									</li>
									<li>
										<a href="#">IT/커리어</a>
										<ul>
											<li><a href="#">취업/이직</a></li>
											<li><a href="#">엑셀/파워포인트</a></li>
											<li><a href="#">웹개발</a></li>
											<li><a href="#">자격증 시험</a></li>											
										</ul>
									</li>
									<li>
										<a href="#">디자인/영상</a>
										<ul>
											<li><a href="#">UX/UI</a></li>
											<li><a href="#">그래픽</a></li>
											<li><a href="#">건축/제품</a></li>
											<li><a href="#">영상</a></li>											
										</ul>
									</li>
									<li>
										<a href="#">외국어</a>
										<ul>
											<li><a href="#">영어</a></li>
											<li><a href="#">중국어</a></li>
											<li><a href="#">일본어</a></li>
											<li><a href="#">기타 외국어</a></li>											
										</ul>
									</li>
									<li class="current">&emsp;<a href="#">🔍</a>
										<ul>
											<li><a href="#">&nbsp; 지역/시간 별로 검색하기</a></li>
										</ul>
									</li>
								</ul>
							</nav>
					</header>
				</div>
				
				<hr>

			<!-- Features -->
				<div id="features-wrapper">
					<div class="container">
						<div class="row">
							<div class="col-4 col-12-medium">

									<section class="box feature">
										<a href="#" class="image featured"><img src="/project/resources/thumbnail/pic01.jpg" alt="" /></a>
										<div class="inner">
											<header>
												<h2>[당신의 반려견을 모두에게 사랑받는 명견으로!]</h2>
													<p>￦27,000 </p>												
													<p> 보호자 자택 </p>
													<p class="profile"><img src="/project/resources/image/mentor.jpg" alt="" /></p>
											 	<div id = "notice_review_star" class ="notice_review_star">
													<a>★${dto.notice_review_star }(${reviewCount })</a>
												</div>																							
											</header>											
										</div>
									</section>

							</div>
							<div class="col-4 col-12-medium">

									<section class="box feature">
										<a href="#" class="image featured"><img src="/project/resources/thumbnail/pic02.jpeg" alt="" /></a>
										<div class="inner">
											<header>
												<h2>현업 개발자에게서 듣는 자바(JAVA)뽀개기!!</h2>
													<p>￦20,000</p>
													<p>부천</p>	
													<p class="profile"><img src="/project/resources/image/mentor.jpg" alt="" /></p>												
											<div id = "notice_review_star" class ="notice_review_star">
												<a>★${dto.notice_review_star }(${reviewCount })</a>
											</div>											
											</header>
										</div>
									</section>

							</div>
							<div class="col-4 col-12-medium">

									<section class="box feature">
										<a href="#" class="image featured"><img src="/project/resources/thumbnail/pic03.jpg" alt="" /></a>
										<div class="inner">
											<header>
												<h2>[원데이:도자기] 도란도란 물레 체험</h2>
												<p>￦20,000</p>
												<p>부천</p>	
												<p class="profile"><img src="/project/resources/image/mentor.jpg" alt="" /></p>													
											<div id = "notice_review_star" class ="notice_review_star">
												<a>★${dto.notice_review_star }(${reviewCount })</a>
											</div>											
											</header>
										</div>
									</section>

							</div>
							<div class="col-4 col-12-medium">

								<section class="box feature">
									<a href="#" class="image featured"><img src="/project/resources/thumbnail/pic04.jpg" alt="" /></a>
									<div class="inner">
										<header>
											<h2>[원데이/온라인] 2시간 동안 타로를 배워 점을 칠 수 있다구요?</h2>
											<p>￦25,000</p>
											<p>부천</p>	
											<p class="profile"><img src="/project/resources/image/mentor.jpg" alt="" /></p>	
										<div id = "notice_review_star" class ="notice_review_star">
											<a>★${dto.notice_review_star }(${reviewCount })</a>
										</div>											
										</header>
									</div>
								</section>

							</div>
							<div class="col-4 col-12-medium">

							<section class="box feature">
								<a href="#" class="image featured"><img src="/project/resources/thumbnail/pic05.jpg" alt="" /></a>
								<div class="inner">
									<header>
										<h2>[미디클래스] 노트북과 핸드폰만으로 음악 유튜브 해보자!</h2>
										<p>￦30,000</p>
										<p>수원</p>	
										<p class="profile"><img src="/project/resources/image/mentor.jpg" alt="" /></p>	
									<div id = "notice_review_star" class ="notice_review_star">
										<a>★${dto.notice_review_star }(${reviewCount })</a>
									</div>											
									</header>
								</div>
							</section>

							</div>
							<div class="col-4 col-12-medium">

								<section class="box feature">
									<a href="#" class="image featured"><img src="/project/resources/thumbnail/pic06.jpg" alt="" /></a>
									<div class="inner">
										<header>
											<h2>[1:1 수업] 7년차 롱보더에게 배우는 롱보드 4회만에 트릭부터 댄싱까지!</h2>
											<p>￦60,000</p>
											<p>부산</p>	
											<p class="profile"><img src="/project/resources/image/mentor.jpg" alt="" /></p>
										<div id = "notice_review_star" class ="notice_review_star">
											<a>★${dto.notice_review_star }(${reviewCount })</a>
										</div>											
										</header>
									</div>
								</section>

						</div>
						<div class="col-4 col-12-medium">

							<section class="box feature">
								<a href="#" class="image featured"><img src="/project/resources/thumbnail/pic07.jpg" alt="" /></a>
								<div class="inner">
									<header>
										<h2>혼자서도 할 수 있어요 셀프네일도 샵에서한것처럼!! 기초부터 탄탄하게</h2>
										<p>￦25,000</p>
										<p>구로</p>	
										<p class="profile"><img src="/project/resources/image/mentor.jpg" alt="" /></p>
									<div id = "notice_review_star" class ="notice_review_star">
										<a>★${dto.notice_review_star }(${reviewCount })</a>
									</div>											
									</header>
								</div>
							</section>

						</div>
						<div class="col-4 col-12-medium">

							<section class="box feature">
								<a href="#" class="image featured"><img src="/project/resources/thumbnail/pic08.jpg" alt="" /></a>
								<div class="inner">
									<header>
										<h2>대세 판단과 주식 잘 사고 파는 법</h2>
										<p>￦30,000</p>
										<p>노원</p>	
										<p class="profile"><img src="/project/resources/image/mentor.jpg" alt="" /></p>
									<div id = "notice_review_star" class ="notice_review_star">
										<a>★${dto.notice_review_star }(${reviewCount })</a>
									</div>											
									</header>
								</div>
							</section>

						</div>
						<div class="col-4 col-12-medium">

							<section class="box feature">
								<a href="#" class="image featured"><img src="/project/resources/thumbnail/pic09.jpg" alt="" /></a>
								<div class="inner">
									<header>
										<h2>[원데이/케잌만들기] 고급진 케잌 만들기 도전!!</h2>
										<p>￦30,000</p>
										<p>덕소</p>
										<p class="profile"><img src="/project/resources/image/mentor.jpg" alt="" /></p>
									<div id = "notice_review_star" class ="notice_review_star">
										<a>★${dto.notice_review_star }(${reviewCount })</a>
									</div>											
									</header>
								</div>
							</section>

						</div>						
					</div>
				</div>
			</div>
		</div>
		
		

		<!-- Scripts -->

			<script src="${pageContext.request.contextPath}/resources/assets/js/jquery.min.js"></script>
			<script src="${pageContext.request.contextPath}/resources/assets/js/jquery.dropotron.min.js"></script>
			<script src="${pageContext.request.contextPath}/resources/assets/js/browser.min.js"></script>
			<script src="${pageContext.request.contextPath}/resources/assets/js/breakpoints.min.js"></script>
			<script src="${pageContext.request.contextPath}/resources/assets/js/util.js"></script>
			<script src="${pageContext.request.contextPath}/resources/assets/js/main.js"></script>

	</body>
</html>