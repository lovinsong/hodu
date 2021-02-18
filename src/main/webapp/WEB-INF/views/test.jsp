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
	
	<c:forEach var="test" items="${test1 }">
		${test}<br>
	</c:forEach>
</body>
</html>