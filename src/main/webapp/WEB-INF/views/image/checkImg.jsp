<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	
	 <table>
     <form action="realImg" method="post">
          <tr>
              <td>게시판 이름 : </td>
              <td><input type="text" name="board_name"/></td>
          </tr>
          <tr>
              <td>게시글 번호 : </td>
              <td><input type="text" name="board_postnum"/></td>
          </tr>
          <tr>
              <td colspan="2"><input type="submit" value="확인!"/></td>
          </tr>
        </form>
     </table>


</body>
</html>