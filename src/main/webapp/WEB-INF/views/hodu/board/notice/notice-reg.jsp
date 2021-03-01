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
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>


<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/board.css">
<link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet" >
   <section>
       <div class="container">
            <div class="row">
                <div class="col-xs-12 content-wrap">
                    <div class="titlebox">
                        <p>공지사항</p>
                    </div>
                    
                    <form action="registForm" method="post" name="registForm">
	                    <table class="table">
	                        <tbody class="t-control">
	                        	<!-- input의 name을 추가 -->
	                            <tr>
	                                <td class="t-title">썸네일 이미지</td>
	                                <!-- span을 통해 평상시에 안보이는 메세지를 작성 -->
	                                <td><input class="form-control input-sm" name="member_id" value="master" readonly><span id="msgId"></span></td>
	                            </tr>
	                            <tr>
	                                <td class="t-title">내용 이미지</td>
	                                <!-- span을 통해 평상시에 안보이는 메세지를 작성 -->
	                                <td><input class="form-control input-sm" name="member_id" value="master" readonly><span id="msgId"></span></td>
	                            </tr>	                            
	                            <tr>
	                                <td class="t-title">제목</td>
	                                <td><input class="form-control input-sm" name="notice_title"><span id="msgTitle"></span></td>
	                            </tr>
	                            <tr>
	                                <td class="t-title">카테고리</td>
	                                <td><input class="form-control input-sm" name="notice_title"><span id="msgTitle"></span></td>

	                                <td class="t-title" >회차</td>
	                                <td><input class="form-control input-sm" name="notice_title"><span id="msgTitle"></span></td>
	                            </tr>	                            
	                            <tr>
	                                <td class="t-title">회차 당 가격</td>
	                                <td><input class="form-control input-sm" name="notice_title"><span id="msgTitle"></span></td>
	                            </tr>	                         
	                            <tr>
	                                <td class="t-title">멘토소개</td>
	                                <td>
	                                <textarea class="form-control" rows="10" placeholder="멘토 자신에 대해 소개해주세요. 이력사항과 자기소개로 자신을 홍보할 수 있는 기회입니다." name="notice_content"></textarea>
	                                </td>                 
	                            </tr>
	                            <tr>
	                                <td class="t-title">클래스</td>
	                                <td>
	                                <textarea class="form-control" rows="10" placeholder="어떤 클래스인지 수업 내용과 수업 목표에 대해 소개해주세요. " name="notice_content"></textarea>
	                                </td>                 
	                            </tr>	    
	                            <tr>
	                                <td class="t-title">추천</td>
	                                <td>
	                                <textarea class="form-control" rows="10" placeholder="추천하실 분들을 써주세요. (클래스 홍보에 도움이 됩니다.)" name="notice_content"></textarea>
	                                </td>                 
	                            </tr>		                                                    
	                            <tr>
	                                <td class="t-title">진행방식</td>
	                                <td>
	                                <textarea class="form-control" rows="10" placeholder="간단한 1회차 커리큘럼 소개와 함께 클래스 진행방식을 써주세요." name="notice_content"></textarea>
	                                </td>                 
	                            </tr>	                            
	                        </tbody>
	                    </table>
	                    <div class="titlefoot">
	                        <button class="btn" type="button" onclick="regist()">등록</button>
	                        <button class="btn" type="button" onclick="location.href='notice-category'">목록</button>
	                    </div>
                    </form>
                    
                </div>
            </div>    
       </div>
       
       <script type="text/javascript">
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