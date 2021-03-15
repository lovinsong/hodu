<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ include file="/WEB-INF/views/hodu/main/header.jsp"%>
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
	
}

#rightpayment {
	box-sizing: 50px;
}

#total {
	color: black;
}
</style>
<body>
	<!-- footer 파일 포함 코드 -->
	<%@ include file="../headerfooter/hoduheader.jsp"%>
	<form action="./okpayment" method="GET">
		<div class="container" id="total">
			<div class="row">
				<!-- 왼쪽 -->
				<div class="col-6" id="leftpayment">
					<div class="p-4">
					</div>
						<h3>수업신청</h3>
						<hr>
						<br>
					<div>
						<img src="/project/upload/Thumbnail/${dto.item_thumbnailimg}"
							width="400" />
					</div>
					<br>
					<h2>${dto.item_title }</h2>
					<div class="p-5"></div>
					<div class="row">
						<div class="col-10">
							<hr>
							<br>
							<h2>다시 한번 알려드립니다.</h2>
							<br>
							<h4>이 강의는 이런분들에게 어울립니다.</h4>
							<br>
							<div>${dto.item_content_target }</div>
						</div>
						<div></div>

						<div align="right" class="col-2"></div>
					</div>
					<div class="p-5"></div>
				</div>

				<!-- 오른쪽 -->
				<div class="col-6" id="rightpayment">
					<div class="p-5"></div>

					<div class="row">
						<div class="col-2"></div>
						<div class="col-6">
							<h2>최종 결제 금액</h2>
							<hr>
						</div>
						<div class="col-2"></div>
						<div class="col-2"></div>
					</div>
					<div class="p-3"></div>

					<div class="row">
						<div class="col-1"></div>
						<div class="col-3">
							<h3>수업료</h3>
						</div>
						<div class="col-2"></div>
						<div class="col-1"></div>
						<div class="col-3">
							<input type="text" name="item_price" value="${dto.item_price }"
								style="display: none;" />
							<h3 align="right">${dto.item_price } <img src="${pageContext.request.contextPath}/resources/assets/image/hoduC.png"	style="width: 22%; vertical-align: middle; margin-top: -3px"></h3>
						</div>
						<div class="col-2"></div>
					</div>
					<br>
					<div class="row">
						<div class="col-1"></div>
						<div class="col-4">
							<h3>신청 인원</h3>
						</div>
						<div class="col-1"></div>
						<div class="col-1"></div>

						<div class="col-3">
							<input type="text" name="apply_people"
								value="${dto.apply_people }" style="display: none;" />
							<h3 align="right">${dto.apply_people } 명</h3>
						</div>

						<div class="col-1"></div>
					</div>
					<div class="p-2"></div>
					<hr>
					<div class="row">
						<div class="p-5"></div>
						<div class="col-1"></div>
						<div class="col-5">
							<h2>보유 호두</h2>
							<hr>
							<h2>총 결제 호두</h2>

						</div>
						<div class="col-1"></div>
						<div class="col-5">
							<h2 align="right">${member.member_cash } <img src="${pageContext.request.contextPath}/resources/assets/image/hoduC.png"	style="width: 15%; vertical-align: middle; margin-top: -3px"></h2>
							<hr>
							<h2 align="right">${dto.item_price * dto.apply_people} <img src="${pageContext.request.contextPath}/resources/assets/image/hoduC.png"	style="width: 15%; vertical-align: middle; margin-top: -3px"></h2>
						</div>
					</div>
					<div class="p-4"></div>
					<input type="text" name="item_code" value="${dto.item_code }"
						style="display: none;" /> <input type="text" name="item_code"
						value="${member.member_id }" style="display: none;" /> <input
						type="submit"
						style="width: 530px; height: 50px; background-color: #696969;"
						value="결제하기" />
					<div class="p-2"></div>
				</div>
			</div>
		</div>
	</form>

	<!-- footer 파일 포함 코드 -->
			<%@ include file="/WEB-INF/views/hodu/main/footer.jsp"%>
</body>
</html>