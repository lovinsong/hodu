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
		body{
			text-align: center;
		}
		
		h2{
			margin: 3rem;	
		}
		
		input{
			margin-top: 1rem;
			height: 2rem;
			cursor: pointer;
			text-align: center;
		}
		#btn{
			text-align: center;
			margin-top: 1rem;
		}
		#btn button{
				border-radius: 3px;
				background-color: #876c5c;	
				color: white;
				margin: 2 2 2 2;
				text-align: center;	
				transition: border-color 0.15s ease-out, color 0.25s ease-out, background-color 0.15s ease-out, box-shadow 0.15s ease-out;
				box-shadow: 0 0 5px rgba(135, 108, 92, .5);
				cursor: pointer;
				border: none;
				height: 2rem;
				width: 7rem;
		}
			
	</style>
	
	<body>
		
		<container id="class_date_con">	
			<div class="row">
				<h2> 클래스 일정 선택 </h2>
			</div>
			 <div class="row" id="picker1">
				<input id="date_timepicker_start1" class="date_timepicker_start" type="text" placeholder="시작 날짜 및 시간"> ~ 
				<input id="date_timepicker_end1" class="date_timepicker_end" type="text" placeholder="종료 시간"> 
			</div>
			<div class="row" id="picker2"  style='display:none;'>
				<input id="date_timepicker_start2" class="date_timepicker_start" type="text"> ~ 
				<input id="date_timepicker_end2" class="date_timepicker_end" type="text" >
			</div>
			<div class="row" id="picker3"  style='display:none;'>
				<input id="date_timepicker_start3" class="date_timepicker_start" type="text"> ~ 
				<input id="date_timepicker_end3" class="date_timepicker_end" type="text" > 
			</div>
			<div class="row" id="picker4" style='display:none;'>
				<input id="date_timepicker_start4" class="date_timepicker_start" type="text"> ~ 
				<input id="date_timepicker_end4" class="date_timepicker_end" type="text" > 
			</div>
			<div class="row" id="picker5"  style='display:none;'>
				<input id="date_timepicker_start5" class="date_timepicker_start" type="text"> ~ 
				<input id="date_timepicker_end5" class="date_timepicker_end" type="text" > 
			</div>
		</container>
		<div id="btn" class="row">
			<button onclick="addPicker();">+ 추가</button>
			<button onclick="deletePicker();">- 삭제</button>
			<button style='background-color: black'onclick="reg()">등록</button>
		</div>
	</body>

	<script type="text/javascript">
	
	jQuery(function(){
		 jQuery('#date_timepicker_start1').datetimepicker({
		  format:'Y/m/d/H:i',
		  onShow:function( ct ){
		   this.setOptions({
			   minDate:0
		   })
		   
		  }
		 });
		 
		 jQuery('#date_timepicker_end1').datetimepicker({
		  format:'Y/m/d/H:i',
		  onShow:function( ct ){
		   this.setOptions({
			minDate:jQuery('#date_timepicker_start1').val()?jQuery('#date_timepicker_start1').val():false,
			maxDate:jQuery('#date_timepicker_start1').val()?jQuery('#date_timepicker_start1').val():false,	
		    minTime:jQuery('#date_timepicker_start1').val()?jQuery('#date_timepicker_start1').val().substr(11,6):false,
		    value:jQuery('#date_timepicker_start1').val()?jQuery('#date_timepicker_start1').val():false
		   })
		  }
		 });
		});
	jQuery(function(){
		 jQuery('#date_timepicker_start2').datetimepicker({
		  format:'Y/m/d/H:i',
		  onShow:function( ct ){
		   this.setOptions({
			   minDate:0
		   })
		   
		  }
		 });
		 
		 jQuery('#date_timepicker_end2').datetimepicker({
		  format:'Y/m/d/H:i',
		  onShow:function( ct ){
		   this.setOptions({
			minDate:jQuery('#date_timepicker_start2').val()?jQuery('#date_timepicker_start2').val():false,
			maxDate:jQuery('#date_timepicker_start2').val()?jQuery('#date_timepicker_start2').val():false,	
		    minTime:jQuery('#date_timepicker_start2').val()?jQuery('#date_timepicker_start2').val().substr(11,6):false,
		    value:jQuery('#date_timepicker_start2').val()?jQuery('#date_timepicker_start2').val():false
		   })
		  }
		 });
		});
	jQuery(function(){
		 jQuery('#date_timepicker_start3').datetimepicker({
		  format:'Y/m/d/H:i',
		  onShow:function( ct ){
		   this.setOptions({
			   minDate:0
		   })
		   
		  }
		 });
		 
		 jQuery('#date_timepicker_end3').datetimepicker({
		  format:'Y/m/d/H:i',
		  onShow:function( ct ){
		   this.setOptions({
			minDate:jQuery('#date_timepicker_start3').val()?jQuery('#date_timepicker_start3').val():false,
			maxDate:jQuery('#date_timepicker_start3').val()?jQuery('#date_timepicker_start3').val():false,	
		    minTime:jQuery('#date_timepicker_start3').val()?jQuery('#date_timepicker_start3').val().substr(11,6):false,
		    value:jQuery('#date_timepicker_start3').val()?jQuery('#date_timepicker_start3').val():false
		   })
		  }
		 });
		});
	jQuery(function(){
		 jQuery('#date_timepicker_start4').datetimepicker({
		  format:'Y/m/d/H:i',
		  onShow:function( ct ){
		   this.setOptions({
			   minDate:0
		   })
		   
		  }
		 });
		 
		 jQuery('#date_timepicker_end4').datetimepicker({
		  format:'Y/m/d/H:i',
		  onShow:function( ct ){
		   this.setOptions({
			minDate:jQuery('#date_timepicker_start4').val()?jQuery('#date_timepicker_start4').val():false,
			maxDate:jQuery('#date_timepicker_start4').val()?jQuery('#date_timepicker_start4').val():false,	
		    minTime:jQuery('#date_timepicker_start4').val()?jQuery('#date_timepicker_start4').val().substr(11,6):false,
		    value:jQuery('#date_timepicker_start4').val()?jQuery('#date_timepicker_start4').val():false
		   })
		  }
		 });
		});
	jQuery(function(){
		 jQuery('#date_timepicker_start5').datetimepicker({
		  format:'Y/m/d/H:i',
		  onShow:function( ct ){
		   this.setOptions({
			   minDate:0
		   })
		   
		  }
		 });
		 
		 jQuery('#date_timepicker_end5').datetimepicker({
		  format:'Y/m/d/H:i',
		  onShow:function( ct ){
		   this.setOptions({
			minDate:jQuery('#date_timepicker_start5').val()?jQuery('#date_timepicker_start5').val():false,
			maxDate:jQuery('#date_timepicker_start5').val()?jQuery('#date_timepicker_start5').val():false,	
		    minTime:jQuery('#date_timepicker_start5').val()?jQuery('#date_timepicker_start5').val().substr(11,6):false,
		    value:jQuery('#date_timepicker_start5').val()?jQuery('#date_timepicker_start5').val():false
		   })
		  }
		 });
		});
	
	var num = 2
	
	function addPicker() {
		if (num <= 5) {
			document.getElementById('picker'+num).style.display='block'
			num = num + 1;
		} 
	}
	
	function deletePicker() {
		if (num >= 3) {
			num = num -1;
			document.getElementById('picker'+num).style.display='none';
			document.getElementById('date_timepicker_start'+num).value = null;
			document.getElementById('date_timepicker_end'+num).value = null;
		}

	}
	
	
	function reg(){
		// 반복문으로 timepicker에 데이터가 있는지 확인한 후 있다면 전송
		for(var i = 1; i <6; i = i+1){
			if (document.getElementById('date_timepicker_start'+i).value != '') {
				$(opener.document).find('#pick'+i).text(document.getElementById('date_timepicker_start'+i).value + ' ~ ' + document.getElementById('date_timepicker_end'+i).value);
			} else {
				window.close();
			}
		}
		
		window.close();
		
	}

	</script>



  
</html>