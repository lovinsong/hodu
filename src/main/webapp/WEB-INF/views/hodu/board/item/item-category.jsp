<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE HTML>

<%@ include file="/WEB-INF/views/hodu/main/header.jsp"%>

<html>
	<head>
		<title>호두 클래스</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" >
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
										<a href="/project/hodu/board/item/item-category">☆인기</a>
										<ul>
											<li><a href="#">퍼스널컬러</a></li>
											<li><a href="#">마케팅</a></li>
											<li><a href="#">켈리그라피</a></li>
											<li><a href="#">영어회화</a></li>
										</ul>
									</li>
									<li>
										<a href="/project/hodu/board/item/item-category?item_type=뷰티/헬스">뷰티/헬스</a>
										<ul>
											<li><a href="#">메이크업</a></li>
											<li><a href="#">퍼스널컬러</a></li>
											<li><a href="#">패션</a></li>
											<li><a href="#">방송댄스</a></li>			
											<li><a href="#">스포츠/레저</a></li>																																
										</ul>
									</li>
									<li>
										<a href="/project/hodu/board/item/item-category?item_type=홈/리빙">홈/리빙</a>
										<ul>
											<li><a href="#">반려동물</a></li>
											<li><a href="#">인테리어</a></li>
											<li><a href="#">요리</a></li>
											<li><a href="#">부모/육아</a></li>																						
										</ul>
									</li>
									<li>
										<a href="/project/hodu/board/item/item-category?item_type=취미/공예">취미/공예</a>
										<ul>
											<li><a href="#">사진</a></li>
											<li><a href="#">미술/목공/공예</a></li>
											<li><a href="#">음악</a></li>
											<li><a href="#">조향/캔들/비누</a></li>											
										</ul>
									</li>
									<li>
										<a href="/project/hodu/board/item/item-category?item_type=머니">머니</a>
										<ul>
											<li><a href="#">투잡</a></li>
											<li><a href="#">마케팅/창업</a></li>
											<li><a href="#">주식 투자</a></li>
											<li><a href="#">부동산/금융</a></li>											
										</ul>
									</li>
									<li>
										<a href="/project/hodu/board/item/item-category?item_type=IT/커리어">IT/커리어</a>
										<ul>
											<li><a href="#">취업/이직</a></li>
											<li><a href="#">엑셀/파워포인트</a></li>
											<li><a href="#">웹개발</a></li>
											<li><a href="#">자격증 시험</a></li>											
										</ul>
									</li>
									<li>
										<a href="/project/hodu/board/item/item-category?item_type=디자인/영상">디자인/영상</a>
										<ul>
											<li><a href="#">UX/UI</a></li>
											<li><a href="#">그래픽</a></li>
											<li><a href="#">건축/제품</a></li>
											<li><a href="#">영상</a></li>											
										</ul>
									</li>
									<li>
										<a href="/project/hodu/board/item/item-category?item_type=외국어">외국어</a>
										<ul>
											<li><a href="#">영어</a></li>
											<li><a href="#">중국어</a></li>
											<li><a href="#">일본어</a></li>
											<li><a href="#">기타 외국어</a></li>											
										</ul>
									</li>
									<li>
									<div class="guideBox" id=""><p>
										<span class="material-icons" id="category-icon">search</span>																											
									</p></div>											
									</li>
								</ul>
							</nav>
					</header>
				</div>
				

											<div class="guideBox">					

												<div style="display:none" id="hidden_area">		
															 
												      <dl>
												        <dd> <span style= "margin-right: 3em;"> 지역 · 도시</span>
												        
												        <div class="btn-group" role="group" aria-label="Basic checkbox toggle button group">
														  <input type="checkbox" class="btn-check" id="btncheck1" autocomplete="off" style="width:120%">
														  <label class="btn btn-outline-primary" for="btncheck1">전체</label>
														
														  <input type="checkbox" class="btn-check" id="btncheck2" autocomplete="off">
														  <label class="btn btn-outline-primary" for="btncheck2">서울</label>
														
														  <input type="checkbox" class="btn-check" id="btncheck3" autocomplete="off">
														  <label class="btn btn-outline-primary" for="btncheck3">경기</label>
														  
														  <input type="checkbox" class="btn-check" id="btncheck4" autocomplete="off">
														  <label class="btn btn-outline-primary" for="btncheck4">인천</label>
														
														  <input type="checkbox" class="btn-check" id="btncheck5" autocomplete="off">
														  <label class="btn btn-outline-primary" for="btncheck5">부산</label>	
														  
														  <input type="checkbox" class="btn-check" id="btncheck6" autocomplete="off">
														  <label class="btn btn-outline-primary" for="btncheck6">제주</label>													
														</div>


												        </dd>
												      </dl>
												      
												      <dl>
												        <dd> <span style= "margin-right: 3em;"> 수업 방식 </span>
												        
												        <div class="btn-group" role="group" aria-label="Basic checkbox toggle button group">
														  <input type="checkbox" class="btn-check" id="btncheck1" autocomplete="off" style="">
														  <label class="btn btn-outline-primary" for="btncheck1">1 : 1 수업</label>
														
														  <input type="checkbox" class="btn-check" id="btncheck2" autocomplete="off">
														  <label class="btn btn-outline-primary" for="btncheck2">온라인 LIVE</label>
														
														  <input type="checkbox" class="btn-check" id="btncheck3" autocomplete="off">
														  <label class="btn btn-outline-primary" for="btncheck3">자택 수업</label>
														  
														  <input type="checkbox" class="btn-check" id="btncheck4" autocomplete="off">
														  <label class="btn btn-outline-primary" for="btncheck4">원데이</label>
														
														  <input type="checkbox" class="btn-check" id="btncheck5" >
														  <label class="btn btn-outline-primary" for="btncheck5">다회차</label>														
														</div>

												        </dd>
												      </dl>
												      
	 
											 </div>  					 
										</div>
					

				
				<hr>

			<!-- Features -->
				<div id="features-wrapper">
					<div class="container">
						<div class="row">
						
						<c:forEach var="dtoitem" items="${dto }">
								<div class="col-4 col-12-medium">
										
									
										<section class="box feature">
											<a href="./item-detail/?item_code=${dtoitem.item_code}" class="image featured"><img src="/project/upload/Thumbnail/${dtoitem.item_thumbnailimg}" alt="" /></a>
											<div class="inner">
												<header>
												    <h2 class="title_line">${dtoitem.item_title }</h2>
														<p class="price_line">&nbsp;<strong>${dtoitem.item_price}</strong>&nbsp;<img src="${pageContext.request.contextPath}/resources/assets/image/hoduC.png" style="width:3.5%; vertical-align: end; "></p>
														<p>|</p>												
														<p> ${fn:length(dtoitem.item_place)  > 7 ? fn:substring(dtoitem.item_place,5,11)  : dtoitem.item_place}</p>
														<p>|</p>
														<p> ${dtoitem.item_one_day == "Y" ? "원데이" : "다회차"} </p>
														<p class="profile"><img src="/project/upload/member/${dtoitem.member_img}" alt="" /><br>${dtoitem.member_nickname} 멘토</p>
												 	<div class ="review_star">
														<a><i class="fa fa-star" style="color:#e31240"></i></a><a>${dtoitem.item_review_star }&nbsp;(${dtoitem.item_like })</a>
													</div>																							
												</header>											
											</div>
										</section>
									
	
								</div>
							</c:forEach>
						</div>					
					</div>						
			
			
				<!-- pagination -->		
	<div id="paginationBox" style="text-align:center; margin-top:3%">

		<ul class="pagination">

			<c:if test="${pagination.prev}">

				<li class="page-item"><a class="page-link" href="#" onClick="fn_prev('${pagination.page}', '${pagination.range}', '${pagination.rangeSize}')">Previous</a></li>

			</c:if>

				

			<c:forEach begin="${pagination.startPage}" end="${pagination.endPage}" var="idx">

				<li class="page-item <c:out value="${pagination.page == idx ? 'active' : ''}"/> "><a class="page-link" href="#" onClick="fn_pagination('${idx}', '${pagination.range}', '${pagination.rangeSize}','${item_type }')"> ${idx} </a></li>

			</c:forEach>

				

			<c:if test="${pagination.next}">

				<li class="page-item"><a class="page-link" href="#" onClick="fn_next('${pagination.range}', '${pagination.range}', '${pagination.rangeSize}')" >Next</a></li>

			</c:if>

		</ul>

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
			<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>
			<script>
			
			$(document).on("click","#category-icon",function(){
				
				
			      if($("#hidden_area").css("display")=="none"){
			        $("#hidden_area").show();
			        $("#category-icon").text("  close  ");			       
			     	$("#category-icon").css('background-color','#f7f7f7');
			        
/*  			     $(this).children("span").text("[닫기]");  */

			      }else{
			        $("#hidden_area").hide();
			        $("#category-icon").text("  search  ");
			        $("#category-icon").css('background-color', 'white');
/* 			        $(this).children("span").text("[열기]");  */
			      }
			});


	        $('.title_line').each(function () {
	            if (this.offsetWidth < this.scrollWidth)
	                $(this).attr('title', $(this).text());
	        });
	

	      //이전 버튼 이벤트
	      function fn_prev(page, range, rangeSize) {

	      		var page = ((range - 2) * rangeSize) + 1;

	      		var range = range - 1;
	      		
	      		var item_type = "${item_type}"

	      		

	      		var url = "${pageContext.request.contextPath}/hodu/board/item/item-category";

	      		url = url + "?page=" + page;

	      		url = url + "&range=" + range;
	      	

	      		

	      		location.href = url;

	      	}



	        //페이지 번호 클릭

	      	function fn_pagination(page, range, rangeSize, searchType, keyword) {

	      		var url = "${pageContext.request.contextPath}/hodu/board/item/item-category";

	      		url = url + "?page=" + page;

	      		url = url + "&range=" + range;
	      		
	      		url = url + "&item_type=" + searchType;


	      		location.href = url;	

	      	}



	      	//다음 버튼 이벤트

	      	function fn_next(page, range, rangeSize) {

	      		var page = parseInt((range * rangeSize)) + 1;

	      		var range = parseInt(range) + 1;

	      		

	      		var url = "${pageContext.request.contextPath}/hodu/board/item/item-category";

	      		url = url + "?page=" + page;

	      		url = url + "&range=" + range;
	      		
	      		url = url + "&item_type=" + item_type;

	      		

	      		location.href = url;

	      	}

	      </script>
<%@ include file="/WEB-INF/views/hodu/main/footer.jsp"%>

	</body>
</html>