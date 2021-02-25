<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<fieldset>
     <legend>파일 업로드</legend>
     <table>
     <form action="fileupload" method="post" enctype="multipart/form-data">
          <tr>
              <td>번호 : </td>
              <td><input type="text" name="img_postnum"/></td>
          </tr>
          <tr>
              <td>아이디 : </td>
              <td><input type="text" name="member_id"/></td>
          </tr>
          <tr>
              <td>파일 : </td>
              <td><input type="file" value="파일 선택" name="file"/></td> <!-- name="file"은 file로 맞추기 -->
          </tr>
          <tr>
              <td colspan="2"><input type="submit" value="업로드"/></td>
          </tr>
        </form>
     </table>
</fieldset>

</body>
</html>