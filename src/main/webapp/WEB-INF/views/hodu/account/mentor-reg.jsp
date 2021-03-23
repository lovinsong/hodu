<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<%@ include file="../main/header.jsp"%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.4.1.js"
	integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
	crossorigin="anonymous">
</script>
<!-- CSS Libraries -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0"
	crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css"
	integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl"
	crossorigin="anonymous">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets_mypage/assets/css/main.css" />

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
		//여기의 max_width와 max_height를 원하는 크기로 조절하시면 됩니다!
        var MAX_WIDTH = 200;

        var MAX_HEIGHT = 200;

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
#resize {
	display: none;
}
</style>

<body>
	<!-- header 파일 포함 코드 -->

	<div class="container">
		<div class="p-4"></div>
		<form action="mentor-registing" method="post" id="mentorform"
			enctype="multipart/form-data">
			<div class="row" style="font-size: 30px">
				<div class="col-12" >
					<h3 style="text-align: center; border-bottom: 1px solid rgba(222, 222, 222, 0.25); padding-bottom: 30px">멘토 등록&nbsp;&nbsp;✔</h3>
				</div>

				<div style="text-align: center"><img style="border-radius: 80px" src="" id="output"> </div>
				<div class="col-3" ></div>
				<div class="col-2">사진 등록</div>
				<div class="col-6" style="padding-top:33px">
					<input
						type="file" name="member_imgM" id="imageFile"
						onchange="chk_file_type(this)" accept="image/*">
				</div>

				<div class="col-3"></div>
				<div class="col-2">이름</div>
				<div class="col-6">${member.member_name}</div>
				<div class="col-1"></div>

				<div class="p-1"></div>

				<div class="col-3"></div>
				<div class="col-2">닉네임</div>
				<div class="col-6">${member.member_nickname}</div>
				<div class="col-1"></div>
				<div class="p-1"></div>


				<div class="col-3"></div>
				<div class="col-2">전화번호</div>
				<div class="col-6">${member.member_phone}</div>
				<div class="col-1"></div>

				<div class="p-1"></div>

				<div class="col-3"></div>
				<div class="col-2">이메일</div>
				<div class="col-6">${member.member_email}</div>
				<div class="col-1"></div>

				<div class="p-1"></div>
				<div class="col-3"></div>
				<div class="col-2">
					<input type="hidden" name="member_id" id="member_id"
						value="${member.member_id}"> <input type="button"
						value="Resize Image" id="resize" onclick="ResizeImage()" />

					<p>약관 동의</p>
				</div>
				<div class="col-6">
					<!-- 
					<img style="border-radius: 60px" src="" id="output">
					<input type="file"name="member_imgM" id="imageFile" onchange="chk_file_type(this)"
						accept="image/*">
					 -->
					<input
						class="btn btn-reg" type="button" id="gotojoinform"
						value="약관에 동의합니다" /> <input class="form-check-input req"
						type="checkbox" id="req" name="req" disabled="disabled">
						<label class="form-check-label" for="req"></label>
				</div>
				<div class="col-1"></div>

			</div>

				<div class="row" style="margin-top: 3px ">


					<div align="center" class="col-10" style="margin-left: 40px; border-top: 1px solid rgba(222, 222, 222, 0.1)">
						<input class="btn btn-reg" type="button" value="가입하기"
							id="mentorbtn">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<input class="btn btn-reg" type="button" value="메인 페이지"
							id="mainpage" onclick="location.href='mainpage'">
					</div>



				</div>
		</form>
	</div>


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

$("#mentorbtn").on("click", function() {
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

function chk_file_type(obj) {

        	var file_kind = obj.value.lastIndexOf('.');

        	var file_name = obj.value.substring(file_kind+1,obj.length);

        	var file_type = file_name.toLowerCase();


        	check_file_type=['jpg','gif','png','jpeg','bmp','tif'];



        	if(check_file_type.indexOf(file_type)==-1) {

        		alert('이미지 파일만 업로드 해주세요');

        		var parent_Obj=obj.parentNode;

        		var node=parent_Obj.replaceChild(obj.cloneNode(true),obj);



        		document.getElementById(obj.getAttribute('id')).value = "";    //초기화를 위한 추가 코드

        		document.getElementById(obj.getAttribute('id')).select();        //초기화를 위한 추가 코드

        		document.execCommand('Delete');                                                //일부 브라우저 미지원

        		return false;

        	}

        }


</script>

	<!-- Scripts -->
	<script
		src="${pageContext.request.contextPath}/resources/assets_mypage/assets/js/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets_mypage/assets/js/browser.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets_mypage/assets/js/breakpoints.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets_mypage/assets/js/util.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets_mypage/assets/js/main.js"></script>

</body>
</html>
<%@ include file="../main/footer.jsp"%>
