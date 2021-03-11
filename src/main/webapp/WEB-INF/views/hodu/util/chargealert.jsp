<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%-- <%
	Date nowTime = new Date();
	SimpleDateFormat sf = new SimpleDateFormat("yyyy년 MM월 dd일 a hh:mm:ss");
%> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>무통장 완료 페이지</h1>
<a href="${pageContext.request.contextPath}/hodu/main/mainpage">메인 페이지로 돌아가기</a><br>

<h3> 국민은행 : 091234-04-987122 (주)호두</h3>

${member.moneyforhodu}원을

<%--현재 날짜와 시간은 <%= sf.format(nowTime) %>입니다. --%>


</body>
<script>
//var tDate = new Date()



//console.log(tDate)
//console.log(sf.format(tDate))

let today = new Date();
//날짜(일) 더하기
today.setDate(today.getDate()+1)  
document.write(today.toLocaleString() + ' 까지 입금 완료하시면 됩니다. (현 시각 기준 24시 이내)');
</script>
</html>