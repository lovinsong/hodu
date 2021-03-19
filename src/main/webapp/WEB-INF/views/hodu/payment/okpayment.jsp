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
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets_payment/css/cart-detail.css">
<style>
#leftokpayment {
	
}

#rightokpayment {
	
}

#total {
	color: black;
}
</style>
<body>
	<!-- footer 파일 포함 코드 -->
	<%@ include file="../headerfooter/hoduheader.jsp"%>
	<div class="container" id="total">
		<div class="p-2"></div>
		<h2>수업 신청완료</h2>
		<hr>
		<div class="row">
			<div class="col-6" id="leftokpayment">
				<div class="p-2"></div>
				<div class="p-3" align="center">
					<h4>${member.member_name }님의 결제 정보를 확인해 주세요</h4>
				</div>
				<div align="center">
					<img src="/project/upload/Thumbnail/${dto.item_thumbnailimg}"
						width="200" />
				</div>
				<br>
				<p align="center">${dto.item_title }</p>
				<div class="p-5"></div>

				<div class="row">
					<div class="col-6">
						<p>신청 인원</p>
					</div>
					<div class="col-5" align="right">
						<p>${dto.apply_people }명</p>
					</div>
					<div class="col-1" align="right"></div>
				</div>
				<hr>
				<div class="p-4"></div>
				<div class="row">
					<div class="col-3">
						<img src="/project/upload/member/${member.member_img }"
							width="100">
						<p>${member.member_id }님</p>
					</div>
					<div class="col-9">
						<p>${dto.item_title }</p>
						<h3>신청해주셔서 감사합니다.</h3>
					</div>

				</div>

				<div class="p-5"></div>
			</div>
			<div class="col-6" id="rightokpayment">
				<div class="p-2"></div>
				<div class="row">
					<div class="col-6">
						<h2>주문 번호</h2>
						<hr>
					</div>
					<div class="col-6" align="right">
						<h2>${dto.order_num }</h2>
					</div>

				</div>
				<br>
				<div class="row">
					<div class="col-6">결제 날짜</div>
					<div class="col-6" align="right">
						<script>
					var today = new Date();
					var dd = today.getDate();
					var mm = today.getMonth()+1; //January is 0!
					var yyyy = today.getFullYear();

					if(dd<10) {
					    dd='0'+dd
					} 

					if(mm<10) {
					    mm='0'+mm
					} 

					today = yyyy + ' / ' + mm +' / '+ dd;
					document.write(today);
					</script>
					</div>
				</div>
				<br>
				<div class="row">
					<div class="col-6">아이디</div>
					<div class="col-6" align="right">${member.member_id }</div>
				</div>
				<br>
				<div class="row">
					<div class="col-6">이 메일</div>
					<div class="col-6" align="right">${member.member_email }</div>
				</div>
				<br>
				<div class="row">
					<div class="col-6">전화번호</div>
					<div class="col-6" align="right">${member.member_phone }</div>
				</div>
				<hr>
				<div class="p-3"></div>
				<div class="row">
					<div class="col-6">
						결제 전 <img
							src="${pageContext.request.contextPath}/resources/assets/image/hoduC.png"
							style="width: 6%; vertical-align: middle; margin-top: -3px">
					</div>
					<div class="col-6" align="right">${member.member_cash}
						<img
							src="${pageContext.request.contextPath}/resources/assets/image/hoduC.png"
							style="width: 6%; vertical-align: middle; margin-top: -3px">
					</div>
				</div>
				<br>
				<div class="row">
					<div class="col-6">총 결제</div>
					<div class="col-6" align="right">${dto.item_price * dto.apply_people}
						<img
							src="${pageContext.request.contextPath}/resources/assets/image/hoduC.png"
							style="width: 6%; vertical-align: middle; margin-top: -3px">
					</div>
				</div>
				<br>
				<div class="row">
					<div class="col-6">
						남은 <img
							src="${pageContext.request.contextPath}/resources/assets/image/hoduC.png"
							style="width: 6%; vertical-align: middle; margin-top: -3px">
					</div>
					<div class="col-6" align="right">
						${member.member_cash -(dto.item_price * dto.apply_people)} <img
							src="${pageContext.request.contextPath}/resources/assets/image/hoduC.png"
							style="width: 6%; vertical-align: middle; margin-top: -3px">
					</div>
				</div>
				<hr>
				<div class="p-2"></div>
				<h3>꼭 숙지하세요!</h3>
				<p>
					수업 진행 24시간 전에 환불 요청하는 경우 <br /> 결제 금액이 100% 환불됩니다. 24시간 이내에 취소하는경우<br>
					1시간 수업료가 차감된 금액이 환불됩니다.
				</p>
				<input type="button" id="refundform" value="환불 약관 보기">
			</div>

		</div>


	</div>

	<script>
	// 약관 보러 가기에 관한 스크립트
	
	var popupX = (window.screen.width / 2) - (500 / 2);
	//&nbsp;만들 팝업창 좌우 크기의 1/2 만큼 보정값으로 빼주었음

	var popupY = (window.screen.height / 2) - (600 / 2);
	//&nbsp;만들 팝업창 상하 크기의 1/2 만큼 보정값으로 빼주었음
    
	// 회원약관 바로가기 바로가기
    
        $("#refundform").click(function(){
            window.open("./refundform", "환불 약관", 'status=no, width=550, height=600, left='+ popupX + ', top='+ popupY);
        });
	</script>

<!-- 
	<script>
// 새로고침 방지
function noRefresh()
{
    /* CTRL + N키 막음. */
    if ((event.keyCode == 78) && (event.ctrlKey == true))
    {
        event.keyCode = 0;
        return false;
    }
    /* F5 번키 막음. */
    if(event.keyCode == 116)
    {
        event.keyCode = 0;
        return false;
    }
}

document.onkeydown = noRefresh ;
</script> -->
	<!-- footer 파일 포함 코드 -->
	<%@ include file="/WEB-INF/views/hodu/main/footer.jsp"%>
</body>
</html>