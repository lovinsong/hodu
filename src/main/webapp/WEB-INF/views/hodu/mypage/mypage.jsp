<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />

<!-- Favicon -->
<link rel="icon" href="../image/favicon.ico">
<link rel="shortcut icon" href="../image/favicon.ico">

<!-- CSS Libraries -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">	
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets_mypage/assets/css/main.css" />

<title>호두 : 생활 서비스 멘토 매칭</title>
</head>

<body class="is-preload">
	
	<!-- Wrapper-->
	<div id="wrapper">

		<p>마이 페이지</p>

		<!-- Nav -->
		<nav id="nav">
			<a href="#user" class="icon solid fa-user"><span>프로필</span></a>
			<a href="#heart" class="icon solid fa-heart"><span>찜 목록</span></a>
			<a href="#wallet" class="icon solid fa-wallet"><span>수강 내역</span></a>
			<a href="#comments" class="icon solid fa-comments"><span>톡 (talk)</span></a>
			<a href="#question" class="icon solid fa-question"><span>고객센터</span></a>				
		</nav>	

			<div id="main">

<!----------------------------------------------------------- 프로필 ----------------------------------------------------------->
					

					<article id="user" class="panel">
						
						<header>
							<p>프로필</p>
						</header>

					</article>


<!----------------------------------------------------------- 찜 목록 ----------------------------------------------------------->
					

					<article id="heart" class="panel">

						<header>
							<p>찜 목록</p>
						</header>
											
					</article>



<!----------------------------------------------------------- 수강 내역 ----------------------------------------------------------->


					<article id="wallet" class="panel">

						<header>
							<p>수강 내역</p>
						</header>

					</article>

<!------------------------------------------------------------ 톡(talk) ----------------------------------------------------------------->
					
					<article id="comments" class="panel">
						<header>
							<p>톡 (talk)</p>
						</header>

						<!-- if 멘토 -->
						<div class="bubble mentee">저는 멘티에요</div><br><br><br>


						<!-- if 멘티 -->
						<div class="bubble mentor">저는 멘토에요</div><br><br><br>


						<!-- + 시간 순서 -->
						<div class="bubble mentee">저는 멘티에요</div><br><br><br>
						<div class="bubble mentor">저는 멘토에요</div><br><br><br>

					</article>

<!-------------------------------------------------------------- 고객센터 --------------------------------------------------------------------->
					

					<article id="question" class="panel">

						<div class = "question_board">				

							<article id="write_question_board"> 					

								<header>
									<p>[ 문의하기 ]</p>
									<br>
								</header>

								<hr style="border-color:rgb(199, 199, 199); margin-bottom: 5%;">
					   
									<div class="titlebox">																
										<form action="registForm" method="post" name="registForm" enctype="multipart/form-data">
											<table class="table">
												<tbody class="t-control">
													<tr>
														<td class="t-title"><strong>첨부파일</strong></td>
														<td><input type="file" value="파일 선택" name="content_file" multiple="multiple" style="font-size: 15px;"/></td>
													</tr>	                            
													<tr>
														<td class="t-title"><strong>제목</strong></td>
														<td><input class="form-control input-sm" name="notice_title" style="width:100%;" placeholder="제목을 입력해주세요"><span id="msgTitle"></span></td>
													</tr>
													<tr>
														<td class="t-title"><strong>문의 분류</strong></td>
														<td><select class="form-select" aria-label="multiple select example">
															<option disabled selected style="color: #eee" >-  필수 선택 -</option>
															<option value="1">충전 · 결제</option>
															<option value="2">회원정보 조회 · 수정</option>
															<option value="3">사이트 이용</option>
															<option value="4">탈퇴 · 재가입</option>
															<option value="5">취소 · 환불</option>
															<option value="6">아이디 · 비밀번호 찾기</option>
														</select></td>
													</tr>                            	  	                                   	                            
													<tr>
														<td class="t-title"><strong>문의 내용</strong></td>
														<td>
														<textarea class="form-control" rows="13" placeholder="문의 내용을 작성해주세요" name="notice_content"></textarea>
														</td>                 
													</tr>
													<tr>
												</tr>	                                                                                   
												</tbody>
											</table> <br><br>

											
												<div class="container" >
													<div class="row row-cols-6" >
													
													<div class="col"></div>
													<div class="col"></div>
													<div class="col"><button class = "btn btn-reg" type="button" onclick="regist()"> 등록 </button></div>							    
													<div class="col"><button class = "btn btn-reg" type="button" onclick="location.href='notice-category'">목록</button></div>
													<div class="col"></div>
													<div class="col"></div>
													
													</div>
												</div>

										</form>                    
									</div>	

							</article>



						<div id="show_question_board" style="display: none;"> 					

							<header>
								<hr>
								<p>문의내역</p>
								<br>
							</header>
	
							   
								<div class="titlebox">																
									<form action="registForm" method="post" name="registForm" enctype="multipart/form-data">
										<table class="table">
											<tbody class="t-control">
												<tr>
													<td class="t-title"><strong>첨부파일</strong></td>
													<td><input type="file" value="파일 선택" name="content_file" multiple="multiple" style="font-size: 15px;"/></td>
												</tr>	                            
												<tr>
													<td class="t-title"><strong>제목</strong></td>
													<td><input class="form-control input-sm" name="notice_title" style="width:100%;" placeholder="제목을 입력해주세요"><span id="msgTitle"></span></td>
												</tr>
												<tr>
													<td class="t-title"><strong>문의 분류</strong></td>
													<td><select class="form-select" aria-label="multiple select example">
														<option disabled selected style="color: #eee" >-  필수 선택 -</option>
														<option value="1">충전 · 결제</option>
														<option value="2">회원정보 조회 · 수정</option>
														<option value="3">사이트 이용</option>
														<option value="4">탈퇴 · 재가입</option>
														<option value="5">취소 · 환불</option>
														<option value="6">아이디 · 비밀번호 찾기</option>
													</select></td>
												</tr>                            	  	                                   	                            
												<tr>
													<td class="t-title"><strong>문의 내용</strong></td>
													<td>
													<textarea class="form-control" rows="13" placeholder="문의 내용을 작성해주세요" name="notice_content"></textarea>
													</td>                 
												</tr>
												<tr>
											</tr>	                                                                                   
											</tbody>
										</table>
	
										<br><br>
											<div class="container" >
												<div class="row row-cols-6" >
												
												<div class="col"></div>
												<div class="col"></div>
												<div class="col"><button class = "btn btn-reg" type="button" onclick="regist()"> 등록 </button></div>							    
												<div class="col"><button class = "btn btn-reg" type="button" onclick="location.href='notice-category'">목록</button></div>
												<div class="col"></div>
												<div class="col"></div>
												
												</div>
											</div>	                    
										</form>                    
									</div>	
								   
							</div>


					</div>	

						
				</article>

			</div>
	</div>

<!-- Scripts -->
	<script src="${pageContext.request.contextPath}/resources/assets_mypage/assets/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets_mypage/assets/js/browser.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets_mypage/assets/js/breakpoints.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets_mypage/assets/js/util.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets_mypage/assets/js/main.js"></script>

	<script type="text/javascript">
	
		function regist(){//문의 등록할 때
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

	</body>
</html>