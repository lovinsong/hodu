<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
var isPhoto = 0;
 

function ResizeImage() {

var filesToUpload = document.getElementById('imageFile').files;

var file = filesToUpload[0];

 

// 문서내에 img 객체를 생성합니다

var img = document.createElement("img");

// 파일을 읽을 수 있는 File Reader 를 생성합니다

var reader = new FileReader();

 

    // 파일이 읽혀지면 아래 함수가 실행됩니다

reader.onload = function(e) {
		isPhoto = 1;
        img.src = e.target.result;

 

// HTML5 canvas 객체를 생성합니다

        var canvas = document.createElement("canvas");      

        var ctx = canvas.getContext("2d");

 

        // 캔버스에 업로드된 이미지를 그려줍니다

        ctx.drawImage(img, 0, 0);

 

        // 최대폭을 400 으로 정했다고 가정했을때

        // 최대폭을 넘어가는 경우 canvas 크기를 변경해 줍니다.

        var MAX_WIDTH = 400;

        var MAX_HEIGHT = 400;

        var width = img.width;

        var height = img.height;

 

        if (width > height) {

            if (width > MAX_WIDTH) {

                height *= MAX_WIDTH / width;

                width = MAX_WIDTH;

            }

        } else {

            if (height > MAX_HEIGHT) {

                width *= MAX_HEIGHT / height;

                height = MAX_HEIGHT;

            }

        }

        canvas.width = width;

        canvas.height = height;

 

        // canvas에 변경된 크기의 이미지를 다시 그려줍니다.

        var ctx = canvas.getContext("2d");

        ctx.drawImage(img, 0, 0, width, height);

 

// canvas 에 있는 이미지를 img 태그로 넣어줍니다

        var dataurl = canvas.toDataURL("image/png");

        document.getElementById('output').src = dataurl;

    }

reader.readAsDataURL(file);

}
</script>
</head>
<style>
#resize{
	display : none;
}
</style>
<body>
<!-- header 파일 포함 코드 -->
<%@ include file="../headerfooter/hoduheader.jsp"%>
<h1>멘토가입</h1>
<form action="mentor-registing" method="post" id="mentorform" enctype="multipart/form-data">

<input type="hidden" name="member_id" id="member_id" value="${member.member_id}">

<!-- 이미지 첨부 -->
<div>
	<span>프로필 사진 등록 :</span>
	<input type="file" name="member_imgM" id="imageFile" ><br>
	<img src="" id="output"><br>
	<input type="button" value="Resize Image" id="resize" onclick="ResizeImage()"/>
</div>
<br>
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
$("#imageFile").change(function(){
	$("#resize").trigger("click");
	$("#resize").trigger("click");
	
})

$("#signupbtn").on("click", function() {
	//var croppic = $("#cropped").val();
	
	if($('input[name=req]').is(":checked")){
    	contractCheck = 1;
	}
	if(isPhoto != 1){
		alert("사진 등록은 필수입니다");
		return false;
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
