<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>탈퇴 페이지</title>
<script
	src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script 
	src="https://code.jquery.com/jquery-3.4.1.js" 
	integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU=" 
	crossorigin="anonymous">
</script>
</head>
<body>
<h1>회원탈퇴</h1>
<form action="delete" method="POST" id="deleteform">
	<div id="wrapper">
		<div class="title"><p>${member.member_name }님 정말 떠나실건가요?</p></div>
		
		
		<label>아이디 :</label><input class="id_input" name="member_id" id="member_id" value="${member.member_id}" readonly>
		<div class="a"></div><!-- 일단 한칸 띄어주는 용도(아무런 기능 없음)-->
		
		
		<label>패스워드 : </label><input type="password" name="member_pw" id="member_pw" maxlength="11"><br>
		<div class="member_pw regex"></div>
		
		<!-- <label>패스워드확인 : </label><input type="password" id="repw" maxlength="11"><br>
		<div class="repw regex"></div> -->

		 회원 탈퇴시 복구가 불가합니다. 탈퇴하시겠습니까?<input type="checkbox" name="req">네
		
		<div id="signup">
			<input type="button" name="signup" value="탈퇴 하기" id="signupbtn"><br>
			<!--<input type="button" value="취소 하기" id="nodelete" onclick="location.href='mainpage'"> 취소하면 메인페이지로 -->
		</div>
	</div>
</form>
<script>
	//var samePw = ""; 
	var isPwOriginal ="";
	var contractCheck = 0;
	
	
	$('#member_pw').on("propertychange change keyup paste input",function(){
		//console.log("keyup 테스트");
		var pw = $("#member_pw").val();
		var pwCheck = $("#repw").val();
		var member_id = $('.id_input').val(); 
		//패스워드 원래거랑 같아야 삭제가능
		var data = {member_pw : pw, member_id : member_id} // '컨트롤에 넘길 데이터 이름' : '데이터(.id_input에 입력되는 값)'
		$.ajax({ 
			type : "post", 
			url : "memberPwChk", 
			data : data,
			success : function(result){ 
				console.log("성공 여부" + result);

				if(result != 'fail'){//성공이면
					isPwOriginal = result;
				} else { 
					isPwOriginal = result;
				}
			}// success 종료
		}); // ajax 종료
		
	});// function 종료

	
	$(function() {  
		
		//비밀번호 확인    
		//$("#repw").on("propertychange change keyup paste input", function() {
		//	if ($("#member_pw").val() == $("#repw").val()) {
		//		$(".repw.regex").html("비밀번호가 일치합니다");
		//		samePw = 'success';
		//	} else {
		//		$(".repw.regex").html("비밀번호가 일치하지않습니다");
		//		samePw = 'fail';
		//	}
		//})
			
			//회원가입 버튼 눌렀을 때, 빈칸 있으면 다시 유효성 검사진행    
			$("#signupbtn").on("click", function() {
				var pw = $("#member_pw").val();
				//var pwCheck = $("#repw").val();
				
				//$("#member_pw").on("propertychange change keyup paste input", function() {
				
				//		if ($("#member_pw").val() == $("#repw").val()) {
				//			$(".repw.regex").html("비밀번호가 일치합니다");
				//			samePw = 'success';
				//		} else {
				//			$(".repw.regex").html("비밀번호가 일치하지않습니다");
				//			samePw = 'fail';
				//		}
					
				//})
				
				
				if(pw == ""){
					alert("비밀번호를 입력해주세요");
					return;
				}
				//if(pwCheck == ""){
				//	alert("패스워드 확인을 입력해주세요");
				//	return;
				//}
				if(isPwOriginal == 'fail'){                            
			        alert("패스워드 값이 일치하지 않습니다\n계정 비밀번호를 다시 입력해주세요");
			        samePw = "";
			    	return;
			    }
				//if(samePw == 'fail'){                            
			    //    alert("패스워드확인 값이 일치하지 않습니다\n다시 입력해주세요");
			    //	return;
			    //}
				
				if($('input[name=req]').is(":checked")){
			    	contractCheck = 1;
				}
				if(contractCheck !=1){
					alert("탈퇴 약관에 동의하셔야 합니다.");
					return;
				}
				
				if(isPwOriginal == 'success'){                            
			        alert("회원 탈퇴 완료");
			        //빈칸 없을 때 제출.
					$("#deleteform").submit();
			    }

			})
			
		})



</script>
</body>
</html>