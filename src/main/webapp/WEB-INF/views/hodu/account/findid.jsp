<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<title>아이디 찾기</title>
<script src="https://code.jquery.com/jquery-3.4.1.js"
	integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
	crossorigin="anonymous"></script>
</head>
<style>
* {
	margin: 0;
	padding: 0;
} /* 화면 전체 렙 */
.wrapper {
	width: 1900px;
} /* content 랩 */
.wrap {
	width: 800px;
	margin: auto;
} /* 페이지 로고 */
.logo_wrap {
	text-align: center;
	margin: 150px 0;
}

.logo_wrap>span {
	font-size: 50px;
	font-weight: 900;
} /* 로그인 area */
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

.email_wrap {
	margin-top: 40px;
}

.email_input_box {
	border: 1px solid black;
	height: 31px;
	padding: 10px 14px;
	display: block;
	width: 80%;
	margin: auto;
}

.email_input {
	width: 100%;
	height: 100%;
	border: none;
	font-size: 28px;
}

.find_button_wrap {
	margin-top: 40px;
	text-align: center;
}

.find_button {
	width: 84%;
	height: 80px;
	background-color: #6AAFE6;
	font-size: 40px;
	font-weight: 900;
	color: white;
	margin: auto;
}

.find_warn {
	margin-top: 30px;
	text-align: center;
	color: red;
}

.clearfix {
	clear: both;
}
</style>

<body>
	<div class="wrapper">
		<div class="wrap">
			<form id="find_form" method="post">
				<div class="logo_wrap">
					<span>더 이상의 아이디는 없다...</span><br>
				</div>

				<div class="findid_wrap">
					<div class="id_wrap">
						<div class="id_input_box">
							<input class="id_input" name="member_name" placeholder="이름">
						</div>
					</div>

					<div class="email_wrap">
						<div class="email_input_box">
							<input class="email_input" name="member_email" placeholder="이메일">
						</div>
					</div>

					<c:if test="${result == 0 }">
						<div class="find_warn">사용자 이름 또는 이메일을 잘못 입력하셨호도</div>
					</c:if>

					<div class="find_button_wrap">
						<input type="button" class="find_button" value="아이디찾기">
					</div>

				</div>

			</form>

		</div>
	</div>

	<script>
		/* 찾기 버튼 클릭 메서드 */
		$(".find_button").click(function() {

			//alert("찾기 버튼 작동");

			/* 찾기 메서드 서버 요청 */
			$("#find_form").attr("action", "./findid");
			$("#find_form").submit();

		});
	</script>


</body>
</html>
