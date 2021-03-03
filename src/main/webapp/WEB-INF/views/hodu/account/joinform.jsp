<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 약관</title>
<script src="https://code.jquery.com/jquery-3.4.1.js"
	integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
	crossorigin="anonymous">
</script>
</head>
<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box
}

body {
	background-color: #f7f7f7;
}

ul>li {
	list-style: none
}

a {
	text-decoration: none;
}

.clearfix::after {
	content: "";
	display: block;
	clear: both;
}

#joinForm {
	width: 460px;
	margin: 0 auto;
}

ul.join_box {
	border: 1px solid #ddd;
	background-color: #fff;
}

.checkBox, .checkBox>ul {
	position: relative;
}

.checkBox>ul>li {
	float: left;
}

.checkBox>ul>li:first-child {
	width: 85%;
	padding: 15px;
	font-weight: 600;
	color: #888;
}

.checkBox>ul>li:nth-child(2) {
	position: absolute;
	top: 50%;
	right: 30px;
	margin-top: -12px;
}

.checkBox textarea {
	width: 96%;
	height: 90px;
	margin: 0 2%;
	background-color: #f7f7f7;
	color: #888;
	border: none;
	resize: none;
}

.footBtwrap {
	margin-top: 15px;
}

.footBtwrap>li {
	float: left;
	width: 50%;
	height: 60px;
}

.footBtwrap>li>button {
	display: block;
	width: 100%;
	height: 100%;
	font-size: 20px;
	text-align: center;
	line-height: 60px;
}

.fpmgBt1 {
	background-color: #fff;
	color: #888
}

.fpmgBt2 {
	background-color: lightsalmon;
	color: #fff
}
</style>

<body>
	<form action="contract" id="contractform" name="contractform">
		<ul class="join_box">
			<li class="checkBox check01">
				<ul class="clearfix">
					<li>이용약관, 개인정보 수집 및 이용, 위치정보 이용약관(선택), 프로모션 안내 메일 수신(선택)에 모두 동의합니다.</li>
					<li class="checkAllBtn"><input type="checkbox" name="chkAll" id="chk" class="chkAll"></li>
				</ul>
			</li>
			<li class="checkBox check02">
				<ul class="clearfix">
					<li>이용약관 동의(필수)</li>
					<li class="checkBtn"><input class="checkBtn1" type="checkbox" name="chk1">
					</li>
				</ul> <textarea name="" id="">여러분을 환영합니다.
네이버 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다. 본 약관은 다양한 네이버 서비스의 이용과 관련하여 네이버 서비스를 제공하는 네이버 주식회사(이하 ‘네이버’)와 이를 이용하는 네이버 서비스 회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며, 아울러 여러분의 네이버 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다.
       </textarea>
			</li>
			<li class="checkBox check03">
				<ul class="clearfix">
					<li>개인정보 수집 및 이용에 대한 안내(필수)</li>
					<li class="checkBtn"><input class="checkBtn2" type="checkbox" name="chk2">
					</li>
				</ul> <textarea name="" id="" cols="30" rows="10">여러분을 환영합니다.
네이버 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다. 본 약관은 다양한 네이버 서비스의 이용과 관련하여 네이버 서비스를 제공하는 네이버 주식회사(이하 ‘네이버’)와 이를 이용하는 네이버 서비스 회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며, 아울러 여러분의 네이버 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다.
       </textarea>
			</li>
			<li class="checkBox check03">
				<ul class="clearfix">
					<li>위치정보 이용약관 동의(선택)</li>
					<li class="checkBtn"><input class="checkBtn3" type="checkbox" name="chk3">
					</li>
				</ul> <textarea name="" id="">여러분을 환영합니다.
네이버 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다. 본 약관은 다양한 네이버 서비스의 이용과 관련하여 네이버 서비스를 제공하는 네이버 주식회사(이하 ‘네이버’)와 이를 이용하는 네이버 서비스 회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며, 아울러 여러분의 네이버 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다.
       </textarea>
			</li>
			<li class="checkBox check04">
				<ul class="clearfix">
					<li>이벤트 등 프로모션 알림 메일 수신(선택)</li>
					<li class="checkBtn"><input class="checkBtn4" type="checkbox" name="chk4">
					</li>
				</ul>

			</li>
		</ul>
		
		<ul class="footBtwrap clearfix">
			<li><button class="fpmgBt1" id="nosignupbtn" onclick="window.close()">비동의</button></li>
			<li><input type="hidden" id="cInput" value="동의함">
				<button class="fpmgBt2" id="signupbtn" >동의</button><!-- onclick="setParentText()" -->
			</li>
		</ul>
	</form>

	<script>
	
	//var contractCheck = 0;
	var checkbox1 = "f";
	var checkbox2 = "f";
	var checkbox3 = "f";
	var checkbox4 = "f";
	
	
		
	
			
			
			$("input[name='chkAll']").on({
				"click":function(){
					$( '.checkBtn1' ).prop('checked', this.checked );
					$( '.checkBtn2' ).prop('checked', this.checked );
					$( '.checkBtn3' ).prop('checked', this.checked );
					$( '.checkBtn4' ).prop('checked', this.checked );
				}
			});
			  
			$("input[name='chk1']").on({
				"click":function(){
					if ($("input[name='chk1']").is(":checked")) {
						checkbox1 = 't';
						console.log("checkbox1 : " + checkbox1); //console값 으로 이메일 데이터 비교
		            } else {
		            	checkbox1 = 'f';
		            	console.log("checkbox1 : " + checkbox1); //console값 으로 이메일 데이터 비교
		            }
				}
			});
			
			
			
			$("input[name='chk2']").on({
				"click":function(){
					if ($("input[name='chk2']").is(":checked")) {
						checkbox2 = 't';
						console.log("checkbox1 : " + checkbox2); //console값 으로 이메일 데이터 비교
		            } else {
		            	checkbox2 = 'f';console.log("checkbox1 : " + checkbox2); //console값 으로 이메일 데이터 비교
		            }
				}
			});
			$("input[name='chk3']").on({
				"click":function(){
					if ($("input[name='chk3']").is(":checked")) {
						checkbox3 = 't';
						console.log("checkbox1 : " + checkbox3); //console값 으로 이메일 데이터 비교
		            } else {
		            	checkbox3 = 'f';console.log("checkbox1 : " + checkbox3); //console값 으로 이메일 데이터 비교
		            }
				}
			}); 
			$("input[name='chk4']").on({
				"click":function(){
					if ($("input[name='chk4']").is(":checked")) {
						checkbox4 = 't';
						console.log("checkbox1 : " + checkbox4); //console값 으로 이메일 데이터 비교
		            } else {
		            	checkbox4 = 'f';console.log("checkbox1 : " + checkbox4); //console값 으로 이메일 데이터 비교
		            }
				}
			}); 
			
		
	
			$(function() {
				
				$("#signupbtn").on("click", function() {
					
					if(checkbox1 != 't'){
						alert("필수 약관은 동의하셔야 합니다");
						return false;
					} 
					if(checkbox2 != 't'){
						alert("필수 약관은 동의하셔야 합니다");
						return false;
					}
					
					alert("약관 동의 완료\n동의 확인버튼을 눌러주세요");
					//$("#contractform").submit();
					window.opener.document.signform.pInput.value = document.contractform.cInput.value;
					window.open("about:blank","_self").close();
					
				})
				//$("#nosignupbtn").on("click", function() {
				//	alert("동의하셔야 가입할 수 있습니다.");
				//	return false;
				//})
				
			})
</script>

</body>
</html>