<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내 정보 수정</title>
<script
   src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script 
   src="https://code.jquery.com/jquery-3.4.1.js" 
   integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU=" 
   crossorigin="anonymous">
</script>

</head>
<style>

/*삭제하면 안되는 코드*/
.nick_input_re_1{
   color:green;
   display:none;
}
/*삭제하면 안되는 코드*/
.nick_input_re_2{
   color:red;
   display:none;
}

td {
font-size:16px;
}
</style>
<body>
<!-- 프로필 변경 포함시켜주는 코드 -->
<%@ include file="../account/changeProfileImg.jsp"%>
<!-- 보유 호두 포함시켜주는 코드 -->
<span id="myhoducount"><%@ include file="../account/myhoducount.jsp"%></span>

<div class="titlebox">																
	<form action="update" method="POST" id="updateform">
		<table class="table">
			<tbody class="t-control">
				<tr>
					<td class="t-title"><strong>아이디</strong></td>
					<td><input class="form-control input-sm id_input" name="member_id" id="member_id" 
							style="width:100%;" value="${member.member_id}" readonly></td>
				</tr>	                            
				<tr>
					<td class="t-title"><strong>이름</strong></td>
					<td>${member.member_name}</td>
				</tr>
				<tr>
					<td class="t-title"><strong>닉네임</strong></td>
					<td><input class="form-control input-sm nick_input" name="member_nickname" id="member_nickname" 
							style="width:100%;" value="${member.member_nickname}">
						<span class="nick_input_re_1">사용 가능한 닉네임입니다.</span>
      					<span class="nick_input_re_2">닉네임이 이미 존재합니다.</span>
					</td>
				</tr>
				<tr>
					<td class="t-title"><strong>전화번호</strong></td>
					<td>${member.member_phone}</td>
				</tr>
				<tr>
					<td class="t-title"><strong>이메일</strong></td>
					<td>${member.member_email}</td>
				</tr> 
				<tr>
					<td class="t-title"><strong>우편번호</strong></td>
					<td><input class="form-control input-sm" name="member_postcode" id="postcode" placeholder="우편번호"
							style="width:30%;display: inline;" value="${member.member_postcode}" readonly>&nbsp;
						<input class="btn btn-reg" type="button" onclick="sample4_execDaumPostcode()" value="주소 찾기">
					</td>
				</tr>
				<tr>
					<td class="t-title"><strong>주소</strong></td>
					<td><input class="form-control input-sm" name="member_address" id="roadAddress" placeholder="도로명주소"
							style="width:100%;" value="${member.member_address}" readonly>
					</td>
				</tr>
				<tr>
					<td class="t-title"><strong>상세주소</strong></td>
					<td><input class="form-control input-sm" name="member_detailaddress" id="detailAddress" 
							placeholder="상세주소" style="width:100%;" value="${member.member_detailaddress}">
					</td>
				</tr>
				<tr>
					<td class="t-title"><strong>멘토</strong></td>
					<td>${member.mentor_enable}</td>
				</tr>
				
				<tr></tr>	                                                                                   
		</tbody>
	</table> <br><br>
	
	
		<div class="container" style="border-bottom: 1px solid rgba(222, 222, 222, 0.25); padding-bottom: 20px" >
			<div class="row row-cols-6" >
			
				<div class="col"></div>
				<div class="col"></div>
				<div class="col"><input class="btn btn-reg" type="button" name="signup" value="수정 하기" id="signupbtn"></div>	
				<div class="col"><input class="btn btn-reg" type="button" value="회원 탈퇴" id="deletebtn" onclick="location.href='delete'"></div>
				<div class="col"></div>
				<div class="col"></div>
					
			</div>
		</div>
	</form>                    
</div>	


<script>
      var existNickname = "";
      
      
      //다음 우편번호 API
      //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
      function sample4_execDaumPostcode() {
         new daum.Postcode({
            oncomplete : function(data) {
               // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
               // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
               // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
               var roadAddr = data.roadAddress; // 도로명 주소 변수
               var extraRoadAddr = ''; // 참고 항목 변수
               // 법정동명이 있을 경우 추가한다. (법정리는 제외)
               // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
               if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
                  extraRoadAddr += data.bname;
               }
               // 건물명이 있고, 공동주택일 경우 추가한다.
               if (data.buildingName !== '' && data.apartment === 'Y') {
                  extraRoadAddr += (extraRoadAddr !== '' ? ', '
                        + data.buildingName : data.buildingName);
               }

               // 우편번호와 주소 정보를 해당 필드에 넣는다.
               document.getElementById('postcode').value = data.zonecode;
               document.getElementById("roadAddress").value = roadAddr;
               document.getElementById("detailAddress").focus();
            }
         }).open();
      }
      
      
      
      //!!!작동 닉네임
      $('.nick_input').on("propertychange change keyup paste input",function(){ //
         //console.log("keyup 테스트");
         var member_nickname = $('.nick_input').val(); 
         var member_id = $('.id_input').val(); 
         var data = {member_nickname : member_nickname, member_id : member_id} // '컨트롤에 넘길 데이터 이름' : '데이터(.id_input에 입력되는 값)' 
         $.ajax({ 
            type : "post", 
            url : "memberNickChk", 
            data : data,
            success : function(result){ 
               console.log("성공 여부" + result);

               if(result != 'fail'){
                  $('.nick_input_re_1').css("display","inline-block"); 
                  $('.nick_input_re_2').css("display", "none"); 
                  existNickname = result;
               } else { 
                  $('.nick_input_re_2').css("display","inline-block"); 
                  $('.nick_input_re_1').css("display", "none"); 
                  existNickname = result;
               }

            }// success 종료
         }); // ajax 종료      
      });// function 종료
      
      
      
      
      $(function() {             
         
         
         //회원가입 버튼 눌렀을 때, 빈칸 있으면 다시 유효성 검사진행    
         $("#signupbtn").on("click", function() {
            var nickname = $("#member_nickname").val();
            var address = $("#roadAddress").val();

            var nicknameregex = /[ㄱ-힣0-9A-Za-z]{1,}/;
            
           
            
            var nicknameregex = nicknameregex.exec(nickname);
            if (nicknameregex == null) {
               alert("닉네임을 입력해주세요\n(한글자 이상 필수, 특수문자 금지)");
               return;
            }
            if(existNickname == 'fail'){                            
                 alert("중복된 닉네임입니다\n다시 입력해주세요");
                return;
             }
            
            
             if (address == "") {
               alert("주소입력을 완료해주세요");
               return;
            }

            //빈칸 없을 때 제출.
            $("#updateform").submit();

         })
         
      })

      

   </script>

<!-- 비번 변경 포함시키는 코드 -->
<%@ include file="../account/changepw.jsp"%>
</body>
</html>