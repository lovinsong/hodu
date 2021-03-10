<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<link href="${pageContext.request.contextPath}/resources/assets/css/style2.css" rel="stylesheet" >

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<section>
	<div class="container-fluid">
		<div class="row">
			<!--lg에서 9그리드, xs에서 전체그리드-->
			<div class="col-lg-9 col-xs-12 board-table">
				<div class="titlebox">
					<div>
					<h1>공지사항</h1>
					</div>
				</div>
				<hr>

				<table class="table table-bordered tablestyle">
					<thead>
						<tr>
							<th class="board-title">제목</th>
							<th>작성자</th>
							<th>등록일</th>
							<th>수정일</th>
						</tr>
					</thead>
					<tbody>
						<!-- vo란 이름으로 꺼내주기 -->
						<c:forEach var="vo" items="${dto }">
							<tr style = "cursor:pointer;" onClick = " location.href='notice-detail?notice_postnum=${vo.notice_postnum }' " 
							onMouseOver = " window.status = 'notice-detail?notice_postnum=${vo.notice_postnum }'; style='background-color:#e1e1e1; cursor:pointer;' "
							onMouseOut = "style='background-color:white cursor:pointer;'" >
								<td>${vo.notice_title }</td>
								<td>${vo.member_id }</td>
								<td><fmt:formatDate value="${vo.notice_regist_date}"
										pattern="yyyy년MM월dd일 " /></td>
								<td><fmt:formatDate value="${vo.notice_modify_date}"
										pattern="yyyy년MM월dd일" /></td>
							</tr>
						</c:forEach>
					</tbody>

				</table>




			</div>
		</div>
	</div>
</section>

<script>
	
</script>












