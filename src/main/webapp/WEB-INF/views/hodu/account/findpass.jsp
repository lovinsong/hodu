<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<title>비밀번호 찾기</title>
<script src="https://code.jquery.com/jquery-3.4.1.js"
	integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
	crossorigin="anonymous"></script>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<style>
/* * {
	margin: 0;
	padding: 0;
} 
.wrapper {
	width: 1900px;
} 
.wrap {
	width: 800px;
	margin: auto;
} 
.logo_wrap {
	text-align: center;
	margin: 150px 0;
}

.logo_wrap>span {
	font-size: 50px;
	font-weight: 900;
} 
.id_input_box {
	border: 1px solid black;
	height: 31px;
	padding: 10px 14px;
	display: block;
	width: 80%;
	margin: auto;
}

.id_input {
	width: 100%;
	height: 100%;
	border: none;
	font-size: 28px;
}

.email_wrap {
	margin-top: 40px;
}

.email_input_box {
	border: 1px solid black;
	height: 31px;
	padding: 10px 14px;
	display: block;
	width: 80%;
	margin: auto;
}

.email_input {
	width: 100%;
	height: 100%;
	border: none;
	font-size: 28px;
}

.email_check_input_box {
	border: 1px solid black;
	height: 31px;
	padding: 10px 14px;
	display: block;
	width: 80%;
	margin: auto;
}

.email_check_input {
	width: 100%;
	height: 100%;
	border: none;
	font-size: 28px;
}

.find_button_wrap {
	margin-top: 40px;
	text-align: center;
}

.find_button {
	width: 84%;
	height: 80px;
	background-color: #6AAFE6;
	font-size: 40px;
	font-weight: 900;
	color: white;
	margin: auto;
}

.find_warn {
	margin-top: 30px;
	text-align: center;
	color: red;
} */
/* .mail_check_button {
	border: 1px solid black;
	height: 51px;
	width: 30%;
	line-height: 50px;
	text-align: center;
	font-size: 30px;
	font-weight: 900;
	background-color: #ececf7;
	cursor: pointer;
} */



.login-dark {
    background: linear-gradient(145deg, #575b5d, #252b2d);
}
body {
    font-size: 13px;
}

#mail_check_input_box_false {
	background-color: #ebebe4;
}

#mail_check_input_box_true {
	background-color: white;
}

.correct {
	color: green;
}

.incorrect {
	color: red;
}

.clearfix {
	clear: both;
}
</style>

<body>
<div class="container">
    <div class="row">
    	<div class="col-4"></div>
        <div class="col-4">
            <div class="login-dark p-3 shadow-lg rounded">
                <div class="pt-3">
                    <h2 class="text-white">비밀번호 찾기</h2>
                </div>

                <form class="mt-5" id="find_form" method="post"> 
                    <div class="form-group">
                        <input class="form-control form-control-sm bg-light id_input" name="member_id" id="member_id" placeholder="아이디">
                    </div>

                    <div class="form-group">
                        <input class="form-control form-control-sm bg-light mail_input" name="member_email" id="member_email" 
                        		readonly="readonly" placeholder="이메일">
                    </div>
                    
                    <div class="form-group">
	                    <div class="mail_check_input_box">
								<input class="form-control form-control-sm bg-light mail_check_input" disabled="disabled" placeholder="인증번호">
						</div>
						<div class="mail_check_button">
							<input type="button" class="btn btn-secondary col" value="인증번호 전송">
						</div>
                    </div>
                    <div class="clearfix"></div>
					<span id="mail_check_input_box_warn"></span>
                    
                    
                    <div class="mt-5">
                        <input type="button" class="btn btn-sm btn-light col find_button" value="비밀번호 변경하기">
                    </div>

                   
                    
                    
                </form>
            </div>
        </div>
   </div>
</div>













	<!-- <div class="wrapper">
		<div class="wrap">
			<form id="find_form" method="post">
				<div class="logo_wrap">
					<span>더 이상의 비밀번호는 없다...</span><br>
				</div>

				<div class="findid_wrap">
					<div class="id_wrap">
						<div class="id_input_box">
							<input class="id_input" name="member_id" id="member_id" placeholder="아이디">
						</div>
					</div>

					<div class="mail_name">이메일</div>
					<div class="mail_input_box">
						<input class="mail_input" name="member_email" id="member_email" readonly="readonly">
					</div>

					<div class="mail_check_wrap">
						<div class="mail_check_input_box" id="mail_check_input_box_false">
							<input class="mail_check_input" disabled="disabled">
						</div>
						<div class="mail_check_button">
							<span>인증번호 전송</span>
						</div>
						<div class="clearfix"></div>
						<span id="mail_check_input_box_warn"></span>
					</div>

					<c:if test="${result == 0 }">
						<div class="find_warn">ID를 잘못 입력하셨거나 없는 ID입니다.</div>
					</c:if>

					<div class="find_button_wrap">
						<input type="button" class="find_button" value="비밀번호 변경하기">
					</div>

				</div>

			</form>

		</div>
	</div> -->

	<script>
		var code = ""; //이메일전송 인증번호 저장위한 코드
		var sameCode ="";
		$("#member_email").attr('readonly', false);

		$(".mail_check_button").click(function() {

			var email = $(".mail_input").val(); // 입력한 이메일
			var cehckBox = $(".mail_check_input"); // 인증번호 입력란
			//var boxWrap = $(".mail_check_input_box"); // 인증번호 입력란 박스
			
			if(email !=""){
				
				//console.log("keyup 테스트"); 
				var member_id = $('#member_id').val();
				var member_email = $('#member_email').val();
				var data = { member_id : member_id, member_email : member_email}
				$.ajax({ 
					type : "post", 
					url : "availableEmailChk", 
					data : data,
					success : function(result){ 
						
						if(result != 'fail'){ 
							$.ajax({

								type : "GET",
								url : "mailCheck?email=" + email,
								success : function(data) {
				
								console.log("data : " + data); //console값 으로 이메일 데이터 비교
								cehckBox.attr("disabled", false);
								//boxWrap.attr("id", "mail_check_input_box_true");
								code = data;
			
								}
				
							});
							alert("인증번호 전송완료!");
						} else { 
							alert("가입된 정보와 다른 이메일입니다.");
						}
					}// success 종료
				}); // ajax 종료
			}else{
				alert("이메일을 입력해주세요");
			}
		});

		/* 인증번호 비교 */
		$(".mail_check_input").blur(function() {

			var inputCode = $(".mail_check_input").val(); // 입력코드    
			var checkResult = $("#mail_check_input_box_warn"); // 비교 결과     

			if (inputCode == code) { // 일치할 경우
				checkResult.html("인증번호가 일치합니다.");
				checkResult.attr("class", "correct");
				sameCode = 'success';
				$("#member_email").attr('readonly', true);
			} else { // 일치하지 않을 경우
				checkResult.html("인증번호를 다시 확인해주세요.");
				checkResult.attr("class", "incorrect");
				sameCode = 'fail';
			}

		});
		
		/* 비밀번호 찾기 클릭 메서드 */
		$(".find_button").click(function() {
			
			var inputCode = $(".mail_check_input").val(); // 입력코드    
			
			
			
			if(inputCode == ""){
				alert("아이디와 인증번호를 확인해주세요");
				return;
			}
			if(sameCode == 'fail'){
				alert("인증번호가 일치하지 않습니다.");
				return;
			}
			
			//alert("로그인 버튼 작동");

			/* 로그인 메서드 서버 요청 */
			$("#find_form").attr("action", "./findpass");
			$("#find_form").submit();

		});
	</script>

</body>
</html>