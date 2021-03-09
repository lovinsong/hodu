<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
	<head>
	    <title>클래스 하나 누르면 이게 나옴</title>
	    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />       
	    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets_detail/css/item-detail.css">
	</head>
<body>
<div id="features-wrapper">    
    <div id="main-wrapper">
        <div class="container">
            <div class="row">        
        
<!----------------------------------------------------  제    목  ------------------------------------------------------------>


            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 templatemo-content-wrapper" id = "content_top">
                <div class="templatemo-content">   
                    <div class="content_info">
                       
                        <!-- 가격 -->
                        <p style="background-color:#f7f7f7; border-radius: 6px; border: 1px solid; border-style: thin; border-color: #eee;">&nbsp;&nbsp;<strong>${dto.item_price }</strong> <img src="${pageContext.request.contextPath}/resources/assets/image/hoduC.png" style="width:3%; vertical-align: top; margin-top:-3px">&nbsp;&nbsp;</p>
                        <p>|</p>	
                        
                        <!-- 장소 -->
                        <p>${fn:length(dto.item_place)  > 7 ? fn:substring(dto.item_place,5,11)  : dto.item_place}</p>
                        <p>|</p>
                        
                        <!-- 원데이 OR 다회차 -->
                        <p>${dto.item_one_day == "Y" ? "원데이" : "다회차"}</p>
                        
                        <!-- 별점 -->
                        <p id= "content_star"><i class="fa fa-star" style="color:#e31240"></i>${dto.item_review_star }&nbsp;(${dto.item_like })</p>

                    </div>  


                    <div class="content_title">

                        <!-- 클래스 제목 -->
                        <h1>${dto.item_title }</h1>

                        <br><hr style="width: 108%; margin-left: -3.5%;">
                    </div>                   

                </div>
            </div>
        </div><!-- 제목 부분 끝 -->
  

<!----------------------------------------------------  메    뉴  ------------------------------------------------------------>


        <div class="navbar navbar-default" role="navigation" id="menu_buttons">               
            <div class="container-fluid">
                
                <!-- 버튼 -->
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="#templatemo-page1"><i class="fa fa-camera"></i>PHOTO</a></li>
                        <li><a href="#templatemo-page2"><i class="fa fa-user"></i>멘토 소개</a></li>
                        <li><a href="#templatemo-page3"><i class="fa fa-book"></i>수업 소개</a></li>
                        <li><a href="#templatemo-page4"><i class="fa fa-thumbs-o-up"></i>추천 대상</a></li>
                        <li><a href="#templatemo-page5"><i class="fa fa-tasks"></i>진행 방식</a></li>
                        <li><a href="#templatemo-page6"><i class="fa fa-comment"></i>리뷰</a></li>
                    </ul>
                </div>

                <!-- 버튼 반응형 -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    </button>
                </div>

            </div>
        </div>


        <!-- 메뉴 페이지 슬라이드 -->
        <div class="image-section">
            <div class="image-container">
                <img src="/project/resources/assets_detail/image_slide/templatemo-bg-1.jpg" id="templatemo-page1-img" class="main-img inactive" alt="PHOTO">
                <img src="/project/resources/assets_detail/image_slide/templatemo-bg-2.jpg" id="templatemo-page2-img" class="inactive" alt="멘토 소개">
                <img src="/project/resources/assets_detail/image_slide/templatemo-bg-3.jpg" id="templatemo-page3-img"  class="inactive" alt="수업 소개">
                <img src="/project/resources/assets_detail/image_slide/templatemo-bg-4.jpg" id="templatemo-page4-img" class="inactive" alt="추천 대상">
                <img src="/project/resources/assets_detail/image_slide/templatemo-bg-5.jpg" id="templatemo-page5-img" class="inactive" alt="진행 방식">
                <img src="/project/resources/assets_detail/image_slide/templatemo-bg-6.jpg" id="templatemo-page6-img" class="inactive" alt="리뷰">
            </div>
        </div>


<!----------------------------------------------------  내    용  ------------------------------------------------------------>



        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 templatemo-content-wrapper border_content">

                <div class="templatemo-content">   

                    <!-- 1. PHOTO -->
                    <section id="templatemo-page1-text" class="active">

                        <!-- 위 공백 -->
                        <div class="col-sm-6 col-md-6"> <h4></h4> </div>  
                       
                        <div class="image_slide">
                            <div class="col-sm-8 col-md-8">  

                                <!-- 큰 슬라이드 -->                    
                                <div id="slider" class="flexslider">
                                    <ul class="slides">

                                        <!-- 썸네일 이미지 -->
                                        <li> <img src="/project/upload/Thumbnail/${dto.item_thumbnailimg}"  /> </li>
                                        
                                        <!-- 내용 이미지 -->
                                        <c:forEach var="image" items="${dto.images }">
                                        	<li> <img src="/project/upload/images/${image}" /> </li>
										</c:forEach>
                                    </ul>
                                </div>
                            
                                <!-- 작은 슬라이드 (위에랑 순서 같아야 함!!!!!)-->
                                <div id="carousel" class="flexslider">
                                    <ul class="slides">

                                        <!-- 썸네일 -->
                                        <li> <img src="/project/upload/Thumbnail/${dto.item_thumbnailimg}" /> </li>
                                        
                                        <!-- 내용 이미지 -->
                                        <c:forEach var="image" items="${dto.images }">
                                        	<li> <img src="/project/upload/images/${image}" /> </li>
										</c:forEach>
                                    </ul>
                                </div>
                            </div>            
                        </div>

                    </section>

                    <!-- 2. 멘토 소개 -->
                    <section id="templatemo-page2-text" class="inactive">                                                
                        <div class="col-sm-6 col-md-6">

                            <h3>멘토님을 소개합니다.</h3>

                            <div class="profile">

                                <!-- 멘토 프로필 이미지 -->
                                <p class="profile_img"><img src="/project/upload/member/${dto.member_img}" alt="" /></p>   

                                <!-- 멘토 이름 -->
                                <p id="mentor_name">${dto.member_id }</p> 
                                <p id="mentor">멘토</p>

                            </div>

                            <div> 
                            <p>
                                ${dto.item_content_who }
                            </p>
                        </div>

                        </div>
                    </section>

                    <!-- 3. 수업 소개 -->
                    <section id="templatemo-page3-text" class="inactive">
                        <div class="col-sm-6 col-md-6">
                            <h3>어떤 클래스인가요?</h3>
                            <p>
                                ${dto.item_content_what }
                            </p>
                        </div>
                    </section>

                    <!-- 4. 추천 대상 -->
                    <section id="templatemo-page4-text" class="inactive">
                        <div class="col-sm-6 col-md-6">
                            <h3>이런 분들께 추천해요.</h3>
                            <p>
                                 ${dto.item_content_target }
                            </p>
                        </div>          
                    </section>

                    <!-- 5. 진행 방식 -->
                    <section id="templatemo-page5-text" class="inactive">
                        <div class="col-sm-6 col-md-6">
                            <h3>클래스는 이렇게 진행됩니다.</h3>
                            <p> 
                                 ${dto.item_content_how }
                            </p>
                        </div>
                    </section>

                    <!-- 6. 리뷰 -->
                    <section id="templatemo-page6-text" class="inactive">
                        <div class="col-sm-6 col-md-6">
                            <h3>실제 튜티의 리뷰입니다.</h3>
                            <p>

                            </p>
                        </div>
                    </section>

                </div><!-- /.templatemo-content -->  
            </div><!-- /.templatemo-content-wrapper --> 


<!----------------------------------------------------  사 이 드 바  ------------------------------------------------------------>


            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 templatemo-content-wrapper">
                <div class="templatemo-content">  
                    <div class="sidenav">

                        <h2>클래스 일정</h2> <br>

                            <div class="schedule">

                                <span>협의 후 날짜, 시간 결정<br>
                                    <p>상세장소: 보호자 자택</p></span>               
                            </div>

                            <span class="like-content">
                                
                                <!-- 찜하기(하트) -->
                                <button class="btn-secondary like-review" id="like">
                                <i class="fa fa-heart" aria-hidden="true"></i> <br>
                                <p>${dto.item_like }</p>
                                </button>
                            
                                <!-- 수업 신청 버튼 -->
                                <button class="btn-secondary like-review" id="order">
                                수업 신청하기
                                </button>
                                                                                                
                            </span>
                    
                    	</div>    
                	</div>
            	</div>

<!----------------------------------------------------     끝     ------------------------------------------------------------>

        	</div><!-- /.row -->    
        </div> <!-- /.container -->
    </div> <!-- /#main-wrapper -->
</div> <!-- features-wrapper -->

	<script src="${pageContext.request.contextPath}/resources/assets_detail/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets_detail/js/jquery.min.js"></script>	
	<script src="${pageContext.request.contextPath}/resources/assets_detail/js/jquery.backstretch.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets_detail/js/jquery.flexslider.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets_detail/js/templatemo_script.js"></script>	
	
</body>
</html>   