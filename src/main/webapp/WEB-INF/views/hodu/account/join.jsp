<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 등록 페이지</title>
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
	height: 650px;
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

#signup, #contract {
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
	width: 280px;
}

.regex {
	font-size: 12px;
	text-align: center;
}

#mail_check_input_box_false {
	background-color: #ebebe4;
}

#mail_check_input_box_true {
	background-color: white;
}
/* 메일 영역 */
.mail_wrap {
	width: 100%;
	margin-top: 20px;
}

.mail_name {
	font-size: 25px;
	font-weight: bold;
}

.mail_input_box {
	border: 1px solid black;
	height: 31px;
	padding: 10px 14px;
}

.mail_input {
	width: 100%;
	height: 100%;
	border: none;
	font-size: 28px;
}

.mail_check_wrap {
	margin-top: 20px;
}

.mail_check_input_box {
	border: 1px solid black;
	height: 31px;
	padding: 10px 14px;
	width: 61%;
	float: left;
}

.mail_check_input {
	width: 100%;
	height: 100%;
	border: none;
	font-size: 28px;
}

.mail_check_button {
	border: 1px solid black;
	height: 51px;
	width: 30%;
	float: right;
	line-height: 50px;
	text-align: center;
	font-size: 30px;
	font-weight: 900;
	background-color: #ececf7;
	cursor: pointer;
}

.correct {
	color: green;
}

.incorrect {
	color: red;
}

.id_input_re_1{
	color:green;
	display:none;
}

.id_input_re_2{
	color:red;
	display:none;
}
.id_input_re_3{
	color:red;
	display:none;
}

.nick_input_re_1{
	color:green;
	display:none;
}
.nick_input_re_2{
	color:red;
	display:none;
}

.phone_input_re_1{
	color:green;
	display:none;
}
.phone_input_re_2{
	color:red;
	display:none;
}
.mail_input_re_1{
	color:green;
	display:none;
}
.mail_input_re_2{
	color:red;
	display:none;
}
</style>
<body>
	<form action="join" method="POST" id="signform">
		<div id="wrapper">
			<div class="title">회원 가입 정보 입력</div>
			
			
			<label>아이디 : </label><input class="id_input" type="text" name="member_id" id="member_id" maxlength="11">
			<span class="id_input_re_1">사용 가능한 아이디입니다.</span>
			<span class="id_input_re_2">아이디가 이미 존재합니다.</span>
			<span class="id_input_re_3">(영문,숫자 5~11글자로만 가능)</span>
			<div class="a"></div><!-- 일단 한칸 띄어주는 용도(아무런 기능 없음) -->
			
			
			<label>패스워드 : </label><input type="password" name="member_pw" id="member_pw" maxlength="11"><br>
			<div class="member_pw regex"></div>

			<label>패스워드확인 : </label><input type="password" id="repw" maxlength="11"><br>
			<div class="repw regex"></div>

			<label>이름: </label><input type="text" name="member_name" id="member_name"><br>
			<div class="member_name regex"></div>

			<label>닉네임: </label><input class="nick_input" type="text" name="member_nickname" id="member_nickname">
			<span class="nick_input_re_1">사용 가능한 닉네임입니다.</span>
			<span class="nick_input_re_2">닉네임이 이미 존재합니다.</span>
			<div class="member_nickname regex"></div>
			

			<label>전화번호 : </label><input class="phone_input" type="text" name="member_phone"
				id="member_phone" placeholder="- 과 공백 없이 입력" maxlength="11"><br>
			<div class="member_phone regex"></div>
			<span class="phone_input_re_1">가입되지 않은 번호입니다.(사용 가능)</span>
			<span class="phone_input_re_2">이미 가입된 번호입니다.</span>

			<!-- 
			<label>이메일 : </label><input type="text" name="member_email"
				id="member_email"><br>
			<div class="member_email regex"></div>
	 -->
			<div class="mail_warp">
				<div class="mail_name">이메일</div>
				<div class="mail_input_box">
					<input class="mail_input" name="member_email" id="member_email" readonly="readonly">
					<div class="member_email regex"></div>
				</div>
				<div class="mail_check_wrap">
					<div class="mail_check_input_box" id="mail_check_input_box_false">
						<input class="mail_check_input" id="confirmnum" disabled="disabled">
					</div>
					<div class="mail_check_button">
						<span>인증번호 전송</span>
					</div>
					<div class="clearfix"></div>
					<span id="mail_check_input_box_warn"></span>
				</div>
			</div>

			

			<label>우편번호 :</label><input type="text" id="postcode" placeholder="우편번호" name="member_postcode" readonly>
			<input type="button" onclick="sample4_execDaumPostcode()" value="주소 찾기"><br>
			<label>주소1 : </label><input type="text" id="roadAddress" placeholder="도로명주소" name="member_address" readonly><br>
			<label>주소2 : </label><input type="text" id="detailAddress" placeholder="상세주소" name="member_detailaddress"><br>
			
			<label>약관동의</label>
			<textarea rows="1" cols="35" readonly>
			가. 수집하는 개인정보의 항목첫째, 회사는 회원가 입, 원활한 고객상담, 각종 서비스의 제공을 위해 최초 회원가입 당시 아래와 같은 최소한의 개인정보를 필수항목으로 수집하고 있습니다.
			회원가입
			- 이름, 생년월일, 성별, 아이디, 비밀번호, 별명, 연락처(메일주소, 휴대폰 번호 중 선택), 가입인증정보
			만14세 미만 아동 회원가입
			- 이름, 생년월일, 성별, 법정대리인 정보, 아이디, 비밀번호, 연락처 (메일주소, 휴대폰 번호 중 선택), 가입인증정보
			단체아이디 회원가입
			- 단체아이디, 회사명, 대표자명, 대표 전화번호, 대표 이메일 주소, 단체주소, 관리자 아이디, 관리자 연락처, 관리자 부서/직위
			- 선택항목 : 대표 홈페이지, 대표 팩스번호
			둘째, 서비스 이용과정이나 사업처리 과정에서 아래와 같은 정보들이 자동으로 생성되어 수집될 수 있습니다.
			- IP Address, 쿠키, 방문 일시, 서비스 이용 기록, 불량 이용 기록
			셋째, 네이버 아이디를 이용한 부가 서비스 및 맞춤식 서비스 이용 또는 이벤트 응모 과정에서 해당 서비스의 이용자에 한해서만 개인정보 추가 수집이 발생할 수 있으며, 이러한 경우 별도의 동의를 받습니다.
			넷째, 성인컨텐츠, 유료/게임 등 일부 서비스 이용시 관련 법률 준수를 위해 본인인증이 필요한 경우, 아래와 같은 정보들이 수집될 수 있습니다.
			- 이름, 생년월일, 성별, 중복가입확인정보(DI), 암호화된 동일인 식별정보(CI), 휴대폰 번호(선택), 아이핀 번호(아이핀 이용시), 내/외국인 정보
			다섯째, 유료 서비스 이용 과정에서 아래와 같은 결제 정보들이 수집될 수 있습니다.
			- 신용카드 결제시 : 카드사명, 카드번호 등
			- 휴대전화 결제시 : 이동전화번호, 통신사, 결제승인번호 등
			- 계좌이체시 : 은행명, 계좌번호 등
			- 상품권 이용시 : 상품권 번호
			나. 개인정보 수집방법회사는 다음과 같은 방법으로 개인정보를 수집합니다.
			- 홈페이지, 서면양식, 팩스, 전화, 상담 게시판, 이메일, 이벤트 응모, 배송요청
			- 협력회사로부터의 제공
			- 생성정보 수집 툴을 통한 수집
			</textarea><br>
			
			<div id="contract">
				<input type="checkbox" name="req"> 개인정보 수집 및 이용에 동의합니다.
			</div>

			

			
			<div id="signup">
				<input type="button" name="signup" value="가입하기" id="signupbtn">
				<input type="button" value="메인 페이지" onclick="location.href='mainpage'"><!-- 메인페이지로 연결!!! -->
			</div>
		</div>
	</form>
	<script>
		var existId = "";
		var samePw = ""; 
		var existNickname = "";
		var existPhone = "";
		var code = ""; // 이메일 전송인증번호 저장을 위한 코드
		$("#member_email").attr('readonly', false);
		var contractCheck = 0;
		

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
					document.getElementById('postcode').value = data.zonecode;
					document.getElementById("roadAddress").value = roadAddr;
					document.getElementById("detailAddress").focus();
				}
			}).open();
		}
		
		
		
		

		//!!!작동 아이디
		$('.id_input').on("propertychange change keyup paste input",function(){ 
			var member_id = $('.id_input').val(); // .id_input에 입력되는 값 
			var data = {member_id : member_id} // '컨트롤에 넘길 데이터 이름' : '데이터(.id_input에 입력되는 값)' 
			
			if (!(event.keyCode >=37 && event.keyCode<=40)) {


				$('.id_input').val(member_id.replace(/[^a-z0-9]/gi,''));

			}
			
			$.ajax({ 
				type : "post", 
				url : "memberIdChk", 
				data : data,
				success : function(result){ 
					
					if(member_id.length < 5 || member_id.length > 11){
						$('.id_input_re_1').css("display","none"); 
						$('.id_input_re_2').css("display", "none"); 
						$('.id_input_re_3').css("display", "inline-block");
					}else{
						if(result != 'fail'){ //중복 아니면
							
							$('.id_input_re_1').css("display","inline-block"); 
							$('.id_input_re_2').css("display", "none"); 
							$('.id_input_re_3').css("display", "none"); 
							existId = result;
						} else if(result == 'fail'){ //중복이면
							$('.id_input_re_2').css("display","inline-block"); 
							$('.id_input_re_1').css("display", "none"); 
							$('.id_input_re_3').css("display", "none"); 
							existId = result;
						}
						
					}
					
					

				}// success 종료

			}); // ajax 종료

		});// function 종료
		
		//!!!작동 닉네임
		$('.nick_input').on("propertychange change keyup paste input",function(){ 
			var member_nickname = $('.nick_input').val();  
			var data = {member_nickname : member_nickname} 
			$.ajax({ 
				type : "post", 
				url : "memberNickChk", 
				data : data,
				success : function(result){ 
					
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
		
		//!!!작동 휴대폰
		$('.phone_input').on("propertychange change keyup paste input", function(){ 
			var member_phone = $('.phone_input').val();  
			var data = {member_phone : member_phone} 
			$.ajax({ 
				type : "post", 
				url : "memberPhoneChk", 
				data : data,
				success : function(result){ 
					
					if(result != 'fail'){ 
						$('.phone_input_re_1').css("display","inline-block"); 
						$('.phone_input_re_2').css("display", "none");
						existPhone = result;
						
					} else { 
						$('.phone_input_re_2').css("display","inline-block"); 
						$('.phone_input_re_1').css("display", "none"); 
						existPhone = result;
					}
				}// success 종료
			}); // ajax 종료
		});// function 종료
		
	
		
		/* 인증번호 이메일 전송 */
		$(".mail_check_button").click(function() {
			//var email = $(".mail_input").val(); // 입력한 이메일
			var cehckBox = $(".mail_check_input"); // 인증번호 입력란
			var boxWrap = $(".mail_check_input_box"); // 인증번호 입력란 박스
			
			var email = $("#member_email").val();
			//!!!작동 이메일
			if(email !=""){
				
				//console.log("keyup 테스트"); 
				var member_email = $('.mail_input').val(); 
				var data = {member_email : member_email} 
				$.ajax({ 
					type : "post", 
					url : "memberEmailChk", 
					data : data,
					success : function(result){ 
						
						if(result != 'fail'){ 
							$.ajax({

								type : "GET",
								url : "mailCheck?email=" + email,
								success : function(data) {
				
								//console.log("data : " + data); //console값 으로 이메일 데이터 비교
								cehckBox.attr("disabled", false);
								boxWrap.attr("id", "mail_check_input_box_true");
								code = data;
			
								}
				
							});
							alert("사용가능한 이메일입니다. 인증번호 전송완료!");
						} else { 
							alert("중복된 이메일입니다.\n재입력 후 다시 인증번호 전송을 눌러주세요");
						}
					}// success 종료
				}); // ajax 종료
			}else{
				alert("이메일을 입력해주세요");
			}
		});//function종료

		/* 인증번호 비교 */
		$(".mail_check_input").blur(function() {
			
		    var inputCode = $(".mail_check_input").val();        // 입력코드    
		    var checkResult = $("#mail_check_input_box_warn");    // 비교 결과  

		    if(inputCode == code){                            // 일치할 경우
		        checkResult.html("인증번호가 일치합니다.");
		        checkResult.attr("class", "correct");  
		        $("#member_email").attr('readonly', true);
		    } else {                                            // 일치하지 않을 경우
		        checkResult.html("인증번호를 다시 확인해주세요.");
		        checkResult.attr("class", "incorrect");
		    }   
		    
		});
		
		
		
		
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
			$("#member_pw").on("propertychange change keyup paste input", function() {
				samePw = 'fail';
			}) 
			$("#repw").on("keyup", function() {
				if ($("#member_pw").val() == $("#repw").val()) {
					$(".repw.regex").html("비밀번호가 일치합니다");
					samePw = 'success';
				} else {
					$(".repw.regex").html("비밀번호가 일치하지않습니다");
					samePw = 'fail';
				}
			})

			//이름 유효성검사
			$("#member_name").on("input", function() {
				var regex = /[가-힣]{2,}/;
				var result = regex.exec($("#member_name").val());

				if (result != null) {
					$(".member_name.regex").html("");
				} else {
					$(".member_name.regex").html("한글만 입력 가능합니다.");
				}

			})

			//전화번호 유효성검사
			$("#member_phone").on("input", function() {
				var regex = /^01\d\d{3,4}\d{4}$/;
				var result = regex.exec($("#member_phone").val());

				if (result != null) {
					$(".member_phone.regex").html("");
				} else {
					$(".member_phone.regex").html("올바른 번호가 아닙니다(01*으로 시작/- 과 빈칸 없이 입력)");
				}

			})

			//email유효성 검사
			$("#member_email").on("input", function() {
				var regex = /.+@[a-z]+(\.[a-z]+){1,2}$/;
				var result = regex.exec($("#member_email").val());

				if (result != null) {
					$(".member_email.regex").html("");
				} else {
					$(".member_email.regex").html("올바른 이메일 형식이 아닙니다");
				}
			})
			
			//회원가입 버튼 눌렀을 때, 빈칸 있으면 다시 유효성 검사진행    
			$("#signupbtn").on("click", function() {
				var id = $("#member_id").val();
				var pw = $("#member_pw").val();
				var pwCheck = $("#repw").val();
				var name = $("#member_name").val();
				var nickname = $("#member_nickname").val();
				var phone = $("#member_phone").val();
				var email = $("#member_email").val();
				var confirmnum = $("#confirmnum").val();
				var address = $("#roadAddress").val();

				var idregex = /^[a-z][a-z\d]{4,11}$/;
				var pwregex = /^[A-Za-z\d]{8,12}$/;
				var nameregex = /[가-힣]{2,}/;
				var nicknameregex = /[ㄱ-힣0-9A-Za-z]{1,}/;
				var phoneregex = /^01\d\d{3,4}\d{4}$/;
				var emailregex = /.+@[a-z]+(\.[a-z]+){1,2}$/;

				var idregex = idregex.exec(id);
				if (idregex == null) {
					alert("아이디양식을 다시 확인해주세요\n(영어,숫자 5~11글자)");
					return;
				}
				if(existId == 'fail'){                            
			        alert("중복된 아이디입니다\n다시 입력해주세요");
			    	return;
			    }
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
				var nameregex = nameregex.exec(name);
				if (nameregex == null) {
					alert("이름양식을 다시 확인해주세요\n(두글자 이상)");
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
				var phoneregex = phoneregex.exec(phone);
				if (phoneregex == null) {
					alert("핸드폰번호양식을 다시 확인해주세요\n(01*으로 시작/-와 빈칸 없이 입력)");
					return;
				}
			    if(existPhone == 'fail'){                            
			        alert("중복된 번호입니다\n다시 입력해주세요");
			    	return;
			    }
				var emailregex = emailregex.exec(email);
				if (emailregex == null) {
					alert("이메일양식을 다시 확인해주세요\n");
					return;
				}
				if (confirmnum == "") {
					alert("이메일 인증을 완료해주세요");
					return;
				}
				var inputCode = $(".mail_check_input").val();        // 입력코드    
			    var checkResult = $("#mail_check_input_box_warn");    // 비교 결과  
			    if(inputCode != code){                            
			        alert("인증번호를 다시 확인해주세요");
			    	return;
			    }
			    
			    if (address == "") {
					alert("주소입력을 완료해주세요");
					return;
				}
			    if($('input[name=req]').is(":checked")){
			    	contractCheck = 1;
				}
				if(contractCheck !=1){
					alert("개인정보 약관에 동의하셔야 합니다.");
					return;
				}

				//빈칸 없을 때 제출.
				alert("가입 완료! 환영합니다(´▽`ʃ♡ƪ)\n가입하신 아이디와 비밀번호로 로그인 해주세요");
				$("#signform").submit();

			})
		})

		

	</script>

</body>
</html>