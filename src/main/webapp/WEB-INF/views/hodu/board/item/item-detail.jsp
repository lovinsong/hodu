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
				<!-- 대기 -->
				<div class="titlebox">
					<h1>공지사항</h1>
				</div>


				<form>
					<div>
						<label>DATE</label>
						<p>
							<fmt:formatDate value="${vo.regdate }" pattern="yyyy년MM월dd일" />
						</p>
					</div>
					<div class="form-group">
						<label>번호</label> <input class="form-control" name='bno' readonly
							value="${vo.bno }">
					</div>
					<div class="form-group">
						<label>작성자</label> <input class="form-control" name='writer'
							readonly value="${vo.writer }">
					</div>
					<div class="form-group">
						<label>제목</label> <input class="form-control" name='title'
							readonly value="${vo.title }">
					</div>

					<div class="form-group">
						<label>내용</label>
						<textarea class="form-control" rows="10" name='content' readonly>${vo.content }</textarea>
					</div>

					<button type="button" class="btn btn-dark"
						onclick="location.href='noticeList'">목록</button>
				</form>
			</div>
		</div>
	</div>

</section>

<!--  <section style="margin-top: 80px;">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-md-9 write-wrap">
                        <form class="reply-wrap">
                            <div class="reply-image">
                                <img src="../resources/img/profile.png">
                            </div>
                            form-control은 부트스트랩의 클래스입니다
	                    <div class="reply-content">
	                        <textarea class="form-control" rows="3" id="reply"></textarea>
	                        <div class="reply-group">
								<div class="reply-input">
	                            	<input type="text" class="form-control" id="replyId" placeholder="이름">
	                              	<input type="password" class="form-control" id="replyPw" placeholder="비밀번호">
	                            </div>
	                              
								<button type="button" class="right btn btn-info" id="replyRegist">등록하기</button>id추가
	                    	</div>
	
	                    </div>
                        </form> -->

<!--여기에접근 반복-->
<!-- <div id="replyList"> -->
<!-- 
                        <div class='reply-wrap'>
                            <div class='reply-image'>
                                <img src='../resources/img/profile.png'>
                            </div>
                            <div class='reply-content'>
                                <div class='reply-group'>
                                    <strong class='left'>honggildong</strong> 
                                    <small class='left'>2019/12/10</small>
                                    <a href='#' class='right'><span class='glyphicon glyphicon-pencil'></span>수정</a>
                                    <a href='#' class='right'><span class='glyphicon glyphicon-remove'></span>삭제</a>
                                </div>
                                <p class='clearfix'>여기는 댓글영역</p>
                            </div>
                        </div> 
                        -->
<!-- </div> -->
<!-- 게시글 더보기 -->
<!-- <button type="button" class="form-control" id="moreList">게시글(더보기)</button> -->

<!--             </div>
                </div>
            </div>
        </section> -->
<!-- https://www.w3schools.com/bootstrap/bootstrap_ref_js_modal.asp -->
<!-- 모달: 예쁘게 만든 경고창(화면에 숨겨놓고 클릭 시 숨긴부분이 나타남), 부트스트랩에서 가져옴 -->
<!-- <div class="modal fade" id="replyModal" role="dialog">
		<div class="modal-dialog modal-md">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="btn btn-default pull-right" data-dismiss="modal">닫기</button>
					<h4 class="modal-title">댓글수정</h4>
				</div>
				<div class="modal-body">
					수정폼 id값을 확인하세요
					<div class="reply-content">
					<textarea class="form-control" rows="4" id="modalReply" placeholder="내용입력"></textarea>
					<div class="reply-group">
						<div class="reply-input">
						    <input type="hidden" id="modalRno">
							<input type="password" class="form-control" placeholder="비밀번호" id="modalPw">
						</div>
						<button class="right btn btn-info" id="modalModBtn">수정하기</button>
						<button class="right btn btn-info" id="modalDelBtn">삭제하기</button>
					</div>
					</div>
					수정폼끝
				</div>
			</div>
		</div>
	</div> -->

<!-- 
	<script type="text/javascript">
		//모달: 부트스트랩지원창
		//선택자.modal("show"); //open
		//선택자.modal("hide");//hide
		/* $("#replyModal").modal("show");//모달창 보이게
		$("#modalDelBtn").click(function(){
			$("#replyModal").modal("hide");
		}) */
	
	
		//1. 제이쿼리 라이브러리 확인
		//2. 로딩이 끝난 직후 ready함수 안에 작성
		$(document).ready(function(){
		
			$("#replyRegist").click(add);//댓글 등록 버튼 이벤트
				
			//등록 함수
			function add() {
				var bno = "${vo.bno}";//문자열의 형태로 화면에서 넘어온 bno번호(넘어온 값을 여기서 또 활용)
				var reply = $("#reply").val();//내용
				var replyId = $("#replyId").val();//아이디
				var replyPw = $("#replyPw").val();//비밀번호
				
				console.log(bno, reply, replyId,  replyPw);
				if(reply === '' || replyId === '' || replyPw === ''){
					alert("이름, 비밀번호, 내용을 입력하세요");//공백처리
					return;
				}
				
				//비동기 통신(같은 서버라 OK)
				$.ajax({
					type: "POST", //요청방식
					url: "../reply/replyRegist", //요청주소
					data: JSON.stringify({"bno": bno, "reply": reply, "replyId":replyId, "replyPw":replyPw}),//제이슨 문자열
					contentType: "application/json; charset=utf-8",//보낼 타입(중요)
					success: function(data){
						console.log("성공여부: " + data);
						
						if(data == 1){ //등록 성공
							$("#reply").val("");//입력칸을 다시 공백처리
							$("#replyId").val("");
							$("#replyPw").val("");
							alert("댓글 등록에 성공했습니다");
							
							getList(1, true);//목록호출(페이지번호, 초기화 여부)
						} else {//등록 실패
							alert("등록에 실패했습니다. 잠시후에 다시 시도하세요");
						}
					},
					error:function(error){
						//에러발생시 실행시킬 콜백함수
						alert(error, "등록실패입니다. 관리자에게 문의하세요");
					}
				});
			}//end regist
			
			//========================================
			//더보기버튼 핸들러
			$("#moreList").click(function(){
				getList(++pageNum);
			});
			
		
			//페이지넘버선언
			var pageNum = 1;
			var strAdd = "";//화면에 그려넣을 태그를 문자열 형태로 추가(누적이 되게 밖에 선언)
			
			
			//목록 요청
			getList(1);//상세화면 진입시에 리스트 목록을 가져온다, 1번페이지
			function getList(page, reset){//(페이지번호, strAdd초기화 여부)
				var bno = "${vo.bno}";
					
				//$.ajax() vs $.getJSON
				//$.ajax(): get, post, put, delete공용적으로 처리하는 제이쿼리기능.
				//$.getJSON(): 단순히 get방식의 데이터만 얻어올 때 사용하는 기능.
				$.getJSON(
					"../reply/getList/" + bno + "/" + page ,
					function(dataList){
						console.log(dataList);
						//HashMap으로 보내진값 분리
						var total = dataList.total;//댓글 총 갯수
						var data = dataList.list;//
						
						if(reset == true){//멤버변수를 초기화, 새롭게 데이터를 호출
							pageNum = 1;
							strAdd = "";
						}
						
						if(pageNum * 20 >= total){//꺼낸 댓글이 총 댓글 수 보다 크거나 같으면 '더보기'를 숨김
							$("#moreList").css("display", "none");
						}
						
						if(data.length <= 0){//댓글데이터가 없는경우 함수 종류
							return;
						}
							
						
						for(var i = 0; i < data.length; i++){
							strAdd += "<div class='reply-wrap'>";
							strAdd += "<div class='reply-image'>";
							strAdd += "<img src='../resources/img/profile.png'>";
							strAdd += "</div>";
							strAdd += "<div class='reply-content'>";
							strAdd += "<div class='reply-group'>";
							strAdd += "<strong class='left'>"+ data[i].replyId +"</strong>";
							//strAdd += "<small class='left'>" + data[i].replydate +"</small>";
							strAdd += "<small class='left'>" + timeStamp(data[i].replydate) +"</small>";
							strAdd += "<a href='" + data[i].rno +"' class='right replyModify'><span class='glyphicon glyphicon-pencil'></span>수정</a>";
							strAdd += "<a href='" + data[i].rno +"' class='right replyDelete'><span class='glyphicon glyphicon-remove'></span>삭제</a>";
							strAdd += "</div>";
							strAdd += "<p class='clearfix'>" + data[i].reply +"</p>";
							strAdd += "</div>";
							strAdd += "</div>";
						}
						$("#replyList").html(strAdd);//replyList자식으로 추가	
					}
						
						
				);
			} //end getList
			
			//수정삭제 모달창
			/*
			'에이젝스가 순서를 보장하지 않기 때문에', 실제 이벤트 선언이 먼저 실행이 된다.
			그렇다면 화면에 댓글관련 창은 아무것도 없는 형태이므로, 일반클릭이벤트는 동작하지 않는다
			이때, 이미 존재하는 태그 replyList(부모)에 이벤트를 등록하고 이벤트를 전파시켜서 사용하는 위임방식을 반드시 사용해야한다
			*/
			$("#replyList").on("click", "a", function(){
				event.preventDefault();//고유이벤트(a)를 중단 > 필수(중요)
				//1. 수정버튼 vs삭제버튼 인지 확인
				//현재 클릭한 a태그 href안에있는 rno번호를 ->모달창의 hidden태그로 옴겨보세요
				//제이쿼리 hasClass() 함수를 이용해서 처리...
				
				console.log($(this));//$(this)는 jquery기능을 바로 사용할 수 있도록 한다
				var rno = $(this).attr("href");
				//<input type="hidden" id="modalRno">  >>> 히든태그
				$("#modalRno").val(rno);
				
				if($(this).hasClass("replyModify")){//event.target.classList.contains("replyModify")
					//수정을 눌렀을 때, 수정창 형식으로 변경
					$(".modal-title").html("댓글수정");//삭제와 반대로 숨김/보임 처리 진행
					$("#modalReply").css("display", "inline");
					$("#modalModBtn").css("display", "inline");
					$("#modalDelBtn").css("display", "none");
					
					$("#replyModal").modal("show");
				
				} else { 
					//삭제를 클릭시 삭제창 형식으로 변경
					$(".modal-title").html("댓글삭제");
					$("#modalReply").css("display", "none");//textarea숨김처리
					$("#modalModBtn").css("display", "none");//수정버튼 숨김
					$("#modalDelBtn").css("display", "inline");//삭제버튼 보임
					
					$("#replyModal").modal("show");
				}
			});//모달 end
			
			//수정 이벤트
			//$("#modalModBtn").click(function(){//수정하기 버튼 클릭 이벤트
				/*
				1. 모달창에 rno, reply, replyPw값을 얻습니다.
				2. ajax함수를 이용해서 POST방식으로 reply/update 요청, 필요한값은 JSON형식으로 처리
				3. 서버에서는 요청을 받아서 비밀번호를 확인하고, 비밀번호가 맞다면 업데이트를 진행하면 됩니다.
				4. 만약 비밀번호가 틀렸다면 0을 반환해서 `비밀번호가 틀렸습니다` 경고창을 띄울것
				5. 업데이트가 성공적으로 진행됬다면 modal창의 값을 공백으로 초기화시키세요
				*/

				/* var rno = $("#modalRno").val();//댓글 번호
				var reply = $("#modalReply").val();//댓글 내용
				var replyPw = $("#modalPw").val();//댓글 비밀번호
				console.log(rno, reply, replyPw);
				
				//값들이 공백인지 확인
				if(rno === "" || reply === "" || replyPw === ""){
					alert("내용, 비밀번호를 작성하세요");
					return;//종료
				}
				
				//비동기 통신
				$.ajax({
					type: "POST", //요청방식(중요한 파라미터)
					url: "../reply/update", //요청주소
					data: JSON.stringify({"rno": rno, "reply": reply, "replyPw":replyPw}),
					contentType: "application/json; charset=utf-8", //보낼 타입(중요중요중요)
					success: function(data){//성공시(받는값)
						if(data === 1){//성공
							alert("업데이트 처리 되었습니다");
							//공백처리
							$("#modalReply").val("");
							$("#modalPw").val("");
							$("#replyModal").modal("hide");//모달창 내리기(숨기기, 중요!)
							getList();//목록 재호출
						}else {
							alert("비밀번호를 확인하세요");
							$("#modalPw").val("");//비밀번호 창 비우기
						}

					},
					error: function(error){}
					
				})//ajax end
			})//modalModBtn end */
			
			//삭제이벤트
			//$("#modalDelBtn").click(function(){
				/*
				1. 모달창에 rno, replyPw값을 얻습니다.
				2. ajax함수를 이용해서 POST방식으로 reply/delete 요청, 필요한 값은 JSOn형식으로 처리
				3. 서버에서는 요청을 받아서 비밀번호를 확인하고, 비밀번호가 일치한다면 삭제를 진행
				4. 비밀번호가 틀렸다면, 0을 반환해서 경고창을 띄워준다
				*/
				/* var rno = $("#modalRno").val();
				var replyPw = $("#modalPw").val();
				console.log(rno, replyPw);
				
				if(replyPw === ""){//비밀번호가 공백인지 확인
					alert("비밀번호를 입력해 주세요");
					return;
				}
				
				
				$.ajax({//비동기통신 실행($.ajax)
					type: "POST",//1. 요청타입
					url: "../reply/delete", //2.요청주소
					data: JSON.stringify({"rno":rno, "replyPw":replyPw}),//보낼 파라미터
					contentType: "application/json; charset=utf-8", //보낼 타입
					success: function(data){
						
						if(data === 1){//삭제 성공
							alert("댓글이 삭제되었습니다");
							$("#modalPw").val("");//빈칸만들기
							$("#replyModal").modal("hide");//숨기고
							getList();//리스트 다시 불러옴
						} else if(data === 0){ //실패
							alert("삭제시 에러가 발생했습니다. 관리자에게 문의하세요");
						} else {//pw에러
							alert("비밀번호를 확인하세요");
						}
					},
					error: function(status, error){}
					
				})
			}) */
			
			
			
				
			//javaScript에서 날짜 포맷팅
			/* function timeStamp(millis){
				//https://nowonbun.tistory.com/566
				//1시간 기준으로 방금전 or xx시간 or 1일 기준으로 날짜 출력
				var now = new Date().getTime();
				console.log(now);
				console.log((now - millis) / (60 * 60 * 1000));
				var gap = (now - millis) / (60 * 60 * 1000);
				if(gap < 1) { //1시간 미만
					return "방금전";
				} else if(gap > 24) { //1일 이상
					return parseInt(gap/24) + "일";
				} else {
					return parseInt(gap) + "시간 전"; //1시간 이상 1일 미만
				}
				
				//parseInt로 실수를 잘라내자
			} */
			
			//강사님
			function timeStamp(millis){
				//https://nowonbun.tistory.com/566
				//1시간 기준으로 방금전 or xx시간 or 1일 기준으로 날짜 출력
				var now = new Date(); //현재시간
				var gap = now.getTime() - millis; //현재시간밀리초 - 작성일 밀리초
				
				var tume;//리턴할 문자열
				if(gap < 1000 * 60 * 60 * 24) { //1일 미만인 경우
					
					if(gap < 1000 * 60 * 60){ //1시간 미만인 경우
						time = "방금전";
					} else {//1시간 ~ 1일미만
						time = parseInt(gap / (1000 * 60 * 60)) + "시간전";
					}
					
				} else {//1시간 미만인 경우
					var date = new Date(millis);//밀리초기준의 날짜
					var year = date.getFullYear();//년
					var month = date.getMonth() + 1; //월
					var day = date.getDate(); //일
					var hour = date.getHours();//시
					var minute = date.getMinutes();//분
					var second = date.getSeconds();//초
					
					time = year + "년" + month + "월" + day + "일" + 
								(day < 10 ? "0" + hour : hour) + "시" + 
								(minute < 10 ? "0" + minute : minute) + "분" + 
								(second < 10 ? "0" + second : second) + "초";
					console.log(time);
				}
				return time;
				
				
			}

		})
		//이렇게 생성한 JS는 JS파일로 따로 생성해서 불러서 사용하는 형태로 사용한다
		
		
	</script>
	 -->







