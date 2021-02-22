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
                    <div class="col-xs-12 col-md-9 write-wrap">
                        <div class="titlebox">
                            <p>수정하기</p>
                        </div>

                        <form action="freeUpdate" method="post" name="freeUpdate">
                            <div>
                                <label>DATE</label>
                                <p>
                                    <fmt:formatDate value="${dto.notice_date }" pattern="yyyy년MM월dd일" />
                                </p>
                            </div>
                            <div class="form-group">
                                <label>번호</label>
                                <input class="form-control" name='notice_postnum' readonly value="${dto.notice_postnum }">
                            </div>
                            <div class="form-group">
                                <label>작성자</label>
                                <input class="form-control" name='member_id' value="${dto.member_id }" readonly>
                            </div>
                            <div class="form-group">
                                <label>제목</label>
                                <input class="form-control" name='notice_title' value="${dto.notice_title }">
                            </div>

                            <div class="form-group">
                                <label>내용</label>
                                <textarea class="form-control" rows="10" name='notice_content'>${dto.notice_content }</textarea>
                            </div>

                            <button type="button" class="btn btn-dark" id="listBtn">목록</button>
                            <button type="button" class="btn btn-primary" id="updateBtn">변경</button><!-- 보내기 전 검사 -->
                            <button type="button" class="btn btn-info" id="deleteBtn">삭제</button>
                        </form>

                    </div>
                </div>
            </div>
        </section>

        <script>
            //버튼들을 가져와 검사 진행
            var listBtn = document.getElementById("listBtn");
            listBtn.onclick = function () {
                location.href = 'notice-category'; //목록 이동
            }

            var updateBtn = document.getElementById("updateBtn");
            updateBtn.onclick = function () {
                /*
                1. null을 허용하지 않는 태그의 공백값을 확인하고, 공백이 없으면 freeUpdate요청으로 데이터를 전송
                2. int update()메서드를 이용해서 글 정보를 수정해 주세요
                3. 컨트롤러에서는 업데이트 성공시 리스트 화면에 msg를 이용해서 "게시글이 수정되었습니다 or 실패했습니다"정보를 보내주세요
                */
                if (document.freeUpdate.member_id.value === '') {
                    alert('글쓴이를 작성해주세요');
                    document.freeUpdate.member_id.focus();//잘 주기
                    return;
                } else if (document.freeUpdate.notice_title.value === '') {
                    alert('제목을 작성해주세요');
                    document.freeUpdate.notice_title.focus();
                    return;
                }else{
                	document.freeUpdate.action = "freeUpdate";//폼값의 action을 지정
                	document.freeUpdate.submit();
                }
            }

            var deleteBtn = document.getElementById("deleteBtn");
            deleteBtn.onclick = function () {
            	document.freeUpdate.action = "freeDelete";//폼값의 action을 지정
            	document.freeUpdate.submit();

            }


        </script>
