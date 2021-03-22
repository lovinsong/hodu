<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.4.1.js"
	integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
	crossorigin="anonymous"></script>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<style>
@charset "UTF-8";

/* * {
	margin: 0;
	padding: 0;
} 
.wrapper {
	width: 1900px;
} 
.wrap {
	width: 800px;
	margin: auto;
} 
.logo_wrap {
	text-align: center;
	margin: 150px 0;
}

.logo_wrap>span {
	font-size: 50px;
	font-weight: 900;
} 
.id_input_box {
	border: 1px solid black;
	height: 31px;
	padding: 10px 14px;
	display: block;
	width: 80%;
	margin: auto;
}

.id_input {
	width: 100%;
	height: 100%;
	border: none;
	font-size: 28px;
}

.pw_wrap {
	margin-top: 40px;
}

.pw_input_box {
	border: 1px solid black;
	height: 31px;
	padding: 10px 14px;
	display: block;
	width: 80%;
	margin: auto;
}

.pw_iput {
	width: 100%;
	height: 100%;
	border: none;
	font-size: 28px;
}

.login_button_wrap {
	margin-top: 40px;
	text-align: center;
}

.login_button {
	width: 84%;
	height: 80px;
	background-color: #6AAFE6;
	font-size: 40px;
	font-weight: 900;
	color: white;
	margin: auto;
}

.temp_button {
	width: 84%;
	height: 80px;
	background-color: #6AAFE6;
	font-size: 40px;
	font-weight: 900;
	color: white;
	margin: auto;
} */

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
    padding: 50px; 
    /* 0px 10px; */
}

@media screen and (max-height: 450px) {
    .sidenav {padding-top: 15px;}
}

@media screen and (max-width: 450px) {
    .login-form{
        margin-top: 10%;
    }

    .register-form{
        margin-top: 10%;
    }
}

@media screen and (min-width: 768px){
    .main{
        margin-left: 40%; 
    }

    .sidenav{
        width: 40%;
        position: fixed;
        z-index: 1;
        top: 0;
        left: 0;
    }

    .login-form{
        margin-top: 80%;
    }

    .register-form{
        margin-top: 20%;
    }
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

/* .login-main-text h2{
    font-weight: 300;
} */

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

<!-- <div class="sidenav">
         <div class="login-main-text">
            <h2>HODU<br> Login Page</h2>
            <p>Login or find your information here to access.</p>
         </div>
</div> -->
<div class="main">
   <div class="col-md-6 col-sm-12">
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




	<%-- <div class="wrapper">

		<div class="wrap">
			<form id="login_form" method="post">
				<div class="logo_wrap">
					<span>로그인 페이지</span>
				</div>
				<div class="login_wrap">
					<div class="id_wrap">
						<div class="id_input_box">
							<input class="id_input" name="member_id">
						</div>
					</div>
					<div class="pw_wrap">
						<div class="pw_input_box">
							<input class="pw_iput" type="password" name="member_pw">
						</div>
					</div>

					<c:if test="${result == 0 }">
						<div class="login_warn">사용자 ID 또는 비밀번호를 잘못 입력하셨습니다.</div>
					</c:if>

					<div class="login_button_wrap">
						<input type="button" class="login_button" value="로그인"><br><br>
						<input type="button" class="temp_button" onclick="location.href='findid'" value="아이디 찾기"><br><br>
						<input type="button" class="temp_button" onclick="location.href='findpass'" value="비밀번호 찾기"><br><br>
						<input type="button" class="temp_button" onclick="location.href='../main/mainpage'" value="Home">
					</div>
				</div>
			</form>
			
		</div>

	</div> --%>

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

