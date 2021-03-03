<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<!DOCTYPE html>
<html lang="en">

	<head>
	
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/DTF/jquery.datetimepicker.css" />
		<script src="${pageContext.request.contextPath }/resources/DTF/jquery.js"></script>
		<script src="${pageContext.request.contextPath }/resources/DTF/build/jquery.datetimepicker.full.min.js"></script>
		
	</head>


	<body>
		<input id="datetimepicker3" type="text" >
		<input id="datetimepicker4" type="text" undefined >
	</body>

	<script type="text/javascript">
	jQuery('#datetimepicker3').datetimepicker({
		  format:'d.m.Y H:i',
		  inline:true,
		  lang:'ru'
		});
	
	jQuery('#datetimepicker4').datetimepicker({
		  format:'H:i',
		  inline:true,
		  datepicker:false,
		  lang:'ru'
		});
	

	</script>



  
</html>

