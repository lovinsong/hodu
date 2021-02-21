<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
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

<form action="./join_finish" method="POST">
<!-- 테이블을 넣을 큰 네모 공간을 만드는 태그 = fieldset -->
<fieldset>
<!-- fieldset의 메인 글자 태그 = legend -->
<legend>회원 정보</legend>
<!-- 테이블 생성 -->
<table>
<tr>
	<td >아이디</td>
	
	<td ><input type="text" name="userid" value="${memberdto.member_id}"></td>
</tr>

<tr>
	<td >닉네임</td>
	<td ><input type="text" name="nickname" value="${memberdto.member_nickname}"></td>
</tr>

<tr>
	<td>비밀번호</td>
	<td><input type="password" name="password" value="${memberdto.member_pw}"></td>
</tr>

<tr>
	<td >이름</td>
	<td ><input type="text" name="name" value="${memberdto.member_name}"></td>
</tr>

<!-- 이미지는 생각  -->

<tr>
	<td >휴대폰</td>
	<td ><input type="text" name="phone" value="${memberdto.member_phone}"></td>
</tr>

<tr>
	<td >주소</td>
	<td ><input type="text" name="address" value="${memberdto.member_address}"></td>
</tr>

<tr>
	<td >이메일</td>
	<td ><input type="text" name="email" value="${memberdto.member_email}"></td>
</tr>



</table>
	<!-- 해당 요청이 수정인지 가입인지 서블릿의 post에선 알 방법이 없음 - 수정이나 가입이나 넘어가는 데이터는 아이디, 이름, 이메일, 비밀번호, 주소 전부 동일
		때문에 action 파라미터로 구분 - 서블릿의 get단계에서부터 가입요청인지 수정요청인지 구분하여 넘겨줌.
		우리가 볼 필요는 없기 때문에 hidden 파라미터로 넘겨줌-->
	
	<input type="submit" value="저 장">
	<input type="reset" value="취 소">
</fieldset>
</form>







</body>
</html>