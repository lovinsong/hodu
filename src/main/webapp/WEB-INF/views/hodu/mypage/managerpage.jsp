<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<%@ include file="/WEB-INF/views/hodu/main/header.jsp"%>
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

<body class="is-preload"  >
	
	<!-- Wrapper-->
	<div id="wrapper" style="margin-right:-2%;" >

		<p>관리 페이지</p>

		<!-- Nav -->
		<nav id="nav">
			<a href="#user" class="icon solid fa-user"><span>프로필</span></a>
			<a href="#heart" class="icon solid fa-tasks"><span>멘토 관리</span></a>
			<a href="#wallet" class="icon solid fa-address-card"><span>유저 관리</span></a>
			<a href="#comments" class="icon solid fa-comments"><span>톡 (talk)</span></a>
			<a href="#question" class="icon solid fa-question"><span>문의 관리</span></a>				
		</nav>	

			<div id="main">

<!----------------------------------------------------------- 프로필 ----------------------------------------------------------->
					

					<article id="user" class="panel">
						
						<header>
							<p>프로필 변경</p>
						</header>
						<%@ include file="../mypage/update.jsp"%>
					</article>


<!----------------------------------------------------------- 멘토 관리 ----------------------------------------------------------->
					

					<article id="heart" class="panel">

						<header>
							<p>멘토 관리</p>
						</header>
						<c:forEach var="myHeart" items="${myHeartList }">
							<div>
								<a href="/project/hodu/board/item/item-detail?item_code=${myHeart.item_code}"><img src="/project/upload/Thumbnail/${myHeart.item_thumbnailimg}" width=30% alt="" /> ${myHeart.item_title }</a>
							</div>
						</c:forEach>
						
											
					</article>



<!----------------------------------------------------------- 유저 관리 ----------------------------------------------------------->


					<article id="wallet" class="panel">

						<header>
							<p>유저 관리</p>
						</header>
						
						<table>
							<thead>
								<tr>
									<th class="board-title">ID</th>
									<th>닉네임</th>
									<th>이름</th>
									<th>멘토여부</th>
								</tr>
							</thead>
							<c:forEach var="memberOne" items="${memberList }">
								<tr>
									<td>${memberOne.member_id }</td>
									<td>${memberOne.member_nickname }</td>
									<td>${memberOne.member_name }</td>
									<td>${memberOne.mentor_enable }</td>
								</tr>
							</c:forEach>
						</table>

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

<!-------------------------------------------------------------- 문의 관리 --------------------------------------------------------------------->
					

					<article id="question" class="panel">

						<div class = "question_board">				

							<article id="write_question_board"> 					

								<header>
									<p>문의 관리</p>
									<br>
								</header>

								<hr style="border-color:rgb(199, 199, 199); margin-bottom: 5%;">
					   
									<div class="titlebox">																
										<form action="inquiryregistForm" method="post" name="inquiryregistForm" enctype="multipart/form-data">
											<table class="table">
												<tbody class="t-control">
													<tr style="display:none"><td><input style="display:none" name = "member_id" value="${member.member_id}"></td></tr>
													<tr>
														<td class="t-title"><strong>첨부파일</strong></td>
														<td><input type="file" value="파일 선택" name="inquiry_imgs" style="font-size: 15px;"/></td>
													</tr>	                            
													<tr>
														<td class="t-title"><strong>제목</strong></td>
														<td><input class="form-control input-sm" name="inquiry_title" style="width:100%;" placeholder="제목을 입력해주세요"><span id="msgTitle"></span></td>
													</tr>
													<tr>
														<td class="t-title"><strong>문의 분류</strong></td>
														<td><select class="form-select" id="inquiry_group" name="inquiry_group" aria-label="multiple select example">
															<option disabled="disabled" selected style="color: #eee" >- 필수 선택 -</option>
															<option value="충전 · 결제">충전 · 결제</option>
															<option value="회원정보 조회 · 수정">회원정보 조회 · 수정</option>
															<option value="사이트 이용">사이트 이용</option>
															<option value="탈퇴 · 재가입">탈퇴 · 재가입</option>
															<option value="취소 · 환불">취소 · 환불</option>
															<option value="아이디 · 비밀번호 찾기">아이디 · 비밀번호 찾기</option>
														</select></td>
													</tr>                            	  	                                   	                            
													<tr>
														<td class="t-title"><strong>문의 내용</strong></td>
														<td>
														<span id="msgContent"></span>
														<textarea class="form-control" rows="13" placeholder="문의 내용을 작성해주세요" name="inquiry_content"></textarea>
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
							
							<article>
								<table class="table table-bordered tablestyle">
									<thead>
										<tr>
											<th class="board-title">제목</th>
											<th>문의분류</th>
											<th>등록일</th>
											<th>수정일</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="myInquiry" items="${myInquiryList }">
											<tr style = "cursor:pointer;" onClick = "window.open('/project/hodu/board/inquiry/inquiry-detail?inquiry_postnum=${myInquiry.inquiry_postnum }','gi','width = 600, height = 600, top = 100, left = 200, location = no') " 
											onMouseOver = " window.status = '/project/hodu/board/inquiry/inquiry-detail?inquiry_postnum=${myInquiry.inquiry_postnum }'; style='background-color:#e1e1e1; cursor:pointer;' "
											onMouseOut = "style='background-color:white cursor:pointer;'" >
												<td>${myInquiry.inquiry_title }</td>
												<td>${myInquiry.inquiry_group }</td>
												<td><fmt:formatDate value="${myInquiry.inquiry_date}"
														pattern="yyyy년MM월dd일 " /></td>
												<td><fmt:formatDate value="${myInquiry.inquiry_modifydate}"
														pattern="yyyy년MM월dd일" /></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</article>


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
		if(document.inquiryregistForm.inquiry_title.value === ''){
			document.getElementById("msgTitle").innerHTML = " 제목은 필수입니다";
			document.inquiryregistForm.inquiry_title.focus();
			return;
		} else if(document.inquiryregistForm.inquiry_group.value === '- 필수 선택 -'){
			document.inquiryregistForm.inquiry_group.focus();
			return;
		} else if(document.inquiryregistForm.inquiry_content.value === ''){
			document.getElementById("msgContent").innerHTML = " 내용은 필수입니다";
			document.inquiryregistForm.inquiry_content.focus();
			return;
		} else{
			alert('등록 성공!');
			document.inquiryregistForm.submit();//입력 완료시 서브밋
		}
		
	}

	</script>
<%@ include file="/WEB-INF/views/hodu/main/footer.jsp"%>
	</body>
</html>