<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%
Date nowTime = new Date();
SimpleDateFormat sf = new SimpleDateFormat("yyyy년 MM월 dd일");
%>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 등록 페이지</title>
</head>
<body>
	<h1>회원등록</h1>



	<h3 align=center>회원 정보 입력</h3>

	<form method="POST">
		<!-- 아이디 -->
		<div class="form-group">
			<label for="member_id">아이디</label> 
			<input type="text" class="form-control" id="member_id" name="member_id" placeholder="ID" required>
			<div class="check_font" id="id_check"></div>
		</div>
		<!-- 비밀번호 -->
		<div class="form-group">
			<label for="member_pw">비밀번호</label> 
			<input type="password" class="form-control" id="member_pw" name="member_pw" placeholder="PASSWORD" required>
			<div class="check_font" id="pw_check"></div>
		</div>
		<!-- 비밀번호 재확인 -->
		<div class="form-group">
			<label for="member_pw2">비밀번호 확인</label> 
			<input type="password" class="form-control" id="member_pw2" name="member_pw2" placeholder="Confirm Password" required>
			<div class="check_font" id="pw2_check"></div>
		</div>
		<!-- 이름 -->
		<div class="form-group">
			<label for="member_name">이름</label> 
			<input type="text" class="form-control" id="member_name" name="member_name" placeholder="Name" required>
		</div>
		
		<!-- 닉네임 -->
		<div class="form-group">
			<label for="member_nickname">닉네임</label> 
			<input type="text" class="form-control" id="member_nickname" name="member_nickname" placeholder="Nickname" required>
		</div>
		
		<!-- 본인확인 이메일 -->
		<div class="form-group">
			<label for="member_email">이메일</label> 
			<input type="text" class="form-control" name="member_email" id="member_email" placeholder="E-mail" required>
			<!-- <input type="text" style="margin-top: 5px;"class="email_form" name="email_confirm" id="email_confirm" placeholder="인증번호를 입력해주세요!" required>
						<button type="button" class="btn btn-outline-danger btn-sm px-3" onclick="confirm_email()">
							<i class="fa fa-envelope"></i>&nbsp;인증
						</button>&nbsp;
						<button type="button" class="btn btn-outline-info btn-sm px-3">
							<i class="fa fa-envelope"></i>&nbsp;확인
						</button>&nbsp; -->
			<div class="check_font" id="email_check"></div>
		</div>
		
		<!-- 휴대전화 -->
		<div class="form-group">
			<label for="member_phone">휴대전화 ('-' 없이 번호만 입력해주세요)</label> 
			<input type="text" class="form-control" id="member_phone" name="member_phone" placeholder="Phone Number" required>
			<div class="check_font" id="phone_check"></div>
		</div>
		
		<!-- 주소 -->
		<div class="form-group">
			<label for="member_address">주소</label> 
			<input type="text" class="form-control" id="member_address" name="member_address" placeholder="Address" required>
			<div class="check_font" id="address_check"></div>
		</div>
		
		
		<div class="reg_button">
			<a class="btn btn-danger px-3" href="./login"> 
				<i class="fa fa-rotate-right pr-2" aria-hidden="true"></i>취소하기
			</a>&emsp;&emsp;
			<button class="btn btn-primary px-3" id="reg_submit">
				<i class="fa fa-heart pr-2" aria-hidden="true"></i>가입하기
			</button>
		</div>
	</form>







</body>
</html>