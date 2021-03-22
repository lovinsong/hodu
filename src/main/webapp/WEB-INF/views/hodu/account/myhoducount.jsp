<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<div class="titlebox" style="border-bottom: 1px solid rgba(222, 222, 222, 0.25); padding-bottom: 20px">										
		<table class="table">
			<tbody class="t-control">
				<tr>
					<td class="t-title"><strong>보유 호두</strong></td>
					<td>${member.member_cash}</td>
				</tr>
				<tr></tr>	                                                                                   
			</tbody>
		</table> <br><br>
	
	
		<div class="container" >
			<div class="row row-cols-7" >
			
				<div class="col"></div>
				<div class="col"></div>
				<div class="col"></div>
				<div class="col"><input class="btn btn-reg" type="button" value="호두 충전하러 가기" onclick="location.href='chargehodu'"></div>
				<div class="col"></div>
				<div class="col"></div>
				<div class="col"></div>
					
			</div>
		</div>             
</div>	


</body>
</html>