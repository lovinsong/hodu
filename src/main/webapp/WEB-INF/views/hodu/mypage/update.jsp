<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내 정보 수정</title>
<script
	src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script 
	src="https://code.jquery.com/jquery-3.4.1.js" 
	integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU=" 
	crossorigin="anonymous">
</script>

</head>
<style>
#wrapper {
	border: 2px solid;
	border-color: #692e1d;
	border-radius: 5px;;
	width: 500px;
	height: 600px;
	margin: auto;
}

.title {
	text-align: center;
	font-size: 20px;
	font-weight: bold;
	color: #692e1d;
	margin: 20px 0px 20px 0px;
}

label {
	width: 95px;
	display: inline-block;
	text-align: right;
	font-size: 13px;
}

input {
	margin: 3px 5px;
	border-radius: 3px;
	background-color: transparent;
	border: 1px solid darkgray;
	height: 20px;
	outline: none;
}

#signup {
	text-align: center;
	margin: 5px;
}

input[type=button], input[type=reset] {
	border: 1px solid salmon;
	border-radius: 3px;
	background-color: transparent;
	margin: 0px;
	height: 24px;
	color: salmon;
}

input[type=button]:hover, input[type=reset]:hover {
	background-color: salmon;
	transition-duration: 1s;
	color: white;
	outline: none;
}

#roadAddress, #detailAddress {
	width: 170px;
}

.regex {
	font-size: 12px;
	text-align: center;
}


.id_input{
	background-color: #ebebe4;
}


.correct {
	color: green;
}

.incorrect {
	color: red;
}


.nick_input_re_1{
	color:green;
	display:none;
}
.nick_input_re_2{
	color:red;
	display:none;
}


</style>
<body>

<h1>내 정보 수정</h1>

<form action="update" method="POST" id="updateform">
	<div id="wrapper">
		<div class="title"><p>${member.member_name }님의 회원정보</p></div>
		
		
		<label>아이디 :</label><input class="id_input" name="member_id" id="member_id" value="${member.member_id}" readonly>
		<div class="a"></div><!-- 일단 한칸 띄어주는 용도(아무런 기능 없음)-->
		
		
		<label>패스워드 : </label><input type="password" name="member_pw" id="member_pw" maxlength="11" value="${member.member_pw}" ><br>
		<div class="member_pw regex"></div>
		
		<label>패스워드확인 : </label><input type="password" id="repw" maxlength="11"><br>
		<div class="repw regex"></div>

		<label>이름: </label>&nbsp; ${member.member_name}<br>
		<div class="member_name regex"></div>

		<label>닉네임: </label><input class="nick_input" type="text" name="member_nickname" id="member_nickname" value="${member.member_nickname}">
		<span class="nick_input_re_1">사용 가능한 닉네임입니다.</span>
		<span class="nick_input_re_2">닉네임이 이미 존재합니다.</span>
		<div class="member_nickname regex"></div>
		
		<label>호두: </label>&nbsp; ${member.member_cash}<br>

		<label>전화번호 : </label>&nbsp; ${member.member_phone}<br>
		<div class="member_phone regex"></div>

		<label>이메일: </label>&nbsp; ${member.member_email}<br>

		

		<label>주소 : </label><input type="text" id="roadAddress" placeholder="도로명주소" name="member_address" value="${member.member_address}"> 
		<input type="button" onclick="sample4_execDaumPostcode()" value="주소 찾기">
		<div id="signup">
			<input type="button" name="signup" value="수정 하기" id="signupbtn">
			<input type="button" value="취소" onclick="location.href='backtomypage'"><br><!-- 연결 안됨!!! -->
			<input type="button" value="회원 탈퇴" id="deletebtn">
		</div>
	</div>
</form>
<script>
		var samePw = ""; 
		var existNickname = "";
		
		//다음 우편번호 API
		//본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
		function sample4_execDaumPostcode() {
			new daum.Postcode({
				oncomplete : function(data) {
					// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
					// 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
					// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
					var roadAddr = data.roadAddress; // 도로명 주소 변수
					var extraRoadAddr = ''; // 참고 항목 변수
					// 법정동명이 있을 경우 추가한다. (법정리는 제외)
					// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
					if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
						extraRoadAddr += data.bname;
					}
					// 건물명이 있고, 공동주택일 경우 추가한다.
					if (data.buildingName !== '' && data.apartment === 'Y') {
						extraRoadAddr += (extraRoadAddr !== '' ? ', '
								+ data.buildingName : data.buildingName);
					}

					// 우편번호와 주소 정보를 해당 필드에 넣는다.
					//document.getElementById('postcode').value = roadAddr;
					document.getElementById("roadAddress").value = roadAddr;
				}
			}).open();
		}

		
		
		//!!!작동 닉네임
		$('.nick_input').on("propertychange change keyup paste input",function(){ //
			//console.log("keyup 테스트");
			var member_nickname = $('.nick_input').val(); 
			//var member_id = $('.id_input').html();
			var member_id = $('.id_input').val(); 
			var data = {member_nickname : member_nickname, member_id : member_id} // '컨트롤에 넘길 데이터 이름' : '데이터(.id_input에 입력되는 값)' 
			$.ajax({ 
				type : "post", 
				url : "memberNickChk", 
				data : data,
				success : function(result){ 
					console.log("성공 여부" + result);

					if(result != 'fail'){
						$('.nick_input_re_1').css("display","inline-block"); 
						$('.nick_input_re_2').css("display", "none"); 
						existNickname = result;
					} else { 
						$('.nick_input_re_2').css("display","inline-block"); 
						$('.nick_input_re_1').css("display", "none"); 
						existNickname = result;
					}

				}// success 종료
			}); // ajax 종료		
		});// function 종료
		
		
		
		
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

			
			
			//회원가입 버튼 눌렀을 때, 빈칸 있으면 다시 유효성 검사진행    
			$("#signupbtn").on("click", function() {
				var pw = $("#member_pw").val();
				var nickname = $("#member_nickname").val();
				var address = $("#roadAddress").val();
				var pwCheck = $("#repw").val();

				var pwregex = /^[A-Za-z\d]{8,12}$/;
				var nicknameregex = /[ㄱ-힣0-9A-Za-z]{1,}/;

				
				var pwregex = pwregex.exec(pw);
				if (pwregex == null) {
					alert("비밀번호양식을 다시 확인해주세요\n(영어,숫자 8~12글자)");
					return;
				}
				if(pwCheck == ""){
					alert("패스워드 확인을 입력해주세요");
					return;
				}
				if(samePw == 'fail'){                            
			        alert("패스워드확인 값이 일치하지 않습니다\n다시 입력해주세요");
			    	return;
			    }
				
				var nicknameregex = nicknameregex.exec(nickname);
				if (nicknameregex == null) {
					alert("닉네임을 입력해주세요\n(한글자 이상 필수, 특수문자 금지)");
					return;
				}
				if(existNickname == 'fail'){                            
			        alert("중복된 닉네임입니다\n다시 입력해주세요");
			    	return;
			    }
				
				
			    if (address == "") {
					alert("주소입력을 완료해주세요");
					return;
				}

				//빈칸 없을 때 제출.
				$("#updateform").submit();

			})
			
			
			$("#deletebtn").on("click", function() {
				var pw = $("#member_pw").val();
				var pwCheck = $("#repw").val();

				//패스워드 원래거랑 같아야 삭제가능

				
				
				
				if(pwCheck == ""){
					alert("패스워드 확인을 입력해주세요");
					return;
				}
				if(samePw == 'fail'){                            
			        alert("패스워드확인 값이 일치하지 않습니다\n다시 입력해주세요");
			    	return;
			    }
				
				
				//빈칸 없을 때 제출.
				$("#updateform").submit();

			})
			
			
		})

		

	</script>
</body>
</html>