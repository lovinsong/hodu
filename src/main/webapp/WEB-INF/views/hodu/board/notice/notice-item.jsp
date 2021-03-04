<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
	<head>
		<title>호두 클래스</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">		
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/hodu.css" />
		<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">	
	</head>
	<body class="is-preload homepage">
	
		<div id="page-wrapper">
		
			<!-- Header -->
				<div id="header-wrapper">
					<header id="header2" class="container">
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
									<li>
										<span class="material-icons" style="hover:none;">&nbsp;manage_search&nbsp;</span>																		
										<ul>																													 
											<li>
											<div class="guideBox">					
											  <p>
											
											<a href="#"><span class="textbtn" id="textbtn">지역/시간 별 클래스 검색</span></a></p>
											
											</div>
											</li>											
										</ul>
									</li>
								</ul>
							</nav>
					</header>
				</div>
				

											<div class="guideBox">					
											  <p><span class="textbtn" style="cursor:pointer;">지역/시간 별 클래스 검색</span></p>
												<div style="display:none" id="hidden_area">					 
												    <div>
												      <dl>
												        <dd>
												          <select id="a" name="지역">
												            <option value="a1">A1</option>
												            <option value="a2">A2</option>
												            <option value="a3">A3</option>
												          </select>
												        </dd>
												      </dl>
												    </div>					 
												  </div>
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
											    <h2 class="title_line">[방문교육] 당신의 반려견을 모두에게 사랑받는 명견으로!</h2>
													<p class="price_line">&nbsp;￦ <strong>27,000</strong>&nbsp;</p>
													<p>|</p>												
													<p> 보호자 자택 </p>
													<p>|</p>
													<p> 원데이 </p>
													<p class="profile"><img src="/project/resources/profile/pic01.jpg" alt="" /><br>다람쥐 멘토</p>
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
												<h2 class="title_line">[온라인] 자바(JAVA)프로그래밍! 고수의 코딩! 입문자 수강생 맞춤 강의!</h2>
													<p class="price_line">&nbsp;￦ <strong>20,000</strong>&nbsp;</p>
													<p>|</p>														
													<p>온라인 LIVE</p>	
													<p>|</p>
													<p> 다회차 </p>													
													<p class="profile"><img src="/project/resources/profile/pic02.jpg" alt="" /><br>다람쥐 멘토</p>												
											<div id = "notice_review_star" class ="notice_review_star">
												<a>★${dto.notice_review_star }(${reviewCount })</a>
											</div>											
											</header>
										</div>
									</section>

							</div>
							<div class="col-4 col-12-medium">

									<section class="box feature">
										<a href="#" class="image featured"><img src="/project/resources/thumbnail/pic10.jpg" alt="" /></a>
										<div class="inner">
											<header>
												<h2 class="title_line">[느루라탄] 시간을 들여 천천히, 라탄 원형수납통 만들기</h2>
												<p class="price_line">&nbsp;￦ <strong>20,000</strong>&nbsp;</p>
												<p>|</p>													
												<p>강남 · 서초</p>
												<p>|</p>
												<p> 원데이 </p>													
												<p class="profile"><img src="/project/resources/profile/pic03.jpg" alt="" /><br>다람쥐 멘토</p>													
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
											<h2 class="title_line">[온라인] 2시간 동안 타로를 배워 점을 칠 수 있다구요?</h2>
											<p class="price_line">&nbsp;￦ <strong>25,000</strong>&nbsp;</p>
											<p>|</p>												
											<p>영등포</p>	
											<p>|</p>
											<p> 원데이 </p>											
											<p class="profile"><img src="/project/resources/profile/pic04.jpg" alt="" /><br>다람쥐 멘토</p>	
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
										<h2 class="title_line">[미디클래스] 노트북과 핸드폰만으로 음악 유튜브 해보자!</h2>
										<p class="price_line">&nbsp;￦ <strong>30,000</strong>&nbsp;</p>
										<p>|</p>											
										<p>용산 · 잠실</p>	
										<p>|</p>
										<p> 다회차 </p>										
										<p class="profile"><img src="/project/resources/profile/pic05.jpg" alt="" /><br>다람쥐 멘토</p>	
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
											<h2 class="title_line">[1:1 수업] 7년차 롱보더에게 배우는 롱보드 4회만에 트릭부터 댄싱까지!</h2>
											<p class="price_line">&nbsp;￦ <strong>60,000</strong>&nbsp;</p>
											<p>|</p>												
											<p>신촌 · 홍대</p>
											<p>|</p>
											<p> 다회차 </p>																						
											<p class="profile"><img src="/project/resources/profile/pic06.jpg" alt="" /><br>다람쥐 멘토</p>
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
										<h2 class="title_line">셀프 네일도 샵에서 한 것처럼!! 기초부터 탄탄하게</h2>
										<p class="price_line">&nbsp;￦ <strong>25,000</strong>&nbsp;</p>
										<p>|</p>											
										<p>혜화 · 일산</p>
										<p>|</p>
										<p> 원데이 </p>											
										<p class="profile"><img src="/project/resources/profile/pic07.jpg" alt="" /><br>다람쥐 멘토</p>
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
										<h2 class="title_line">[온라인] 대세 판단과 주식 잘 사고 파는 법</h2>
										<p class="price_line">&nbsp;￦ <strong>30,000</strong>&nbsp;</p>
										<p>|</p>											
										<p>온라인 LIVE</p>	
										<p>|</p>
										<p> 다회차 </p>											
										<p class="profile"><img src="/project/resources/profile/pic08.jpg" alt="" /><br>다람쥐 멘토</p>
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
										<h2 class="title_line">[원데이:베이킹] 고급진 케잌 만들기 도전!!</h2>
										<p class="price_line">&nbsp;￦ <strong>30,000</strong>&nbsp;</p>
										<p>|</p>											
										<p>제주</p>
										<p>|</p>
										<p> 원데이 </p>												
										<p class="profile"><img src="/project/resources/profile/pic09.jpg" alt="" /><br>다람쥐 멘토</p>
									<div id = "notice_review_star" class ="notice_review_star">
										<a>★${dto.notice_review_star }(${reviewCount })</a>
									</div>											
									</header>
								</div>
							</section>

					</div>	
					<div class="col-4 col-12-medium">

							<section class="box feature">
								<a href="#" class="image featured"><img src="/project/resources/thumbnail/pic11.jpg" alt="" /></a>
								<div class="inner">
									<header>
										<h2 class="title_line">‘국내 최초 유일’ 150만 팔로워의 실전 틱톡 강의</h2>
										<p class="price_line">&nbsp;￦ <strong>45,000</strong>&nbsp;</p>
										<p>|</p>											
										<p>목동 · 강서</p>
										<p>|</p>
										<p> 원데이 </p>												
										<p class="profile"><img src="/project/resources/profile/pic09.jpg" alt="" /><br>다람쥐 멘토</p>
									<div id = "notice_review_star" class ="notice_review_star">
										<a>★${dto.notice_review_star }(${reviewCount })</a>
									</div>											
									</header>
								</div>
							</section>

					</div>					
				</div>						
			</div>	
			
				<!-- pagination -->		
					<div id="features-wrapper">
						<div class="container">			
							<nav aria-label="page" id="page">
							  <ul class="pagination">
							    <li class="page-item"><a class="page-link" href="#" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li>
							    <li class="page-item"><a class="page-link" href="#">1</a></li>
							    <li class="page-item"><a class="page-link" href="#">2</a></li>
							    <li class="page-item"><a class="page-link" href="#">3</a></li>
							    <li class="page-item"><a class="page-link" href="#" aria-label="Next"><span aria-hidden="true">&raquo;</span></a>
							    </li>
							  </ul>
							</nav>					
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
			<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
			<script>
			
			$(document).on("click","#textbtn",function(){
			      if($("#hidden_area").css("display")=="none"){
			        $("#hidden_area").show();
/* 			        $(this).children("span").text("[닫기]"); */
			      }else{
			        $("#hidden_area").hide();
/* 			        $(this).children("span").text("[열기]"); */
			      }
			});
			
			</script>
			

	</body>
</html>