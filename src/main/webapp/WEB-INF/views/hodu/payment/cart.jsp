<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl"
	crossorigin="anonymous">
</head>
<style>
#leftcart {
	background-color: lime;
}

#rightcart {
	background-color: white;
}
#total{
color: black;
}
</style>
<body>
	<!-- footer 파일 포함 코드 -->
	<%@ include file="../headerfooter/hoduheader.jsp"%>

<br>
	<div class="container" id ="total">
		<div class="row">
			<div class="col-6" id="leftcart">
				왼쪽입니다.(게시판에서 받아와야합니다.)
				<div class="p-5"></div>
				<div class="p-5"></div>
				<div class="p-5"></div>
				<div class="p-5"></div>
				<div class="p-5"></div>
				<div class="p-5"></div>
				<div class="p-5"></div>
			</div>
			
			<!-- 오른쪽 부분 -->
			
			<div class="col-6" id="rightcart">
			<div class="p-3"></div>
			<hr>
			<div class="row">
			<div class="col-6">
 			<h4>신청 인원 :</h4>
			</div>
			<div align="right" class="col-6">
			<h5>-+ 숫자버튼</h5>
			</div>
			</div>
			<br>
			<hr>
			
			<div class="row">
			<div class="col-6">
			<h4>연락 받으실 전화번호 :</h4>
			</div>
			<div align="right" class="col-6">
			<h5>${member.member_phone }</h5>
			</div>
			</div>
			
			<br>
			<hr>
			<h2>튜터에게 전하는말!</h2>
			<h4>튜어에게 간단히 자신을 소개하고, 신청 목적에 대해 알려주세요.</h4>
			<div class="p-3"></div>
			<div class="container"  style="display: inline-block;text-align: center;"> <!--  가운데 정렬 -->
			 &nbsp; &nbsp; &nbsp;
			<input type="radio" style="width: 23px; height: 23px;" name="chk_level">입문 &nbsp; &nbsp; &nbsp;

			<input type="radio" style="width: 23px; height: 23px;" name="chk_level">초 / 중급 &nbsp; &nbsp; &nbsp;
			<input type="radio" style="width: 23px; height: 23px;" name="chk_level">상급 &nbsp; &nbsp; &nbsp;
			<br>
			<form action="./payment" >
     		 <textarea style="resize: none" cols="80" rows="10" placeholder="예) 처음이라 서투르지만 열심히 따라갈께요!"></textarea>
     		 <div class="p-3"></div>
     		 <input type="submit" style="width: 500px; height: 50px; background-color: crimson; " value="다음" onclick="h">
   			</form>
   			</div>
			</div>
		</div>

	</div>
		<!-- footer 파일 포함 코드 -->
	<%@ include file="../headerfooter/hodufooter.jsp"%>
</body>
</html>