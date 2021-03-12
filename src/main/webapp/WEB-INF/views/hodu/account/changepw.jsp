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

<div class="titlebox">																
	<form action="updatepw" method="POST" id="updatepwform">
	<input type="hidden" name="member_id" id="member_id" value="${member.member_id}">
		<table class="table">
			<tbody class="t-control">
				<tr>
					<td class="t-title" style="padding:0;"><strong>변경할 패스워드</strong></td>
					<td>
						<input class="form-control input-sm" type="password" name="member_pw" id="member_pw" style="width:100%;" maxlength="11">
						<div class="member_pw regex"></div>
					</td>
				</tr>	                            
				<tr>
					<td class="t-title"><strong>패스워드 확인</strong></td>
					<td>
						<input class="form-control input-sm" type="password" id="repw" style="width:100%;" maxlength="11">
						<div class="repw regex"></div>
					</td>
				</tr>
				<tr></tr>	                                                                                   
		</tbody>
		</table> <br><br>
	
	
		<div class="container" >
			<div class="row row-cols-7" >
			
				<div class="col"></div>
				<div class="col"></div>
				<div class="col"></div>
				<div class="col"><input class="btn btn-reg" type="button" name="signup" value="변경 하기" id="changepwbtn"></div>
				<div class="col"></div>
				<div class="col"></div>
				<div class="col"></div>
					
			</div>
		</div>
	</form>                    
</div>	

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
			$("#changepwbtn").on("click", function() {
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