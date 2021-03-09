<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
                        <p style="background-color:#faf6f0; border-radius: 6px;">&nbsp;&nbsp;￦ <strong>27,000</strong>&nbsp;&nbsp;</p>
                        <p>|</p>	
                        
                        <!-- 장소 -->
                        <p>보호자 자택</p>
                        <p>|</p>
                        
                        <!-- 원데이 OR 다회차 -->
                        <p>원데이</p>
                        
                        <!-- 별점 -->
                        <p id= "content_star">★(0.0)</p>

                    </div>  


                    <div class="content_title">

                        <!-- 클래스 제목 -->
                        <h1>[방문 교육] 당신의 사랑스러운 반려견을 모두에게 사랑받는 명견으로!</h1>

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
                                        <li> <img src="/project/resources/assets_detail/image_slide/slider/thumbnail.jpg" /> </li>
                                        
                                        <!-- 내용 이미지 -->
                                        <li> <img src="/project/resources/assets_detail/image_slide/slider/dog01.jpg" /> </li>
                                        <li> <img src="/project/resources/assets_detail/image_slide/slider/dog02.jpg" /> </li>
                                        <li> <img src="/project/resources/assets_detail/image_slide/slider/dog03.jpg" /> </li>
                                        <li> <img src="/project/resources/assets_detail/image_slide/slider/dog04.jpg" /> </li>
                                        <li> <img src="/project/resources/assets_detail/image_slide/slider/dog05.jpg" /> </li>
                                        <li> <img src="/project/resources/assets_detail/image_slide/slider/dog06.jpg" /> </li>
                                        <li> <img src="/project/resources/assets_detail/image_slide/slider/dog07.jpg" /> </li>
                                        <li> <img src="/project/resources/assets_detail/image_slide/slider/dog08.jpg" /> </li>
                                        <li> <img src="/project/resources/assets_detail/image_slide/slider/dog09.jpg" /> </li>

                                    </ul>
                                </div>
                            
                                <!-- 작은 슬라이드 (위에랑 순서 같아야 함!!!!!)-->
                                <div id="carousel" class="flexslider">
                                    <ul class="slides">

                                        <!-- 썸네일 -->
                                        <li> <img src="/project/resources/assets_detail/image_slide/slider/thumbnail.jpg"/> </li>
                                        
                                        <!-- 내용 이미지 -->
                                        <li> <img src="/project/resources/assets_detail/image_slide/slider/dog01.jpg" /> </li>
                                        <li> <img src="/project/resources/assets_detail/image_slide/slider/dog02.jpg" /> </li>
                                        <li> <img src="/project/resources/assets_detail/image_slide/slider/dog03.jpg" /> </li>
                                        <li> <img src="/project/resources/assets_detail/image_slide/slider/dog04.jpg" /> </li>
                                        <li> <img src="/project/resources/assets_detail/image_slide/slider/dog05.jpg" /> </li>
                                        <li> <img src="/project/resources/assets_detail/image_slide/slider/dog06.jpg" /> </li>
                                        <li> <img src="/project/resources/assets_detail/image_slide/slider/dog07.jpg" /> </li>
                                        <li> <img src="/project/resources/assets_detail/image_slide/slider/dog08.jpg" /> </li>                                        
                                        <li> <img src="/project/resources/assets_detail/image_slide/slider/dog09.jpg" /> </li>  

                                    </ul>
                                </div>
                            </div>            
                        </div>

                    </section>

                    <!-- 2. 멘토 소개 -->
                    <section id="templatemo-page2-text" class="inactive">                                                
                        <div class="col-sm-6 col-md-6">

                            <h3>튜터님을 소개합니다.</h3>

                            <div class="profile">

                                <!-- 멘토 프로필 이미지 -->
                                <p class="profile_img"><img src="/project/resources/assets_detail/image_slide/slider/profile.jpg" /></p>   

                                <!-- 멘토 이름 -->
                                <p id="mentor_name">다람쥐</p> 
                                <p id="mentor">멘토</p>

                            </div>

                            <div> 
                            <p>
                                경력: 前 비안코이탈리아 청담점 근무<br>
                                現 방문교육[스피츠계열(스피츠, 폼피츠, 포메라니안, 시바이누)교육, 자견(3~6개월령 강아지) 사회화 및 기본예절교육, 기타 다른 견종 문제행동 교육, 행동풍부화 놀이, 보호자 교육 퍼피시기의 아이들 사회화 및 기본적인 예절교육(앉아,기다려,엎드려, 산책, 기타 등) 문제행동 교육 진행
                                <br><br>
                                자격증: KPA Foundation, KPA Puppy Class, 반려동물관리사, KKC 반려견 지도사, 동물보호명예감시관 취득
                                <br><br>
                                안녕하세요 : ) 반려견과 행복한 라이프를 즐기고 계신가요? 너무 너무 이쁜데, 한번씩 원치않는 행동(입질, 짖음, 분리불안, 배변 등)으로 인해 고민이 많으신가요? 이런 문제들을 사랑스러운 친구들이 말로 설명해 준다면 너무 좋겠지만, 언어가 달라서 친구들이 부족하게 느끼는 부분을 충족시켜주기 힘드실거에요 : - ) 그리고 처음 반려동물을 데려오셨다면 이 친구는 왜 이럴까 많아 궁금도 하실텐데요, 그래서 이런 분들을 위해서 제가 방문해서 정확히 왜 이런지 보호자님과 상담과 아이 관찰을 통해서 파악을 하고 보호자님과 반려동물 친구들 모두 행복하게 되도록 도움을 드리도록 하겠습니다!
                            </p>
                        </div>

                        </div>
                    </section>

                    <!-- 3. 수업 소개 -->
                    <section id="templatemo-page3-text" class="inactive">
                        <div class="col-sm-6 col-md-6">
                            <h3>어떤 클래스인가요?</h3>
                            <p>
                                안녕하세요? 사랑스러운 아이들과 행복한 시간을 보내고 계신가요? 너무나 이뻐서 눈에서 꿀이 떨어지지만 항상 이쁠 수만은 없겠죠?? 아이들이 실수를 할 수도 있고 보호자님들이 왜 우리 아이가 그런 행동을 하는지 몰라서 잘못 케어 하실 수도 있고요? 또 처음 함께 하시는 초보견주님들은 아무리 준비하신다고 유투브 보시면서 따라해도 한계가 있구요?
                                <br> <br>
                                이제 더 이상 유투브 보시면서 따라해 보시면서 '우리 애는 안돼요' 라고 하지 마세요! 제가 도와 드리겠습니다!
                                <br> <br>
                                친구들마다 성격이 다 제각각이라서 그에 따라 교육법도 달라지는데, 이러한 이유때문에 유투브보고 실패하는 경우가 생깁니다. 실패해서 오히려 아이가 문제행동이 심해질 수도 있고요.
                                <br> <br>
                                그래서 제가 왔습니다! (두둥등장!!!!)
                                <br> <br>
                                방문교육 180회 위탁교육 100회의 경험을 바탕으로 실패없이 도와드리겠습니다!
                            </p>
                        </div>
                    </section>

                    <!-- 4. 추천 대상 -->
                    <section id="templatemo-page4-text" class="inactive">
                        <div class="col-sm-6 col-md-6">
                            <h3>이런 분들께 추천해요.</h3>
                            <p>
                                1. 처음 반려견을 가족으로 맞이하신 분
                                <br>
                                2. 자견 ( 3 ~ 6개월령 강아지 ) 와 함께 사시는 분
                                <br>
                                3. 문제행동으로 교육을 원하시는 분
                            </p>
                        </div>          
                    </section>

                    <!-- 5. 진행 방식 -->
                    <section id="templatemo-page5-text" class="inactive">
                        <div class="col-sm-6 col-md-6">
                            <h3>클래스는 이렇게 진행됩니다.</h3>
                            <p> 
                                1. 보호자님이 무엇때문에 교육을 원하시는지 파악 과 반려견이 왜 그런 행동을 하는지 관찰
                                <br>
                                2. 교육방향 구성 후 보호자님께 어떻게 진행할지 설명
                                <br>
                                3. 반려견 주거환경 파악 및 개선해야할 것이 있으면 보호자님께 전달 및 함께 관리
                                <br>
                                4. 구성된 교육 방향으로 보호자님 동반교육 진행
                            </p>
                        </div>
                    </section>

                    <!-- 6. 리뷰 -->
                    <section id="templatemo-page6-text" class="inactive">
                    <h3>실제 튜티의 리뷰입니다.</h3>

                        <div class="schedule" id="review">
                            
                            <!-- span 부분 반복하기 !!! -->
                            <span>
                                        
                                <div id="replyList">
                                    <div class='reply-wrap'>
                                        <div class='reply-content'>
                                            <div class='reply-group'>
                                                <strong class='left'>다람쥐 멘티</strong>&ensp;<small class='left'>2021-03-09</small>
                                            </div>
                                        </div>
                                    </div> 
                                </div>


                            </span>
                            <span>
                                
                                <div id="replyList">
                                    <div class='reply-wrap'>
                                        <div class='reply-content'>
                                            <div class='reply-group'>
                                                <strong class='left'>다람쥐 멘티</strong>&ensp;<small class='left'>2021-03-09</small>
                                            </div>
                                        </div>
                                    </div> 
                                </div>
                        
                            </span>
                            <span>
                                
                                <div id="replyList">
                                    <div class='reply-wrap'>
                                        <div class='reply-content'>
                                            <div class='reply-group'>
                                                <strong class='left'>다람쥐 멘티</strong>&ensp;<small class='left'>2021-03-09</small>
                                            </div>
                                        </div>
                                    </div> 
                                </div>

                            </span>
                            <span>
                                
                                <div id="replyList">
                                    <div class='reply-wrap'>
                                        <div class='reply-content'>
                                            <div class='reply-group'>
                                                <strong class='left'>다람쥐 멘티</strong>&ensp;<small class='left'>2021-03-09</small>
                                            </div>
                                        </div>
                                    </div> 
                                </div>

                            </span>
                            <span>
                                
                                <div id="replyList">
                                    <div class='reply-wrap'>
                                        <div class='reply-content'>
                                            <div class='reply-group'>
                                                <strong class='left'>다람쥐 멘티</strong>&ensp;<small class='left'>2021-03-09</small>
                                            </div>
                                        </div>
                                    </div> 
                                </div>

                            </span>
                            <span>
                                
                                <div id="replyList">
                                    <div class='reply-wrap'>
                                        <div class='reply-content'>
                                            <div class='reply-group'>
                                                <strong class='left'>다람쥐 멘티</strong>&ensp;<small class='left'>2021-03-09</small>
                                            </div>
                                        </div>
                                    </div> 
                                </div>

                            </span>
                            <span>
                                
                                <div id="replyList">
                                    <div class='reply-wrap'>
                                        <div class='reply-content'>
                                            <div class='reply-group'>
                                                <strong class='left'>다람쥐 멘티</strong>&ensp;<small class='left'>2021-03-09</small>
                                            </div>
                                        </div>
                                    </div> 
                                </div>

                            </span>
                            <span>
                                
                                <div id="replyList">
                                    <div class='reply-wrap'>
                                        <div class='reply-content'>
                                            <div class='reply-group'>
                                                <strong class='left'>다람쥐 멘티</strong>&ensp;<small class='left'>2021-03-09</small>
                                            </div>
                                        </div>
                                    </div> 
                                </div>

                            </span>
                            <span>
                                
                                <div id="replyList">
                                    <div class='reply-wrap'>
                                        <div class='reply-content'>
                                            <div class='reply-group'>
                                                <strong class='left'>다람쥐 멘티</strong>&ensp;<small class='left'>2021-03-09</small>
                                            </div>
                                        </div>
                                    </div> 
                                </div>

                            </span>
                            <span>
                                
                                <div id="replyList">
                                    <div class='reply-wrap'>
                                        <div class='reply-content'>
                                            <div class='reply-group'>
                                                <strong class='left'>다람쥐 멘티</strong>&ensp;<small class='left'>2021-03-09</small>
                                            </div>
                                        </div>
                                    </div> 
                                </div>

                            </span>
                                    
                        </div>
                    </section>


<!----------------------------------------------------  사 이 드 바  ------------------------------------------------------------>


            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 templatemo-content-wrapper">
                <div class="templatemo-content">  
                    <div class="sidenav">

                        <h2>클래스 일정</h2> <br>

                            <div class="schedule">

                                <span>협의 후 날짜, 시간 결정<br>
                                    <p>상세장소: 보호자 자택</p></span>
                                <span>협의 후 날짜, 시간 결정<br>
                                    <p>상세장소: 보호자 자택</p></span>
                                <span>협의 후 날짜, 시간 결정<br>
                                    <p>상세장소: 보호자 자택</p></span>
                                <span>협의 후 날짜, 시간 결정<br>
                                    <p>상세장소: 보호자 자택</p></span>
                                <span>협의 후 날짜, 시간 결정<br>
                                    <p>상세장소: 보호자 자택</p></span>
                                <span>협의 후 날짜, 시간 결정<br>
                                    <p>상세장소: 보호자 자택</p></span>
                                <span>협의 후 날짜, 시간 결정<br>
                                    <p>상세장소: 보호자 자택</p></span>
                                <span>협의 후 날짜, 시간 결정<br>
                                    <p>상세장소: 보호자 자택</p></span>
                                <span>협의 후 날짜, 시간 결정<br>
                                    <p>상세장소: 보호자 자택</p></span>
                                <span>협의 후 날짜, 시간 결정<br>
                                    <p>상세장소: 보호자 자택</p></span>
                                <span>협의 후 날짜, 시간 결정<br>
                                    <p>상세장소: 보호자 자택</p></span>
                                <span>협의 후 날짜, 시간 결정<br>
                                    <p>상세장소: 보호자 자택</p></span>
                                
                            </div>

                            <span class="like-content">
                                
                                <!-- 찜하기(하트) -->
                                <button class="btn-secondary like-review" id="like">
                                <i class="fa fa-heart" aria-hidden="true"></i> <br>
                                <p>204</p>
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

<script>

var pageNum =1;
var stradd ="";
        
        //목록요청
        getlist(1,false); // 상세화면 진입시에 리스트 목록을 가져옵니다.
        
        function getlist(page,reset) { //(stradd 초기화여부)
            //select 구문에서 필요한 값은? notice_postnum
            var qno = "${dto.notice_postnum}";
            
            console.log(pageNum);
            //$.ajax() vs $.getJSON
            //$.ajax() - get,post,put,delete 공용적으로 처리하는 제이쿼리기능
            //$.getJSON(요청의 주소,콜백함수) - 단순히 get방식의 데이터만 얻어올때 사용하는 기능
            
            $.getJSON(
            		"replylist/"+qno+"/"+page,function(map){
                    
                    var total = map.total;
                    var data = map.list;
                    console.log(total);
                    console.log(data);
                    
                    if(reset ==true){ //맴버변수를 초기화해서 새롭게 데이터를 가져옴
                        stradd ="";
                        pageNum =1;
                    }
                    
                    
                    if(pageNum*20>= total){
                        $("#morelist").css("display","none");
                    }
                    
                    
                    if(data.length <= 0){ //댓글이 없는경우 함수종료
                        return;
                    }
                    for(var i=0; i<data.length; i++){
                    	var count = data[i].notice_star;
                    	count *= 1;
                    	m_count = 5 - count;
                    	
                        stradd+="<div class='reply-wrap'>";
                        stradd+="<div class='reply-image'>";
                        stradd+="</div>";
                        stradd+="<div class='notice_reply_content'>";
                        stradd+="<div class='reply-group'>";
                        stradd+="<strong class='left'>"+data[i].member_id+"</strong>"; 
                        stradd+="<small class='left'>"+timeStamp(data[i].notice_reply_date)+"</small>";
                        stradd+="<small class='left star'>"+ "★".repeat(count) + "☆".repeat(m_count) +"</small>";
                        stradd+="<a href='"+data[i].notice_reply_postnum+" "+data[i].member_id+" " + data[i].notice_reply_content+"' class='right replyModify'><span class='glyphicon glyphicon-pencil'></span>수정</a>"
                        stradd+="<a href='"+data[i].notice_reply_postnum+" "+data[i].member_id+"' class='right replyDelete'><span class='glyphicon glyphicon-remove'></span>삭제</a>"
                        stradd+="</div>";
                        stradd+="<p class='clearfix'>"+data[i].notice_reply_content+"</p>";
                        stradd+="</div>";
                        stradd+="</div>";
                    }
                    $("#replyList").html(stradd);
                    
                }        
            );
        }

</script>
	
</body>
</html>   