<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내 정보 수정</title>
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

<h1>내 정보 수정</h1>

<form action="update" method="POST" id="updateform">
	<div id="wrapper">
		<div class="title">회원정보 수정</div>
		
		
		<label>아이디 : </label><input class="id_input" type="text" name="member_id" id="member_id" 
		value="${member.member_id}" readonly>
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


		<div class="mail_warp">
			<div class="mail_name">이메일</div>
			<div class="mail_input_box">
				<input class="mail_input" name="member_email" id="member_email" readonly="readonly">
				<div class="member_email regex"></div>
				<span class="mail_input_re_1">사용가능한 이메일입니다. 인증번호 전송완료</span>
				<span class="mail_input_re_2">중복된 이메일입니다. 재입력 후 다시 인증번호 전송을 눌러주세요</span>
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

		

		<label>주소 : </label><input type="text" id="roadAddress" placeholder="도로명주소" name="member_address"> 
		<input type="button" onclick="sample4_execDaumPostcode()" value="주소 찾기">
		<div id="signup">
			<input type="button" name="signup" value="가입하기" id="signupbtn">
			<input type="button" value="취소" onclick="location.href='mypage'"><br><!-- 메인페이지로 연결!!! -->
			<input type="button" value="회원 탈퇴" onclick="location.href='mypage'">
		</div>
	</div>
</form>


</body>
</html>