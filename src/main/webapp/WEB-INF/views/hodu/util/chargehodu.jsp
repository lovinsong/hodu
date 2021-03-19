<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<script 
   src="https://code.jquery.com/jquery-3.4.1.js" 
   integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU=" 
   crossorigin="anonymous">
</script>
<!-- CSS Libraries -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">	
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets_mypage/assets/css/main.css" />
</head>
<style>
.box-radio-input>span,.card-header{
	color : black;
}
.form-check-label{
	color : white;
}
.bb{
	color : black;
}
</style>
 <%@ include file="../main/header.jsp"%>
<body>

<form action="charge" method="POST" id="chargeform">
<%--<input type="text" name="moneyforhodu"id="moneyforhodu"><input type="hidden" name="member_id" id="member_id" value="${member.member_id}">
<input type="hidden" name="member_address"value="${member.member_address}">--%>
  
<input type="hidden" name="member_name" id="member_name" value="${member.member_name}">
<input type="hidden" name="member_email"id="member_email"value="${member.member_email}">
<input type="hidden" name="member_phone"id="member_phone"value="${member.member_phone}">

	<div class="card-group container">
		<div class="col-3">
			<div class="card bg-warning" style="width: 19rem;">
				<div class="card-header fw-bold border-5" style="text-align: center; background-color : white;">카카오페이</div>
			  <img src="${pageContext.request.contextPath}/resources/assets/image/kakao.png" class="card-img-top" alt="...">
			  <div class="card-body">
			    
	            <div class="form-check">
				  <input class="form-check-input" type="radio" id="flexRadio1" name="moneyforhodu" value="5000">
				  <label class="fw-bold form-check-label" for="flexRadio1">50호두 - 5,000원</label>
				  
				  <input class="form-check-input" type="radio" id="flexRadio2"name="moneyforhodu" value="10000">
				  <label class="fw-bold form-check-label" for="flexRadio2">100호두 - 10,000원</label>
			
				  <input class="form-check-input" type="radio" id="flexRadio3"name="moneyforhodu" value="20000">
				  <label class="fw-bold form-check-label" for="flexRadio3">200호두 - 20,000원</label>
			
				  <input class="form-check-input" type="radio" id="flexRadio4"name="moneyforhodu" value="30000">
				  <label class="fw-bold form-check-label" for="flexRadio4">300호두 - 30,000원</label>
			
				  <input class="form-check-input" type="radio" id="flexRadio5"name="moneyforhodu" value="50000">
				  <label class="fw-bold form-check-label" for="flexRadio5">500호두 - 50,000원</label>
			
				  <input class="form-check-input" type="radio" id="flexRadio6"name="moneyforhodu" value="100000">
				  <label class="fw-bold form-check-label" for="flexRadio6">1000호두 - 100,000원</label>
				</div>
	           
	            <!-- <p class="fw-bold" style="color: #ffffff; display: flex;justify-content: center;margin-top: 30px">최소 충전금액은 5,000원이며 <br/>최대 충전금액은 100,000원 입니다.</p> -->
	            <div style="display: flex;justify-content: center;margin-top: 30px">
	            	<button type="button" class="btn btn-primary" id="charge_kakao">충 전 하 기</button>
	            </div>
			  </div>
			</div>
		</div>
		
		<%-- <div class="col-3">
			<div class="card bg-danger" style="width: 19rem;">
			<div class="card-header fw-bold border-5" style="text-align: center; background-color : white;">페이코</div>
			  <img src="${pageContext.request.contextPath}/resources/assets/image/payco.png" class="card-img-top" alt="...">
			  <div class="card-body">
			    <div class="form-check">
				  <input class="form-check-input" type="radio" id="flexRadio1"name="moneyforhodu">
				  <label class="fw-bold form-check-label" for="flexRadio1">50호두 - 5,000원</label>
				  
				  <input class="form-check-input" type="radio" id="flexRadio2"name="moneyforhodu">
				  <label class="fw-bold form-check-label" for="flexRadio2">100호두 - 10,000원</label>
				  
				  <input class="form-check-input" type="radio" id="flexRadio3"name="moneyforhodu">
				  <label class="fw-bold form-check-label" for="flexRadio3">200호두 - 20,000원</label>
				  
				  <input class="form-check-input" type="radio" id="flexRadio4"name="moneyforhodu">
				  <label class="fw-bold form-check-label" for="flexRadio4">300호두 - 30,000원</label>
				  
				  <input class="form-check-input" type="radio" id="flexRadio5"name="moneyforhodu">
				  <label class="fw-bold form-check-label" for="flexRadio5">500호두 - 50,000원</label>
				  
				  <input class="form-check-input" type="radio" id="flexRadio6"name="moneyforhodu">
				  <label class="fw-bold form-check-label" for="flexRadio6">1000호두 - 100,000원</label>
				</div>
	           
	            <!-- <p class="fw-bold" style="color: #ffffff; display: flex;justify-content: center;margin-top: 30px">최소 충전금액은 5,000원이며 <br/>최대 충전금액은 100,000원 입니다.</p> -->
	            <div style="display: flex;justify-content: center;margin-top: 30px">
	            	<button type="button" class="btn btn-primary" id="charge_payco">충 전 하 기</button>
	            </div>
			  </div>
			</div>
		</div> --%>
		
		<%-- <div class="col-3">
			<div class="card bg-success" style="width: 19rem;">
			<div class="card-header fw-bold border-5" style="text-align: center; background-color : white;">네이버페이</div>
			  <img src="${pageContext.request.contextPath}/resources/assets/image/npay.jpg" class="card-img-top" alt="...">
			  <div class="card-body">
			    <div class="form-check">
				  <input class="form-check-input" type="radio" id="flexRadio1"name="moneyforhodu">
				  <label class="fw-bold form-check-label" for="flexRadio1">50호두 - 5,000원</label>
				  
				  <input class="form-check-input" type="radio" id="flexRadio2"name="moneyforhodu">
				  <label class="fw-bold form-check-label" for="flexRadio2">100호두 - 10,000원</label>
				  
				  <input class="form-check-input" type="radio" id="flexRadio3"name="moneyforhodu">
				  <label class="fw-bold form-check-label" for="flexRadio3">200호두 - 20,000원</label>
				  
				  <input class="form-check-input" type="radio" id="flexRadio4"name="moneyforhodu">
				  <label class="fw-bold form-check-label" for="flexRadio4">300호두 - 30,000원</label>
				  
				  <input class="form-check-input" type="radio" id="flexRadio5"name="moneyforhodu">
				  <label class="fw-bold form-check-label" for="flexRadio5">500호두 - 50,000원</label>
				  
				  <input class="form-check-input" type="radio" id="flexRadio6"name="moneyforhodu">
				  <label class="fw-bold form-check-label" for="flexRadio6">1000호두 - 100,000원</label>
				</div>
	           
	            <!-- <p class="fw-bold" style="color: #ffffff; display: flex;justify-content: center;margin-top: 30px">최소 충전금액은 5,000원이며 <br/>최대 충전금액은 100,000원 입니다.</p> -->
	            <div style="display: flex;justify-content: center;margin-top: 30px">
	            	<button type="button" class="btn btn-primary" id="charge_npay">충 전 하 기</button>
	            </div>
			  </div>
			</div>
		</div> --%>
		
		<%-- <div class="col-3">
			<div class="card bg-white" style="width: 19rem;">
			<div class="card-header fw-bold border-5" style="text-align: center; background-color : white;">무통장 입금</div>
			  <img src="${pageContext.request.contextPath}/resources/assets/image/bank.png" class="card-img-top" alt="무통장입금이미지">
			  <div class="card-body">
	            <div class="form-check">
				  <input class="form-check-input" type="radio" name="moneyforhodu" value="5000" id="flexRadio1" >
				  <label class="fw-bold form-check-label bb" for="flexRadio1">50호두 - 5,000원</label>
				  
				  <input class="form-check-input" type="radio" name="moneyforhodu" value="10000" id="flexRadio2">
				  <label class="fw-bold form-check-label bb" for="flexRadio2">100호두 - 10,000원</label>
				  
				  <input class="form-check-input" type="radio" name="moneyforhodu" value="20000" id="flexRadio3">
				  <label class="fw-bold form-check-label bb" for="flexRadio3">200호두 - 20,000원</label>
				  
				  <input class="form-check-input" type="radio" name="moneyforhodu" value="30000" id="flexRadio4">
				  <label class="fw-bold form-check-label bb" for="flexRadio4">300호두 - 30,000원</label>
				  
				  <input class="form-check-input" type="radio" name="moneyforhodu" value="50000" id="flexRadio5">
				  <label class="fw-bold form-check-label bb" for="flexRadio5">500호두 - 50,000원</label>
				  
				  <input class="form-check-input" type="radio" name="moneyforhodu" value="100000" id="flexRadio6">
				  <label class="fw-bold form-check-label bb" for="flexRadio6">1000호두 - 100,000원</label>
				</div>
	           
	            <!-- <p class="fw-bold" style="color: #000000; display: flex;justify-content: center;margin-top: 30px">최소 충전금액은 5,000원이며 <br/>최대 충전금액은 100,000원 입니다.</p> -->
	            <div style="display: flex;justify-content: center;margin-top: 30px">
	            	<button type="button" class="btn btn-primary" id="charge_yes">충 전 하 기</button>
	            </div>
			  </div>
			</div>
		</div> --%>	
	</div>
</form>

<!-- Scripts
	<script src="${pageContext.request.contextPath}/resources/assets_mypage/assets/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets_mypage/assets/js/browser.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets_mypage/assets/js/breakpoints.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets_mypage/assets/js/util.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets_mypage/assets/js/main.js"></script> -->

<script>
var checked = 0;
//var price = document.getElementsByName('totalPrice');
//var price_value; // 여기에 선택된 radio 버튼의 값이 담기게 된다.
$("input:radio[name=moneyforhodu]").click(function(){
	/* for(var i=0; i<price.length; i++) {
	    if(price[i].checked) {
	    	price_value = price[i].value;
	    }
	}
	document.getElementById("moneyforhodu").value = price_value; */
	checked = 1;
})

$("#charge_kakao").on("click",function(){
	if(checked != 1){
		alert("충전하실 금액을 선택해주세요");
		return false;
	}
	$("#chargeform").submit();
})
/* $("#charge_payco").on("click",function(){
	alert("추후 업데이트 예정\n무통장 입금을 이용해주세요");
})
$("#charge_npay").on("click",function(){
	alert("추후 업데이트 예정\n무통장 입금을 이용해주세요");
})
$("#charge_yes").click(function(){
	
	$("#chargeform").submit();
}) */
</script>
</body>
<%----%> <%@ include file="../main/footer.jsp"%> 
</html> 