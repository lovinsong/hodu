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
	<div class="container-fluid">
		<div class="row">
			<!--lg에서 9그리드, xs에서 전체그리드-->
			<div class="col-lg-9 col-xs-12 board-table">
				<div class="titlebox">
					<div>
					<h1>게시판</h1>
					</div>
				</div>
				<hr>

				<!--form select를 가져온다 -->
				<%-- <form action="noticeList">
					<div class="search-wrap">
						<button type="submit" class="btn btn-info search-btn" >검색</button>
						<input type="text" class="form-control search-input" name="searchName" value="${pageVO.cri.searchName }"><!-- value: 검색한 내용을 유지시키기 --> 
						<!-- 검색 결과 유지시키기(3항 연산식) -->
						<select	class="form-control search-select" name="searchType">
							<option value="title" ${pageVO.cri.searchType eq 'title' ? 'selected' : '' }>제목</option>
							<option value="content" ${pageVO.cri.searchType eq 'content' ? 'selected' : '' }>내용</option>
							<option value="writer" ${pageVO.cri.searchType eq 'writer' ? 'selected' : '' }>작성자</option>
							<option value="titcont" ${pageVO.cri.searchType eq 'titcont' ? 'selected' : '' }>제목+내용</option>
						</select>
					</div>
					
					<input type="hidden" name="pageNum" value="1"><!-- 검색 후 1번페이지 -->
					<input type="hidden" name="pageNum" value="${pageVO.cri.amount }"><!-- amount는 같다 -->
				</form> --%>

				<table class="table table-bordered tablestyle">
					<thead>
						<tr>
							<th>번호</th>
							<th class="board-title">제목</th>
							<th>작성자</th>
							<th>등록일</th>
							<th>수정일</th>
						</tr>
					</thead>
					<tbody>
						<!-- vo란 이름으로 꺼내주기 -->
						<c:forEach var="vo" items="${list }">
							<tr>
								<td>${vo.bno }</td>
								<td><a href="noticeDetail?bno=${vo.bno }">${vo.title }</a></td>
								<td>${vo.writer }</td>
								<td><fmt:formatDate value="${vo.regdate }"
										pattern="yyyy년MM월dd일 " /></td>
								<td><fmt:formatDate value="${vo.updatedate }"
										pattern="yyyy년MM월dd일" /></td>
							</tr>
						</c:forEach>
					</tbody>

				</table>

				<!-- 검색게시글 페이지 처리 -->
				<form action="noticeList" name="pageForm">
					<div class="text-center">
						<hr>
						<ul class="pagination pagination-sm">
							<!--3.이전버튼 활성화여부 -->
							<c:if test="${pageVO.prev }">
								<li><a href="#" data-page="${pageVO.startPage-1 }">이전</a></li>
								<!-- href=#: a의 클릭용 -->
							</c:if>

							<!-- 1. 페이지네이션 번호 처리 -->
							<c:forEach var="num" begin="${pageVO.startPage }" end="${pageVO.endPage }">
								<li class="${num == pageVO.pageNum ? 'active' : '' }">
									<!-- https://developer.mozilla.org/ko/docs/Web/API/HTMLElement/dataset -->
									<!-- 자바스크립트 형태의 객체로도 저장할 수 있다 --> <!-- JSON형태로 저장 무조껀 ""로 작성 할 것! -->
									<a href="#"	data-page="${num }">${num }</a>
								</li>
							</c:forEach>

							<!-- 2. 다음버튼 활성화여부 -->
							<c:if test="${pageVO.next}">
								<li><a href="#" data-page="${pageVO.endPage + 1 }">다음</a></li>
							</c:if>
						</ul>

							<button type="button" class="btn btn-info" onclick="location.href='item'">글쓰기</button>		

					</div>

					<!-- form형식으로 보낼 때 hidden으로 값을 숨겨서 보낼 수 있다 -->
					<input type="hidden" name="pageNum" value="${pageVO.cri.pageNum }">
					<input type="hidden" name="amount" value="${pageVO.cri.amount }">
					<input type="hidden" name="searchType"
						value="${pageVO.cri.searchType }"> <input type="hidden"
						name="searchName" value="${pageVO.cri.searchName }">

				</form>

				<!--페이지 네이션을 가져옴-->
				<%-- <form>
                    <div class="text-center">
                    <hr>
                    <ul class="pagination pagination-sm">
                    	<!--3.이전버튼 활성화여부 -->
                    	<c:if test="${pageVO.prev }">
                        <li><a href="freeList?pageNum=${pageVO.startPage - 1 }&amount=${pageVO.amount }">이전</a></li>
                        </c:if>
                        
                        <!-- 1. 페이지네이션 번호 처리 -->
                        <c:forEach var="num" begin="${pageVO.startPage }" end="${pageVO.endPage }">
                        <li  class="${num == pageVO.pageNum ? 'active' : '' }">
                        	<a href="freeList?pageNum=${num }&amount=${pageVO.amount}">${num }</a>
                        </li>
                        </c:forEach>
                        <!-- 2. 다음버튼 활성화여부 -->
                        <c:if test="${pageVO.next}">
                        <li><a href="freeList?pageNum=${pageVO.endPage + 1 }&amount=${pageVO.amount}">다음</a></li>
                        
                    </ul>
                    <button type="button" class="btn btn-info" onclick="location.href='freeRegist'">글쓰기</button>
                    </div>
		    	</form>
 --%>
			</div>
		</div>
	</div>
</section>

<script>
	//페이지
	/*
	1. 페이지네이션을 a -> form태그로 변경
	2. Criteria클래스에 검색에 대한 키워드를 추가
	3. 검색폼과 페이지폼이 동일한 값을 가지고 hidden으로 넘어가도록 처리
	4. sql문을 동적쿼리로 변경
	*/
	//이벤트 위임방식으로 페이지네이션에 a태그에 이벤트를 전파
	var pagination = document.querySelector(".pagination");
	pagination.onclick = function() {
		event.preventDefault();//페이지의 고유 이벤트 중단
		if (event.target.tagName !== "A") return;//a태그가 아니라면 실행 못하게 막음			

		var pageNum = event.target.dataset.page; //data-set가져오기
		document.pageForm.pageNum.value = pageNum;//히든폼에 pageNum타겟값을 저장(중요)

		document.pageForm.submit(); //폼값 서브밋

		/* console.log(event.target.tagName); */
		/* console.log(pagination); */
	}

	window.onload = function() {
		//history.state객체를 통해서 기록정보 확인 가능
		if (history.state === '') return;

		var msg = "${msg}"; //컨트롤러에서 넘어온 메세지
		if (msg !== '') {
			alert(msg);
		}
		//history.push = 새로운 값 넣기

		//https://developer.mozilla.org/ko/docs/Web/API/History/replaceState
		//현재 history를 수정해 메서드의 매개변수로 전달된(오브젝트, title, URL)로 대체한다
		//브라우저의 기록을 새롭게 변경(데이터, 페이지제목, 변경할 주소(url)                                                                                                                                                )
		history.replaceState('', null, null);
	}
</script>














    
    
    
    
    
    
    
                        
