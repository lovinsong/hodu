<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>호두 : 생활 서비스 멘토 매칭</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl"
	crossorigin="anonymous">
</head>
<style>
#leftpayment {
	background-color: #b8c8e3;
}

#rightpayment {
	background-color: #b8e3d5;
	border-color: gray;
	border-style: soild;
	box-sizing: 50px;
}

#total {
	color: black;
}

</style>
<body>
	<!-- footer 파일 포함 코드 -->
	<%@ include file="../headerfooter/hoduheader.jsp"%>
	<form action="./okpayment" method="POST">
		<div class="container" id="total">
			<div class="row">
				<!-- 왼쪽 -->
				<div class="col-6" id="leftpayment">
					<div class="p-2"></div>
					<h3>수업신청</h3>
					<hr>
					<div class="p-5">클래스 받아오기</div>
					<div class="p-5"></div>
					<div class="row">
						<hr>
						<div class="col-6">
							<p>호두</p>
							<p>보유</p>
						</div>

						<div align="right" class="col-6">
							<p>&nbsp;</p>
							<p>${member.member_cash }호두</p>
						</div>
					</div>
					<div class="p-5"></div>
					<h3>결제수단</h3>
					<input type="button" value="충전하러가기">
					<div class="p-5"></div>
					<div class="p-5"></div>
				</div>

				<!-- 오른쪽 -->
				<div class="col-6" id="rightpayment">
					<div class="p-5"></div>

					<div class="row">
						<div class="col-2"></div>
						<div class="col-5">
							<h3>최종 결제 금액</h3>
						</div>
						<div class="col-3"></div>
						<div class="col-2"></div>
					</div>
					<div class="p-3"></div>

					<div class="row">
						<div class="col-2"></div>
						<div class="col-2">수업료</div>
						<div class="col-2"></div>
						<div class="col-2"></div>
						<div class="col-2">
						<input type="text" name="item_price" value="${dto.item_price }" style="display: none;"/>
						${dto.item_price } 호두
						</div>
						<div class="col-2"></div>
					</div>
					<br>
					<div class="row">
						<div class="col-2"></div>
						<div class="col-3">신청 인원</div>
						<div class="col-1"></div>
						<div class="col-2"></div>
						
						<div class="col-2">
						<input type="text" name="apply_people" value= "${dto.apply_people }" style="display: none;"/>
						${dto.apply_people }
						</div>
						
						<div class="col-2"></div>
					</div>
					<div class="p-5"></div>
					<div class="p-4"></div>
					<hr>
					<div class="row">
						<div class="p-5"></div>
						<div class="col-2"></div>
						<div class="col-4">
							<p>보유 호두</p>
							<hr>
							<p>총 결제 호두</p>

						</div>
						<div class="col-1"></div>
						<div class="col-1"></div>
						<div class="col-4">
							<p>${member.member_cash }호두
							<p>
							<hr>
							<p>결제호두</p>
							<p></p>
						</div>
					</div>
					<div class="p-4"></div>

					<input type="submit"
						style="width: 550px; height: 50px; background-color: crimson;"
						value="결제하기"/>
				</div>
			</div>
		</div>
	</form>

	<!-- footer 파일 포함 코드 -->
	<%@ include file="../headerfooter/hodufooter.jsp"%>
</body>
</html>