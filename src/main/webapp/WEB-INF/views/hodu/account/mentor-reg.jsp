<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath}/resources/assets/js/cropper.min.css" media="screen" rel="stylesheet" type="text/css">

</head>
<style type="text/css">
        img {
            display: block;
            max-width: 100%;
        }
        .preview {
            overflow: hidden;
            width: 160px; 
            height: 160px;
            margin: 10px;
            border: 1px solid red;
        }
        
    </style>

<!-- header 파일 포함 코드 -->
<%@ include file="../headerfooter/hoduheader.jsp"%>

<body>

<h1>멘토가입</h1>

<form action="mentor-registing" method="post" id="mentorform" enctype="multipart/form-data">
<input type="hidden" name="member_id" id="member_id" value="${member.member_id}">

<!-- 이미지 첨부 -->
<!-- <input type="file" name="member_imgM" class="image"> -->
<input type="file" name="member_imgM" class="member_imgM" id="member_imgM">

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

<img id ="show_img" src="" alt=""  />



        <div class="modal fade" id="modal" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="modalLabel">Crop image</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">×</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="img-container">
                            <div class="row">
                                <div class="col-md-8">  
                                    <!--  default image where we will set the src via jquery-->
                                    <img id="image">
                                </div>
                                <div class="col-md-4">
                                    <div class="preview"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                        <button type="button" class="btn btn-primary" id="crop">Crop</button>
                    </div>
                </div>
            </div>
        </div>

</form>

<!-- <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script> -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/assets/js/cropper.min.js" ></script>
<script>

   

</script>




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
	//var croppic = $("#cropped").val();
	
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
