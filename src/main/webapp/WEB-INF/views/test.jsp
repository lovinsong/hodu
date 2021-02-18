<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1> TEST </h1>
<button onclick="location.href='./'">버튼</button>

	<br>
	<br>
	
	<!--  반복문으로 세로로 출력 -->
	<c:forEach var="test" items="${testArr }">
		${test}<br>
	</c:forEach>

<p>전체 : ${test1 }</p><br>
<p>Tname : ${test2 }</p><br>
<p>테이블 갯수 : ${test3 }</p>


</body>
</html>