<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>호두 : 생활 서비스 멘토 매칭</title>	

<script src="https://code.jquery.com/jquery-3.4.1.js" integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU=" crossorigin="anonymous"></script>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<style>
@charset "UTF-8";

body {
    font-family: "Lato", sans-serif;
}

.main-head{
    height: 150px;
    background: #FFF;
   
}

.sidenav {
    height: 100%;
    background-color: #faf6f0;
    overflow-x: hidden;
    padding-top: 20px;
}


.main {

	margin-left: 33%;
	margin-top: 150px;
	margin-bottom: 300px;
	padding: 10px;

}

#login_title {
	text-align: center;
	font-size: 20px;
	margin-bottom: 50px;
}

.login-main-text{
    margin-top: 20%;
    padding: 60px;
    color: #000;
    font-weight : bold;
}
.login-main-text>h2{
	font-weight : bold;
}

.btn-black{
    background-color: #000 !important;
    color: #fff;
}

/* 로그인 실패시 경고글 */
.login_warn {
	margin-top: 30px;
	text-align: center;
	color: red;
}
 /* float 속성 해제 */
.clearfix {
	clear: both;
}
</style>
<%@ include file="../main/header.jsp"%>
<body>


<div class="main">


   <div class="col-md-6 col-sm-12">
   
				<div id="login_title">
					로그인
				</div><br>
				
				
      <div class="login-form">
         <form id="login_form" method="post">
            <div class="form-group">
               <label>아이디</label>
               <input type="text" class="form-control id_input" name="member_id" placeholder="ID">
            </div>
            <div class="form-group">
               <label>비밀번호</label>
               <input type="password" class="form-control pw_iput" name="member_pw" placeholder="Password">
            </div>
            
            <c:if test="${result == 0 }">
						<div class="login_warn">사용자 ID 또는 비밀번호를 잘못 입력하셨습니다.</div><br>
			</c:if>
			<br>
            
            <div style="text-align:center;">
			<input type="button" class="btn btn-black login_button" value="로그인">
			<input type="button" class="btn btn-secondary" onclick="location.href='findid'" value="아이디 찾기">
			<input type="button" class="btn btn-secondary" onclick="location.href='findpass'" value="비밀번호 찾기">
			<!-- <input type="button" class="btn btn-black" onclick="location.href='../main/mainpage'" value="Home"> -->
			</div>
         </form>
      </div>
   </div>
</div>

	<script>
		/* 로그인 버튼 클릭 메서드 */
		$(".login_button").click(function() {

			//alert("로그인 버튼 작동");

			/* 로그인 메서드 서버 요청 */
			$("#login_form").attr("action", "login");
			$("#login_form").submit();

		});
	</script>


</body>
<%@ include file="../main/footer.jsp"%> 
</html>

