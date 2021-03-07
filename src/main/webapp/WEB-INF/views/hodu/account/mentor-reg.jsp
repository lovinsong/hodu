<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<!-- header 파일 포함 코드 -->
<%@ include file="../headerfooter/hoduheader.jsp"%>
<body>

<h1>멘토가입</h1>
<form action="mentor-registing" method="post" id="mentorform" enctype="multipart/form-data">
<input type="hidden" name="member_id" id="member_id" value="${member.member_id}">
<!-- 이미지 첨부 -->
<input type="file" name="member_imgM">

<div id="contract">
				<!-- 약관 보러가기 -->
				<input type="button" id="gotojoinform" value="약관 보기" /><br>
				<input type="checkbox" class="req" name="req" id="req" disabled="disabled"> 멘토 등록 약관에 동의합니다.
				
</div>
<div id="signup">
				<input type="button" name="signup" value="가입하기" id="signupbtn">
				<input type="button" value="메인 페이지" onclick="location.href='mainpage'">
				<!-- 메인페이지로 연결!!! -->
</div>
</form>
<script>
	// 약관 보러 가기에 관한 스크립트
	
	var popupX = (window.screen.width / 2) - (500 / 2);
	//&nbsp;만들 팝업창 좌우 크기의 1/2 만큼 보정값으로 빼주었음

	var popupY = (window.screen.height / 2) - (600 / 2);
	//&nbsp;만들 팝업창 상하 크기의 1/2 만큼 보정값으로 빼주었음
    
	// 회원약관 바로가기 바로가기
    
        $("#gotojoinform").click(function(){
            window.open("../account/joinform", "회원 약관", 'status=no, width=550, height=600, left='+ popupX + ', top='+ popupY);
        });
</script>
<script>
var contractCheck = 0;

$("#signupbtn").on("click", function() {
	if($('input[name=req]').is(":checked")){
    	contractCheck = 1;
	}
	if(contractCheck !=1){
		alert("멘토등록 약관에 동의하셔야 합니다.");
		return;
	}

	//빈칸 없을 때 제출.
	alert("멘토 가입 완료!");
	$("#mentorform").submit();
})





</script>
</body>
</html>