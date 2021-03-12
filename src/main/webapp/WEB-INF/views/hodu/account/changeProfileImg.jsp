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

        var MAX_WIDTH = 300;

        var MAX_HEIGHT = 300;

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
/*버튼 숨기는 코드(없애면 안됨!)*/
#resize{
	display : none;
}

</style>
<body>

<div class="titlebox">																
	<form action="changeImg" method="POST" id="changeImgform" enctype="multipart/form-data">
	<input type="hidden" name="member_id" id="member_id" value="${member.member_id}">
		<table class="table">
			<tbody class="t-control">
				<tr>
					
					<td style="text-align:center; margin-left: -50px; font-size:15px;">
						<img src="/project/upload/member/${member.member_img}" onerror="this.style.display='none'" style="width: 200px;height: auto; border-radius:50%; opacity:0.95;"><br><br>
						사진 업로드하기: &emsp;<input type="file" name="member_imgM" id="imageFile" style="font-size: 15px; margin-bottom:0;">
					   <input type="button" value="Resize Image" id="resize" onclick="ResizeImage()"/>
					
					</td>
				</tr>	                            
	                                                                                   
		</tbody>
		</table> <br><br>
	
	
		<div class="container" >
			<div class="row row-cols-7" >
			
				<div class="col"></div>
				<div class="col"></div>
				<div class="col"></div>
				<div class="col"><input class="btn btn-reg" type="button" value="변경 하기" id="changeImgbtn"></div>
				<div class="col"></div>
				<div class="col"></div>
				<div class="col"></div>
					
			</div>
		</div>
	</form>                    
</div>	

<%-- <form action="changeImg" method="POST" id="changeImgform" enctype="multipart/form-data">
<input type="hidden" name="member_id" id="member_id" value="${member.member_id}">
	<label>현재 프로필 사진: </label> 
	<!-- <img src="/project/upload/member/${member.member_img}" alt="회원이미지" id="originalImg"/><br> -->
	<img src="/project/upload/member/${member.member_img}" style="width: 200px;height: auto;">
	<!--<input type="image" src="" alt="바뀔 이미지" id="newImg"/>-->
	<!-- <input type="hidden" id="newImg" name="newImg"> -->
	<!--  <div id="image_container"></div> --> 
	
	<input type="file" name="member_imgM" id="imageFile" ><br>
	
	<label>변경될 프로필 사진: </label><img src="" id="output"><br>
	<input type="button" value="Resize Image" id="resize" onclick="ResizeImage()"/>
	
	<div id="signup">
		<input type="button" name="signup" value="변경하기" id="changeImgbtn">
		<!-- <input type="button" value="취소" onclick="goBack()"> -->
	</div>
	
</form> --%>
<!-- <script> 
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
</script> -->

<script>
$("#imageFile").change(function(){
	$("#resize").trigger("click");
	$("#resize").trigger("click");
	
})
function goBack() {
    window.history.back();
}
$("#changeImgbtn").on("click", function() {
	
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