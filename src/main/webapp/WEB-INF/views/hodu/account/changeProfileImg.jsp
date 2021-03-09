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
<h1>프로필 사진 변경</h1>

<form action="changeImg" method="POST" id="changeImgform" enctype="multipart/form-data">
<input type="hidden" name="member_id" id="member_id" value="${member.member_id}">
	<label>프로필 사진: </label><br> 
	<img src="/project/upload/member/${member.member_img}" alt="회원이미지" id="originalImg"/>
	<!--<input type="image" src="" alt="바뀔 이미지" id="newImg"/>-->
	<!-- <input type="hidden" id="newImg" name="newImg"> -->
	 <div id="image_container"></div> 
	<input type="file" name="member_imgM" id="member_imgM" onchange="setThumbnail(event)"><br>
	
	<div id="signup">
		<input type="button" name="signup" value="변경하기" id="signupbtn">
		<input type="button" value="취소" onclick="goBack()">
		 <!--메인페이지로 연결!!! -->
	</div>
	
</form>
<script> 
var isPhoto = 0;
	function setThumbnail(event) { 
		var reader = new FileReader(); 
		reader.onload = function(event) { 
			//$('#originalImg').remove();
			$('img').remove();
			var img = document.createElement("img"); 
			img.setAttribute("src", event.target.result); 
			document.querySelector("div#image_container").appendChild(img); 
			}; 
		reader.readAsDataURL(event.target.files[0]);
		isPhoto = 1;
	} 
</script>

<script>
function goBack() {
    window.history.back();
}
$("#signupbtn").on("click", function() {
	
	if(isPhoto != 1){
		alert("사진 변경이 되지 않았습니다.");
		return false;
	}
	
	
	alert("사진 변경 완료!");
	$("#changeImgform").submit();
})


</script>
</body>
</html>