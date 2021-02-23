<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 등록 페이지</title>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
</head>
<style>
        #wrapper{
            border:2px solid;
            border-color: #692e1d;
            border-radius: 5px;;
            width: 400px;
            height:420px;
            margin:auto;
        }
        .title{
            text-align: center;
            font-size: 20px;
           font-weight: bold;
           color:#692e1d;
           margin:20px 0px 20px 0px;
          
        }
        label{
            width:95px;
            display: inline-block;
            text-align: right;
            font-size: 13px;
           
        }
        input{
            margin:3px 5px;
            border-radius: 3px;
            background-color: transparent;
            border:1px solid darkgray;
            height:20px;
            outline:none;
            
        }
        
        #signup{
        text-align: center;
        margin:5px;
        }
        input[type=button],input[type=reset]{
            border:1px solid salmon;
            border-radius: 3px;
            background-color: transparent;
            margin:0px;
            height:24px;
            color:salmon;
        }
        
        input[type=button]:hover,input[type=reset]:hover{
        background-color: salmon;
        transition-duration:1s;
        color:white;
      	outline:none;
        }
        
		#roadAddress,#detailAddress{
			width: 170px;
		}
        .regex{
            font-size: 12px;
            text-align: center;
        }
</style>
<body>
<form action="join" method="POST" id="signform">
        <div id="wrapper">
            <div class="title">회원 가입 정보 입력</div>
            <label>아이디 : </label><input type="text" name="member_id" id="member_id">
            <input type="button" value="중복확인" id="duplcheck" >
            <div class="member_id regex"></div>
            
            <label>패스워드 : </label><input type="password" name="member_pw" id="member_pw"><br>
            <div class="member_pw regex"></div>
            
            <label>패스워드확인 : </label><input type="password" id="repw"><br>
            <div class="repw regex"></div>
            
            <label>이름: </label><input type="text" name="member_name" id="member_name"><br>
            <div class="member_name regex"></div>
            
            <label>닉네임: </label><input type="text" name="member_nickname" id="member_nickname"><br>
            <div class="member_nickname regex"></div><!-- 중복 허용? -->
            
            <label>전화번호 : </label><input type="text" name="member_phone" id="member_phone" placeholder="-과 공백 없이 입력"
            maxlength="11"><br>
            <div class="member_phone regex"></div>
            
            <label>이메일 : </label><input type="text" name="member_email" id="member_email"><br>
            <div class="member_email regex"></div>
            
            <!--  <label>우편번호 :</label><input type="text" id="postcode" placeholder="우편번호" name="zipcode">-->
            
            <label>주소 : </label><input type="text" id="roadAddress" placeholder="도로명주소" name="member_address">
            <input type="button" onclick="sample4_execDaumPostcode()" value="주소 찾기" >
            <!--<label>주소2 : </label><input type="text" id="detailAddress" placeholder="상세주소" name="detailaddress"><br>-->
            <div id="signup">
            <input type="button" name="signup" value="회원가입" id="signupbtn">
            <input type="reset" value="다시입력" id="resignupbtn">
            </div>
        </div>
</form>
<script>
        //다음 우편번호 API
            //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
            function sample4_execDaumPostcode() {
                new daum.Postcode({
                    oncomplete: function(data) {
                        // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
                        // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                        // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                        var roadAddr = data.roadAddress; // 도로명 주소 변수
                        var extraRoadAddr = ''; // 참고 항목 변수
                        // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                        // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                        if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                            extraRoadAddr += data.bname;
                        }
                        // 건물명이 있고, 공동주택일 경우 추가한다.
                        if(data.buildingName !== '' && data.apartment === 'Y'){
                            extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                        }
                       
                        // 우편번호와 주소 정보를 해당 필드에 넣는다.
                        //document.getElementById('postcode').value = roadAddr;
                        document.getElementById("roadAddress").value = roadAddr;
                    }
                }).open();
            }
        
         
            $(function(){
                // 중복확인 & id 유효성검사             
                $("#duplcheck").on("click",function(){
                    var id = $("#member_id").val();
                    if(id == ""){
                    	alert("아이디를 입력해주세요");
                    	return;
                    }
                    var regex = /^[a-z][a-z\d]{4,11}$/;
                	var result = regex.exec(id);
                    
                	 if(result != null){
                         $(".member_id.regex").html("");
                    window.open("idDuplCheck.jsp?id="+ id,"","width=500px,height=300px,top=300px,left=200px");
                     }else{
                         $(".member_id.regex").html("영어 소문자,숫자 4-12자리");
                         $(".member_id.regex").css("color","red")
                     }
                    
                    
                })
            
                
         
    	//비밀번호 유효성검사
            $("#member_pw").on("input",function(){
                var regex = /^[A-Za-z\d]{8,12}$/;
                var result = regex.exec($("#pw").val())
                
                if(result != null){
                    $(".member_pw.regex").html("");
                }else{
                    $(".member_pw.regex").html("영어대소문자,숫자 8-11자리");
                    $(".member_pw.regex").css("color","red")
                }
            });
            
           //비밀번호 확인    
               $("#repw").on("keyup",function(){
                    if($("#member_pw").val()==$("#repw").val()){
                       $(".repw.regex").html("비밀번호가 일치합니다"); 
                    }else{
                     $(".repw.regex").html("비밀번호가 일치하지않습니다"); 
                    }
               })
            
            //이름 유효성검사
                $("#member_name").on("input",function(){
                    var regex = /[가-힣]{2,}/;
                    var result = regex.exec($("#member_name").val());
                    
                    if(result != null){
                       $(".member_name.regex").html("");  
                    }else{
                        $(".member_name.regex").html("한글만 입력 가능합니다.");
                    }
                    
                })
            
            //전화번호 유효성검사
                $("#member_phone").on("input",function(){
                     var regex = /^01\d\d{3,4}\d{4}$/;
                     var result = regex.exec($("#member_phone").val());
                    
                    if(result != null){
                       $(".member_phone.regex").html("");  
                    }else{
                        $(".member_phone.regex").html("올바른 번호가 아닙니다");
                    }
                    
                })
            
            //email유효성 검사
                $("#member_email").on("input",function(){
                     var regex = /.+@[a-z]+(\.[a-z]+){1,2}$/;
                     var result = regex.exec($("#member_email").val());
                    
                    if(result != null){
                       $(".member_email.regex").html("");  
                    }else{
                        $(".member_email.regex").html("올바른 이메일이 아닙니다");
                    }
                })
          //회원가입 버튼 눌렀을 때, 빈칸 있으면 다시 유효성 검사진행    
           $("#signupbtn").on("click",function(){
        	   var id = $("#member_id").val();
        	   var pw = $("#member_pw").val();
        	   var name = $("#member_name").val();
        	   var nickname= $("#member_nickname").val();
        	   var phone = $("#member_phone").val();
        	   var email = $("#member_email").val();
        	   
        	   var idregex = /^[a-z][a-z\d]{4,11}$/;
        	   var pwregex = /^[A-Za-z\d]{8,12}$/;
        	   var nameregex = /[가-힣]{2,}/;
        	   var nicknameregex = /[ㄱ-힣0-9A-Za-z]{1,}/;
        	   var phoneregex = /^01\d\d{3,4}\d{4}$/;
        	   var emailregex = /.+@[a-z]+(\.[a-z]+){1,2}$/;
        	   
        	   var idregex = idregex.exec(id);
        	   if(idregex == null){
        		   alert("아이디양식을 다시 확인해주세요\n(영어,숫자 4~11글자)");
        		   return;
        	   }
        	   var pwregex = pwregex.exec(pw);
        	   if(pwregex == null){
        		   alert("비밀번호양식을 다시 확인해주세요\n(영어,숫자 8~12글자)");
        		   return;
        	   }
        	   var nameregex = nameregex.exec(name);
        	   if(nameregex == null){
        		   alert("이름양식을 다시 확인해주세요\n(두글자 이상)");
        		   return;
        	   }
        	   var nicknameregex = nicknameregex.exec(nickname);
        	   if(nicknameregex == null){
        		   alert("닉네임을 입력해주세요\n(한글자 이상 필수)");
        		   return;
        	   }
        	   var phoneregex = phoneregex.exec(phone);
        	   if(phoneregex == null){
        		   alert("핸드폰번호양식을 다시 확인해주세요\n(-와 빈칸 없이 입력)");
        		   return;
        	   }
        	   var emailregex = emailregex.exec(email);
        	   if(emailregex == null){
        		   alert("이메일양식을 다시 확인해주세요\n(***@***.***)");
        		   return;
        	   }
        	   
             //빈칸 없을 때 제출.
        	   $("#signform").submit();
            	   
           
           })
        })
</script>

</body>
</html>