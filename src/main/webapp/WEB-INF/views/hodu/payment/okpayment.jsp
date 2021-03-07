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
#leftokpayment {
	background-color: #b1b5a1
}

#rightokpayment {
	background-color: #d1bad6
}
</style>
<body>

	<div class="container">
		<div class="p-2"></div>
		<h3>신청완료</h3>
		<hr>
		<div class="row">
			<div class="col-6" id="leftokpayment">
				<div class="p-3" align="center">00님의 결제 정보를 확인해주세요</div>
				<div class="p-5">클래스 정보 받아오기</div>
				<div class="p-5"></div>

				<div class="row">
					<div class="col-6">
						<p>수업 시간</p>
						<p>신청 인원</p>
					</div>
					<div class="col-6" align="right">
						<p>게시판에서 받은값</p>
						<p>DB에서 받은인원</p>

					</div>
				</div>
				<div class="p-4"></div>
				<div class="row">
					<div class="col-3">프로필</div>
					<div class="col-9">
						<p>[게시판에서 받은 제목]</p>
						<h3>신청해주셔서 감사합니다.</h3>
					</div>

				</div>

				<div class="p-5"></div>
			</div>
			<div class="col-6" id="rightokpayment">
				<div class="p-5"></div>
				<div class="row">
					<div class="col-6">주문 번호</div>
					<div class="col-6">XXXXXXXXXXX</div>
				</div>
				<br>
				<div class="row">
					<div class="col-6">결제 날짜</div>
					<div class="col-6">오늘날짜 가져오기</div>
				</div>
				<br>
				<div class="row">
					<div class="col-6">이 메일</div>
					<div class="col-6">DB에서 받아오기</div>
				</div>
				<div class="p-5"></div>
				<div class="row">
					<div class="col-6">총 결제</div>
					<div class="col-6">결제 호두 받아오기</div>
				</div>
				<div class="p-3"></div>
				<h3>꼭 숙지하세요!</h3>
				<p>수업 진행 24시간 전에 환불 요청하는 경우 <br/>
				결제 금액이 100% 환불됩니다. 24시간 이내에 취소하는경우<br>
				1시간 수업료가 차감된 금액이 환불됩니다.
				</p>
				<a href="임시">환불 약관 보러 가기</a>
			</div>

		</div>


	</div>

</body>
</html>