<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets_headfoot/css/header.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets_detail/css/font-awesome.min.css">
  </head>

<body>


<!--header-->
  <header class="main-header clearfix" role="header" >


    <!-- 왼쪽 -->
    <div class="logo">
      <a href="${pageContext.request.contextPath}/hodu/mainpage"><em>HO</em>DU</a> &emsp; &emsp;
    </div>  


      <!-- 반응형일 때 -->
      <a href="#menu" class="menu-link"><i class="fa fa-bars"></i></a>


    <nav id="menu-left" class="main-nav" role="navigation">
      <ul class="main-menu" style="float:left;">
        <h1><input id="find_class" name="q" type="text" class="form-control rounded-pill" placeholder="🔍" aria-label="Recipient's username" aria-describedby="button-addon2" onfocus="this.placeholder=''"></h1>        
      </ul>
    </nav>


<!------------------------------------------------------- 로그아웃 상태 오른쪽 ------------------------------------------------------------------------->
    
<%--     <c:choose>
      <c:when test="${member == null}">

        <nav id="menu" class="main-nav" role="navigation">
          <ul class="main-menu">
            <li><a href="${pageContext.request.contextPath}/hodu/account/mentor-reg">로그인</a></li>        
            <li><a href="${pageContext.request.contextPath}/hodu/account/join">회원가입</a></li>
            <li><a href="${pageContext.request.contextPath}/hodu/account/login">멘토 가입하기</a></li>
          </ul>
        </nav>

      </c:when>
    </c:choose> --%>

<!--------------------------------------------------------- 로그인 상태 오른쪽 ------------------------------------------------------------------------->

    <c:choose>
      <c:when test="${member != null}">
        
        <nav id="menu" class="main-nav" role="navigation">
          <ul class="main-menu">
          
          
          	<li></li>
                 
            <li class="has-submenu" id="header_my">
                        
	          	<!-- 프로필 사진: "/project/upload/member/${member.member_img}"  -->
	          	<img id="profile_img" src="${pageContext.request.contextPath}/resources/profile/pic01.jpg"> <a href="#">${member.member_name }다람쥐 회원님</a>
	                    
	              <ul class="sub-menu" id="header_my_sub">
	              
	                <li style="border-bottom: none;"> 닉네임 : ${member.member_nickname}</li>
	                
	                <li> 보유 호두 : <fmt:formatNumber value="${member.member_cash }" pattern="#,###.## 호두" /><br></li>
	                
	                <div id="sub_button">
	                              
		                <li style="text-align:center; border-bottom: none;"><a href="${pageContext.request.contextPath}/hodu/mypage/mypage">마이페이지</a></li>   
		                             
		                <c:if test="${member.mentor_enable eq 'N'}">
		                  <li style="text-align:center;"><a href="${pageContext.request.contextPath}/hodu/account/mentor-reg">멘토 가입하기</a></li>
		                </c:if>                
		                
		                <li style="text-align:center;"><a href="${pageContext.request.contextPath}/hodu/account/logout">로그아웃</a></li>
	              
	              	</div>
	              
	              </ul>
              
            </li>

          </ul>
        </nav>

      </c:when>
    </c:choose>

    
  </header>



</body>

  <script src="${pageContext.request.contextPath}/resources/vendor/jquery/jquery.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/assets_headfoot/js/custom.js"></script>

</body>
</html>