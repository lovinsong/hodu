<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 변경</title>
<script 
	src="https://code.jquery.com/jquery-3.4.1.js" 
	integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU=" 
	crossorigin="anonymous">
</script>
</head>
<body>
<h1>비밀번호 변경 페이지</h1>
<form action="updatepw" method="POST" id="updatepwform">
		<input type="hidden" class="id_input" name="member_id" id="member_id" value="${member.member_id}" readonly>
		
		<label>변경할 패스워드 : </label><input type="password" name="member_pw" id="member_pw" maxlength="11"><br>
		<div class="member_pw regex"></div>
		
		<label>패스워드확인 : </label><input type="password" id="repw" maxlength="11"><br>
		<div class="repw regex"></div>

		
		<div id="signup">
			<input type="button" name="signup" value="변경 하기" id="signupbtn"><br>
			<!--<input type="button" value="취소 하기" id="nodelete" onclick="location.href='mainpage'"> 취소하면 메인페이지로 -->
		</div>
	
</form>
<script>
		var samePw = ""; 
		
		
		$(function() {             
			
			//비밀번호 유효성검사
			$("#member_pw").on("input", function() {
				var regex = /^[A-Za-z\d]{8,12}$/;
				var result = regex.exec($("#member_pw").val())

				if (result != null) {
					$(".member_pw.regex").html("");
				} else {
					$(".member_pw.regex").html("영어대소문자,숫자 8-11자리");
					$(".member_pw.regex").css("color", "red")
				}
			});

			//비밀번호 확인    
			$("#repw").on("keyup", function() {
				if ($("#member_pw").val() == $("#repw").val()) {
					$(".repw.regex").html("비밀번호가 일치합니다");
					samePw = 'success';
				} else {
					$(".repw.regex").html("비밀번호가 일치하지않습니다");
					samePw = 'fail';
				}
			})

			$("#member_pw").on("propertychange change keyup paste input", function() {
				
						if ($("#member_pw").val() == $("#repw").val()) {
							$(".repw.regex").html("비밀번호가 일치합니다");
							samePw = 'success';
						} else {
							$(".repw.regex").html("비밀번호가 일치하지않습니다");
							samePw = 'fail';
						}
					
			})
			
			//회원가입 버튼 눌렀을 때, 빈칸 있으면 다시 유효성 검사진행    
			$("#signupbtn").on("click", function() {
				var pw = $("#member_pw").val();
				var pwCheck = $("#repw").val();

				var pwregex = /^[A-Za-z\d]{8,12}$/;
				
				if(pw == ""){
					alert("변경하실 비밀번호를 입력해주세요");
					return;
				}
				if(pwCheck == ""){
					alert("패스워드 확인을 입력해주세요");
					return;
				}
				var pwregex = pwregex.exec(pw);
				if (pwregex == null) {
					alert("비밀번호양식을 다시 확인해주세요\n(영어,숫자 8~12글자)");
					return;
				}
				if(samePw == 'fail'){                            
			        alert("패스워드확인 값이 일치하지 않습니다\n다시 입력해주세요");
			    	return;
			    }
				
				

				//빈칸 없을 때 제출.
				alert("비밀번호 변경 완료!");
				$("#updatepwform").submit();

			})
			
		})

		

</script>


</body>
</html>