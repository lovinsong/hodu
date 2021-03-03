<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<!DOCTYPE html>
<html lang="en">


	<head>
	
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/DTF/jquery.datetimepicker.css" />
		<script src="${pageContext.request.contextPath }/resources/DTF/jquery.js"></script>
		<script src="${pageContext.request.contextPath }/resources/DTF/build/jquery.datetimepicker.full.min.js"></script>
		<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/board.css">
		
		
		
	</head>
	
	<style>
		body {
			text-align: center;
		}
		input {
			height: 2rem;
			text-align: center;
			border-radius: 3px;
			cursor: pointer;
		}
		h2 {
			margin-top: 2rem;
			margin-bottom: 1rem;
		}
		
	</style>
	


	<body>
	<h2> 일정 선택</h2>

		<br>
		<br>
		<input id="date_timepicker_start" type="text" placeholder="시작일자 및 시간"> ~
		<input id="date_timepicker_end" type="text"  placeholder="종료 시간">
	</body>

	<script type="text/javascript">
	
	jQuery(function(){
		 jQuery('#date_timepicker_start').datetimepicker({
		  format:'Y/m/d    H:i',
		  onShow:function( ct ){
		   this.setOptions({
			   
		   })
		   
		  }
		 });
		 
		 jQuery('#date_timepicker_end').datetimepicker({
		  format:'Y/m/d    H:i',
		  onShow:function( ct ){
		   this.setOptions({
			minDate:jQuery('#date_timepicker_start').val()?jQuery('#date_timepicker_start').val():false,
			maxDate:jQuery('#date_timepicker_start').val()?jQuery('#date_timepicker_start').val():false,	
		    minTime:jQuery('#date_timepicker_start').val()?jQuery('#date_timepicker_start').val().substr(15,6):false,
		    value:jQuery('#date_timepicker_start').val()?jQuery('#date_timepicker_start').val():false
		   })
		  }
		 });
		});

	</script>



  
</html>
