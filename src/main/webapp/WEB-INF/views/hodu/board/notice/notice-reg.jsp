<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!-- +/-인원수 체크 -->
<!-- <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> -->

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/board.css">
<link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet" >
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
	                            <tr>
	                                <td class="t-title"><strong>썸네일 이미지 첨부파일</strong></td>
	                                <td><input type="file" value="파일 선택" name="thumbnail_file"/></td> 
	                            </tr>
	                            <tr>
	                                <td class="t-title"><strong>내용 이미지 첨부파일</strong></td>
	                                <td><input type="file" value="파일 선택" name="content_file" multiple="multiple"/></td>
	                            </tr>	                            
	                            <tr>
	                                <td class="t-title" ><strong>클래스 이름</strong></td>
	                                <td><input class="form-control input-sm" name="notice_title" style="width:100%;"><span id="msgTitle"></span></td>
	                            </tr>
	                            <tr>
                                  <td class="t-title"><strong>카테고리</strong></td>
                                    <td><select class="form-select" aria-label="multiple select example">
	                                  <option selected style="color: lightgrey">- 카테고리 선택 -</option>
	                                  <option value="1">☆인기</option>
	                                  <option value="2">뷰티/헬스</option>
	                                  <option value="3">홈/리빙</option>
	                                  <option value="4">취미/공예</option>
	                                  <option value="5">머니</option>
	                                  <option value="6">IT/커리어</option>
	                                  <option value="7">디자인/영상</option>
	                                  <option value="8">외국어</option>
                                    </select></td>
								</tr>
								<tr>
	                               <td class="t-title"><strong>회차</strong></td>
	                               <td>                           
										<div class="toggle">
											<input type="radio" name="sizeBy" value="weight" id="sizeWeight" checked="checked" />
											<label for="sizeWeight">1회차</label>
											<input type="radio" name="sizeBy" value="dimensions" id="sizeDimensions" />
											<label for="sizeDimensions">다회차</label>
										</div>
									</td>
	                            </tr>	                            
	                            <tr>
	                                <td class="t-title"><strong>회차 당 가격</strong></td>
	                                <td><input class="form-control input-sm" name="notice_title"> 호두 <img src="/project/resources/image/favicon.ico"></td>
	                            </tr>	
	                            <tr>
	                                <td class="t-title"><strong>회차 당 시간</strong></td>
	                                <td><input type="range" class="form-range" min="0" max="6" step="0.5" value="0" id="customRange3"> 시간</td>
	                            </tr>	  	
	                            <tr>
	                                <td class="t-title"><strong>수업 예정 장소</strong></td>
	                                <td><input class="form-control input-sm" name="notice_title"><span id="msgTitle"></span></td>
	                            </tr>	        
	                            
	                            <tr>
	                                <td class="t-title"><strong>수강 최대 인원</strong></td>	
	                                <td class="qty mt-5">
				                        <span class="minus">－</span>
				                        <input type="number" class="count" name="qty" value="1">
				                        <span class="plus">＋</span>	                              
	                                </td>
	                            </tr>                            	                            
                                <tr>
	                                <td class="t-title"><strong>멘토님은 어떤 분이신가요?</strong></td>
	                                <td>
	                                <textarea class="form-control" rows="10" placeholder="멘토 자신에 대해 소개해주세요. 이력사항과 자기소개로 자신을 홍보할 수 있는 기회입니다." name="notice_content"></textarea>
	                                </td>                 
	                            </tr>
	                            <tr>
	                                <td class="t-title"><strong>무엇을 하는 클래스인가요?</strong></td>
	                                <td>
	                                <textarea class="form-control" rows="10" placeholder="어떤 클래스인지 수업 내용과 수업 목표에 대해 소개해주세요. " name="notice_content"></textarea>
	                                </td>                 
	                            </tr>	    
	                            <tr>
	                                <td class="t-title"><strong>누구에게 추천하고 싶나요?</strong></td>
	                                <td>
	                                <textarea class="form-control" rows="10" placeholder="추천하실 분들을 써주세요. (클래스 홍보에 도움이 됩니다.)" name="notice_content"></textarea>
	                                </td>                 
	                            </tr>		                                                    
	                            <tr>
	                                <td class="t-title"><strong>어떻게 진행되나요?</strong></td>
	                                <td>
	                                <textarea class="form-control" rows="10" placeholder="간단한 1회차 커리큘럼 소개와 함께 클래스 진행방식을 써주세요." name="notice_content"></textarea>
	                                </td>                 
	                            </tr>	
	                           <tr>
							</tr>	                                                                                   
	                        </tbody>
	                    </table>
							<div class="container" >
                              <div class="row align-items-center" >

                                <div class="col-md-6" align="right"><button class = "btn btn-reg" type="button" onclick="regist()"> 등록</button></div>
                                <div class="col-md-6"><button class = "btn btn-reg" type="button" onclick="location.href='notice-category'">목록</button></div>

                              </div>
                            </div>                   
                    </form>                    
                </div>
            </div>    
       </div>
       
       <script type="text/javascript">

       
  		//인원 수 체크
		$(document).ready(function(){
		    $('.count').prop('disabled', true);
   			$(document).on('click','.plus',function(){
				$('.count').val(parseInt($('.count').val()) + 1 );
    		});
        	$(document).on('click','.minus',function(){
    			$('.count').val(parseInt($('.count').val()) - 1 );
    				if ($('.count').val() == 0) {
						$('.count').val(1);
					}
    	    	});
 		});
       
       		function regist(){
       			if(document.registForm.member_id.value === ''){
       				document.getElementById("msgId").innerHTML = " 아이디는 필수입니다";
       				document.registForm.writer.focus();
       				return;
       			} else if(document.registForm.notice_title.value === ''){
       				document.getElementById("msgTitle").innerHTML = " 제목은 필수입니다";
       				document.registForm.title.focus();
       				return;
       			} else{
       				document.registForm.submit();//입력 완료시 서브밋
       			}
       			
       		}
       		


       
       </script>
       
       
       
    </section>