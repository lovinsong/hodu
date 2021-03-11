<%@ include file="../../headerfooter/hoduheader.jsp"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<!DOCTYPE html>

<%@ include file="/WEB-INF/views/hodu/main/header.jsp"%>
<html>
<head>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- 주소 찾기 -->
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script> 

<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/board.css">
<link href="${pageContext.request.contextPath}/resources/assets/css/style.css" rel="stylesheet" >
   <section>
   		
       <div class="container">
            <div class="row">
                <div class="col-xs-12 content-wrap">
                    <div class="titlebox">
                    <div>
                        <h2><strong>클래스 등록하기</strong></h2>
                    </div>    
                  </div>				             
                    
                    <form action="registForm" method="post" name="registForm" enctype="multipart/form-data">
	                    <table class="table">
	                        <tbody class="t-control">
	                        	<tr style="display:none">
	                        		<td><input type="text" name = "member_id" value= "${member.member_id}"></td>
	                        	</tr>
	                            <tr>
	                                <td class="t-title"><strong>썸네일 이미지 첨부파일</strong></td>
	                                <td><input type="file" value="파일 선택" name="item_thumbnailimgA" onclick="rsmsg('msgThumbnailimg')"/><span id="msgThumbnailimg" class="msg"></span></td> 
	                            </tr>
	                            <tr>
	                                <td class="t-title"><strong>내용 이미지 첨부파일</strong></td>
	                                <td><input type="file" value="파일 선택" name="b_img" multiple="multiple"  onclick="rsmsg('msgb_img')"/><span id="msgb_img" class="msg"></span></td>
	                            </tr>	                            
	                            <tr>
	                                <td class="t-title" ><strong>클래스 이름</strong></td>
	                                <td><input class="form-control input-sm" name="item_title" style="width:100%;" onclick="rsmsg('msgTitle')"><span id="msgTitle" class="msg"></span></td>
	                            </tr>
	                            <tr>
                                  <td class="t-title"><strong>카테고리</strong></td>
                                    <td><select id="item_category" name="item_category" class="form-select" aria-label="multiple select example">
	                                  <option selected style="color: lightgrey">- 카테고리 선택 -</option>
	                                  <option value="뷰티/헬스">뷰티/헬스</option>
	                                  <option value="홈/리빙">홈/리빙</option>
	                                  <option value="취미/공예">취미/공예</option>
	                                  <option value="머니">머니</option>
	                                  <option value="IT/커리어">IT/커리어</option>
	                                  <option value="디자인/영상">디자인/영상</option>
	                                  <option value="외국어">외국어</option>
                                    </select></td>
								</tr>
								<tr>
	                               <td class="t-title"><strong>클래스 일정</strong></td>
	                               <td>
	                               		<input style="display:inline" id="class_btn" class="btn" type="button" onclick="popUp(); rsmsg('msgClass_btn');" value="선택하러 가기"></input><span id="msgClass_btn" class="msg"></span>
	       								<ul id="mylist" class="mylist">
									        <li>일정 1</li>
									        <li>일정 2</li>
									        <li>일정 3</li>
									        <li>일정 4</li>
									        <li>일정 5</li>
									    </ul>
									    <input id="pick1" name="day1" value = "" style='display:none;'>
								        <input id="pick2" name="day2" value = "" style='display:none;'>
								        <input id="pick3" name="day3" value = "" style='display:none;'>
								        <input id="pick4" name="day4" value = "" style='display:none;'>
								        <input id="pick5" name="day5" value = "" style='display:none;'>
									</td>
	                            </tr>                        
	                            <tr>
	                                <td class="t-title"><strong>수강 최대 인원</strong></td>	
	                                <td class="qty mt-5">
				                        <span class="minus">－</span>
				                        <input type="number" id = "item_num_of_people" name="item_NOP" class="count"  value= "1" readonly="readonly">
				                        <span class="plus">＋</span>	                          
	                                </td>
	                            </tr>    
                                <tr>
	                                <td class="t-title"><strong>회차 당 가격</strong></td>
	                                <td><input type="number" id = "item_price" class="form-control input-sm" name="item_price"  value=0  min="1" max="1000" onchange="this.value = Math.floor(Math.max(this.value,1)); this.value = Math.floor(Math.min(this.value,1000));" style="text-align:right;" /> <strong>&emsp;호두 </strong><img src="/project/resources/assets/image/favicon.ico"></td>
	                            </tr>		                            
	                            <tr>
	                                <td class="t-title" id="place"><strong>수업 예정 장소</strong></td>
	                                <td>
	                                <div class="btn-group" id="class_place" role="group" aria-label="Basic radio toggle button group"  >
									 <p>
									  <input type="radio" class="btn-check" name="item_place" id="btnradio1" autocomplete="off" value="온라인 수업">
									  <label class="btn btn-outline-primary" for="btnradio1">온라인 수업</label>
									</p>&nbsp;
									<p>
									  <input type="radio" class="btn-check" name="item_place" id="btnradio2" autocomplete="off" value="자택 수업">
									  <label class="btn btn-outline-primary" for="btnradio2">자택 수업</label>
									</p>&nbsp;
									<p>
									  <input type="radio" class="btn-check" name="item_place" id="btnradio3" autocomplete="off" >
									  <label class="btn btn-outline-primary" for="btnradio3">주소 선택하기</label>
									</p>
									</div>
									<div class="row">
										<div class="col">
										    <div class="" id="multiCollapseExample1" style='display:none;'>
										      <div class="card card-body">
										        온라인 수업은 실시간 LIVE 영상이나 녹화 영상으로 수업이 진행됩니다.
										      </div>
										    </div>
										<div class="col">
										    <div class="" id="multiCollapseExample2" style='display:none;'>
										      <div class="card card-body">
										        자택 수업은 멘티의 자택에서 수업이 진행됩니다.
										      </div>
										    </div>
										</div>	
										<div class="col">
										    <div class="" id="multiCollapseExample3" style='display:none;'>
										      <div class="card card-body">
										        	<input type="button" class="btn" onclick="sample4_execDaumPostcode()" value="주소 찾기"><br><br>
													 <label>우편번호 : &emsp;</label><input type="text" id="postcode" placeholder="우편번호" name="postcode" readonly><br><br>
													<label>주소 : &emsp;</label><input type="text" id="roadAddress" placeholder="도로명주소" name="address" readonly><br><br>
													<label>상세 입력하기 : &emsp;</label><input  id="detailAddress" class="form-control input" name="detail_add" style="width:70%;" ><br> <br>              
													<span id="msgTitle"></span> 
										      </div>
										    </div>
										  </div>
										</div>
									</div>                                	
									</td>	                            
	                            </tr>     	                                           	                            
                                <tr>
	                                <td class="t-title"><strong>멘토님은 어떤 분이신가요?</strong></td>
	                                <td>
	                                <textarea class="form-control" rows="10" placeholder="멘토 자신에 대해 소개해주세요. 이력사항과 자기소개로 자신을 홍보할 수 있는 기회입니다." name="item_content_who" id="item_content_who"></textarea>
	                                </td>                 
	                            </tr>
	                            <tr>
	                                <td class="t-title"><strong>무엇을 하는 클래스인가요?</strong></td>
	                                <td>
	                                <textarea class="form-control" rows="10" placeholder="어떤 클래스인지 수업 내용과 수업 목표에 대해 소개해주세요. " name="item_content_what" id="item_content_what"></textarea>
	                                </td>                 
	                            </tr>	    
	                            <tr>
	                                <td class="t-title"><strong>누구에게 추천하고 싶나요?</strong></td>
	                                <td>
	                                <textarea class="form-control" rows="10" placeholder="추천하실 분들을 써주세요. (클래스 홍보에 도움이 됩니다.)" name="item_content_target" id="item_content_target"></textarea>
	                                </td>                 
	                            </tr>		                                                    
	                            <tr>
	                                <td class="t-title"><strong>어떻게 진행되나요?</strong></td>
	                                <td>
	                                <textarea class="form-control" rows="10" placeholder="간단한 1회차 커리큘럼 소개와 함께 클래스 진행방식을 써주세요." name="item_content_how" id="item_content_how"></textarea>
	                                </td>                 
	                            </tr>	
	                           <tr>
							</tr>	                                                                                   
	                        </tbody>
	                    </table>
							<div class="container" >
                              <div class="row align-items-center" >

                                <div class="col-md-6" align="right"><button class = "btn btn-reg" type="button" onclick="regist()"> 등록</button></div>
                                <div class="col-md-6"><button class = "btn btn-reg" type="button" onclick="location.href='item-category'">목록</button></div>

                              </div>
                            </div>                   
                    </form>                    
                </div>
            </div>    
            
       </div>
		
		
      
       
		
       
       <script type="text/javascript">

       
  		//인원 수 체크
		$(document).ready(function(){
   			$(document).on('click','.plus',function(){
   				
   				if ($('#item_num_of_people').val() < 15) {
					$('#item_num_of_people').val(parseInt($('#item_num_of_people').val()) + 1 );
   				}
    		});
        	$(document).on('click','.minus',function(){
    			$('#item_num_of_people').val(parseInt($('#item_num_of_people').val()) - 1 );
    				if ($('#item_num_of_people').val() == 0) {
						$('#item_num_of_people').val(1);
					}
    	    	});
 		});
			
   		function regist(){
   			
   			if(document.registForm.item_thumbnailimgA.value === '') {
   				document.getElementById("msgThumbnailimg").innerHTML = " * 썸네일 이미지를 선택해주세요";
   				document.registForm.item_thumbnailimgA.focus();
   				return;
   			} else if (document.registForm.b_img.value ===''){
   				document.getElementById("msgb_img").innerHTML = " * 내용 이미지를 선택해주세요";
   				document.registForm.item_thumbnailimgA.focus();
   				return;
   			} else if(document.registForm.item_title.value === ''){
   				document.getElementById("msgTitle").innerHTML = " * 제목을 입력해주세요";
   				document.registForm.item_title.focus();
   				return;
   			} else if (document.registForm.item_category.value === '- 카테고리 선택 -') {
   				document.registForm.item_category.focus();
   				return;
   			} else if (document.registForm.pick1.value === '') {
   				document.registForm.class_btn.focus();
   				document.getElementById("msgClass_btn").innerHTML = " * 일정을 선택해주세요";
   				return;
   			} else if (document.registForm.item_price.value === '0') {
   				document.registForm.item_price.focus();
   			} else if (document.registForm.item_place.value === '') {
   				document.registForm.btnradio1.focus();
   			} else if ($('input[type=radio][id="btnradio3"]:checked').val() && (document.registForm.detail_add.value === '' || document.registForm.address.value === '' || document.registForm.postcode.value === '')) {
				document.registForm.btnradio3.focus();
				return;
   			} else if (document.registForm.item_content_who.value === ''){
   				document.registForm.item_content_who.focus();
   			} else if (document.registForm.item_content_what.value === ''){
   				document.registForm.item_content_what.focus();
   			} else if (document.registForm.item_content_target.value === ''){
   				document.registForm.item_content_target.focus();
   			} else if (document.registForm.item_content_how.value === ''){
   				document.registForm.item_content_how.focus();
   			} else{
   				document.registForm.submit();
   			}
   			
   		}
   		
   		function rsmsg(id) {
   			document.getElementById(id).innerHTML = " ";
   		}
   		
   		function popUp() {
   			
   			var popupX = (document.body.offsetWidth / 2) - (450 / 2);
   			var popupY= (document.body.offsetHeight / 2) - (650 / 2);

   			var url = "./Datepicker";
   			var name = "hi";
   			window.open(url,name,'status=no, height=650, width=450, left='+ popupX + ', top='+ popupY);
   		}
   		
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
   		

        $('input[type="radio"][id="btnradio1"]').on('click', function(){
          var chkValue = $('input[type=radio][id="btnradio1"]:checked').val();
          if(chkValue){
                     $('#multiCollapseExample1').css('display','block');
                     $('#multiCollapseExample2').css('display','none');
                     $('#multiCollapseExample3').css('display','none');
                     $('#postcode').val(null);
                     $('#roadAddress').val(null);
                     $('#detailAddress').val(null);
          }
         
        });
        $('input[type="radio"][id="btnradio2"]').on('click', function(){
            var chkValue = $('input[type=radio][id="btnradio2"]:checked').val();
            if(chkValue){
                       $('#multiCollapseExample1').css('display','none');
                       $('#multiCollapseExample2').css('display','block');
                       $('#multiCollapseExample3').css('display','none');
                       $('#postcode').val(null);
                       $('#roadAddress').val(null);
                       $('#detailAddress').val(null);
            }
           
          });
        $('input[type="radio"][id="btnradio3"]').on('click', function(){
            var chkValue = $('input[type=radio][id="btnradio3"]:checked').val();
            if(chkValue){
                       $('#multiCollapseExample1').css('display','none');
                       $('#multiCollapseExample2').css('display','none');
                       $('#multiCollapseExample3').css('display','block');
            }
           
          });
    

       
   </script>
<%@ include file="/WEB-INF/views/hodu/main/footer.jsp"%>
</section>
