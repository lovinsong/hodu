<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
                        <p>게시판</p>
                    </div>
                    
                    <form action="registForm" method="post" name="registForm">
	                    <table class="table">
	                        <tbody class="t-control">
	                        	<!-- input의 name을 추가 -->
	                            <tr>
	                                <td class="t-title">NAME</td>
	                                <!-- span을 통해 평상시에 안보이는 메세지를 작성 -->
	                                <td><input class="form-control input-sm" name="writer" value="master" readonly><span id="msgId"></span></td>
	                            </tr>
	                            <tr>
	                                <td class="t-title">TITLE</td>
	                                <td><input class="form-control input-sm" name="title"><span id="msgTitle"></span></td>
	                            </tr>
	                            <tr>
	                                <td class="t-title">COMMNET</td>
	                                <td>
	                                <textarea class="form-control" rows="7" name="content"></textarea>
	                                </td>                 
	                            </tr>
	                        </tbody>
	                    </table>
	                    <div class="titlefoot">
	                        <button class="btn" type="button" onclick="regist()">등록</button>
	                        <button class="btn" type="button" onclick="location.href='item-category'">목록</button>
	                    </div>
                    </form>
                    
                </div>
            </div>    
       </div>
       
       <script type="text/javascript">
       		function regist(){
       			if(document.registForm.writer.value === ''){
       				document.getElementById("msgId").innerHTML = " 아이디는 필수 입니다";
       				document.registForm.writer.focus();
       				return;
       			} else if(document.registForm.title.value === ''){
       				document.getElementById("msgTitle").innerHTML = " 제목은 필수 입니다";
       				document.registForm.title.focus();
       				return;
       			} else{
       				document.registForm.submit();//입력 완료시 서브밋
       			}
       			
       		}
       
       
       </script>
       
       
       
    </section>
