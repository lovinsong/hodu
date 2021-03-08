<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="icon" href="./image/favicon.ico">
<link rel="shortcut icon" href="./image/favicon.ico">
<title>호두 : 생활 서비스 멘토 매칭</title>
</head>
<body>

<h3>파일 업로드 POST 요청: Multipart 인코딩</h3>
<p>
입력폼의 method를 POST으로 지정하고, enctype 속성의 값을 multipart/form-data로 설정합니다.
</p>
<form action="FileUploadServlet" method="post" enctype="multipart/form-data">
사진: <input type="file" name="photo"><br> 
설명: <textarea name="description" cols="50" rows="3"></textarea><br>
	  <input type="submit" value="추가"><br>
</form> 
</body>
</html>
