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
							<fmt:formatDate value="${dto.notice_date }" pattern="yyyy년MM월dd일" />
						</p>
					</div>
					<div class="form-group">
						<label>번호</label> <input class="form-control" name='bno' readonly
							value="${dto.notice_postnum }">
					</div>
					<div class="form-group">
						<label>작성자</label> <input class="form-control" name='writer'
							readonly value="${dto.member_id }">
					</div>
					<div class="form-group">
						<label>제목</label> <input class="form-control" name='title'
							readonly value="${dto.notice_title }">
					</div>

					<div class="form-group">
						<label>내용</label>
						<textarea class="form-control" rows="10" name='content' readonly>${dto.notice_content }</textarea>
					</div>

					<button type="button" class="btn btn-dark"
						onclick="location.href='notice-category'">목록</button>
					<button type="button" class="btn btn-dark"
						onclick="location.href='notice-modify?notice_postnum=${dto.notice_postnum }'">수정</button>
						
				</form>
			</div>
		</div>
	</div>

</section>

 
<section style="margin-top: 80px;">
	<div class="container">
		<div class="row">
			<div class="col-xs-12 col-md-9 write-wrap">
				<form class="reply-wrap">
					<div class="reply-content">
						<textarea class="form-control" rows="3" id="reply"></textarea>
						<div class="reply-group">
							<div class="reply-input">
								<input type="text" class="form-control" placeholder="이름" id="rid" value="master" readonly> 
							</div>
							<button type="button" class="right btn btn-info" id="replyRegist">등록하기</button>
						</div>
					</div>
				</form>

				<!--여기에접근 반복-->
				<div id="replyList">
					 <div class='reply-wrap'>
                            <div class='reply-content'>
                                <div class='reply-group'>
                                    <strong class='left'>honggildong</strong> 
                                    <small class='left'>2019/12/10</small>
                                    <a href='#' class='right replyModify'><span class='glyphicon glyphicon-pencil'></span>수정</a>
                                    <a href='#' class='right replyDelete'><span class='glyphicon glyphicon-remove'></span>삭제</a>
                                </div>
                            </div>
                      </div> 
				</div>
				<button type="button" class="form-control" id="morelist">게시글(더보기)</button>
			</div>
		</div>
	</div>
</section>


<div class="modal fade" id="replyModal" role="dialog">
	<div class="modal-dialog modal-md">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="btn btn-default pull-right"
					data-dismiss="modal">닫기</button>
				<h4 class="modal-title">댓글수정</h4>
			</div>
			<div class="modal-body">
				<!-- 수정폼 id값을 확인하세요-->
				<div class="reply-content">
					<textarea class="form-control" rows="4" id="modalReply" placeholder="내용입력"></textarea>
					<div class="reply-group">
						<div class="reply-input">
							<input type="hidden" id="modalRno">
						</div>	
						<button class="right btn btn-info" id="modalModBtn">수정하기</button>
						<button class="right btn btn-info" id="modalDelBtn">삭제하기</button>
					</div>
				</div>
				<!-- 수정폼끝 -->
			</div>
		</div>
	</div>
</div>

<script>

	/* $("#replyModal").modal("show");
	$("#modalDelBtn").click(function() {
		$("#replyModal").modal("hide");		
	}) */
	//1.제이쿼리 라이브러리 확인
	//2.로딩이 끝난 직후 ready함수안에 작성
	
	$(document).ready(function() {
		$("#replyRegist").click(add);
		
		function add() { 
			
			var qno = "${dto.notice_postnum}"; //문자열의 형태로 화면에서 넘어온 notice_postnum 번호 
			var rcontent=$("#reply").val();
			var rid=$("#rid").val();
			
			console.log(qno, rcontent, rid);
			
			if(rid===''||rcontent===''){
				alert('이름,내용을 입력하세요');
				return;
			}
			
			
			$.ajax({
				type:"post",
				url:"replyRegist", //요청주소
				data:JSON.stringify({"notice_postnum":qno,"notice_reply_content":rcontent,"member_id":rid}),
				contentType:"application/json; charset=utf-8",
				success:function(data){
					if(data = 1){ 
						$("#reply").val("");
						alert("댓글 등록에 성공하셨습니다");
						getlist(1,true); //목록요청 호출
					}else{
						alert("댓글 등록에 실패했습니다. 잠시 후에 다시 시도하세요")
					}
				},
				error:function(error){
					alert(error,"댓글 등록 실패입니다. 관리자에게 문의하세요");
				}
			})
		}

		var pageNum =1;
        var stradd ="";
        
        //목록요청
        getlist(1,false); // 상세화면 진입시에 리스트 목록을 가져옵니다.
        
        function getlist(page,reset) { //(stradd 초기화여부)
            //select 구문에서 필요한 값은? notice_postnum
            var qno = "${dto.notice_postnum}";
            
            console.log(pageNum);
            //$.ajax() vs $.getJSON
            //$.ajax() - get,post,put,delete 공용적으로 처리하는 제이쿼리기능
            //$.getJSON(요청의 주소,콜백함수) - 단순히 get방식의 데이터만 얻어올때 사용하는 기능
            
            $.getJSON(
            		"replylist/"+qno+"/"+page,function(map){
                    
                    var total = map.total;
                    var data = map.list;
                    console.log(total);
                    console.log(data);
                    
                    if(reset ==true){ //맴버변수를 초기화해서 새롭게 데이터를 가져옴
                        stradd ="";
                        pageNum =1;
                    }
                    
                    
                    if(pageNum*20>= total){
                        $("#morelist").css("display","none");
                    }
                    
                    
                    if(data.length <= 0){ //댓글이 없는경우 함수종료
                        return;
                    }
                    for(var i=0; i<data.length; i++){
                        stradd+="<div class='reply-wrap'>";
                        stradd+="<div class='reply-image'>";
                        stradd+="</div>";
                        stradd+="<div class='notice_reply_content'>";
                        stradd+="<div class='reply-group'>";
                        stradd+="<strong class='left'>"+data[i].member_id+"</strong>"; 
                        stradd+="<small class='left'>"+timeStamp(data[i].notice_reply_date)+"</small>";
                        stradd+="<a href='"+data[i].notice_reply_postnum+" "+data[i].member_id+" " + data[i].notice_reply_content+"' class='right replyModify'><span class='glyphicon glyphicon-pencil'></span>수정</a>"
                        stradd+="<a href='"+data[i].notice_reply_postnum+" "+data[i].member_id+"' class='right replyDelete'><span class='glyphicon glyphicon-remove'></span>삭제</a>"
                        stradd+="</div>";
                        stradd+="<p class='clearfix'>"+data[i].notice_reply_content+"</p>";
                        stradd+="</div>";
                        stradd+="</div>";
                    }
                    $("#replyList").html(stradd);
                    
                }        
            );
        }

		
		//수정삭제 모달창
		/*
		에이젝스가 순서를 보장하기 않기 떄문에. 실제 이벤트 선언이 먼저 실행이 됩니다.
		그렇다면 화면에 댓글관련 창은 아무것도 없는 형태이므로 일반클리 이벤트는 동작하지 않습니다.
		이때, 이미존재하는 태그 replyList(부모에 이벤트를 등록하고 이벤트를 전파시켜서 사용하는 위임방식을 반드시 써야됩니다)
		*/
		
		$("#replyList").on("click","a",function(){
			
			event.preventDefault(); //event객체 vs 제이쿼리 this 이용해서 현재 클릭한 href 안에 rno 를 modal 창의 hidden 태그로 옮겨보세요
			
			var array=$(this).attr("href").split(" ")
			console.log(array);
			
			var rno=array.shift();
			var rid=array.shift();
			var rc=array.join(" ");
			console.log(rno);
			console.log(rid);
			console.log(rc);
			
			//var userId = "${userVO.userId}"; //${MemberDTO.member_ID}
			
			if(rid != "master"){
				alert("권한이 없습니다");
				return;
			}
			
			$("#modalRno").val(rno);
			$("#modalReply").val(rc);
			
			
			//수정버튼 or 삭제버튼인지 확인 후 제이쿼리 hasClass() 함수를 이용해서 처리
			
			if($(this).hasClass("replyModify")){ //수정
				
				$(".modal-title").html("댓글수정");
				$("#replyModal").modal("show");	
				
				$("#modalReply").css("display","inline");
				$("#modalModBtn").css("display","inline");
				$("#modalDelBtn").css("display","none");
				
			}else if($(this).hasClass("replyDelete")){ //삭제
				
				$(".modal-title").html("댓글삭제");
				$("#replyModal").modal("show");
				
				$("#modalReply").css("display","none");
				$("#modalModBtn").css("display","none");
				$("#modalDelBtn").css("display","inline");
			}
		})
		
		//수정 이벤트
		$("#modalModBtn").click(function () {
			//모달창에 rno,reply,replyPw 값을 얻습니다
			//ajax함수를 이용해서 post방식을 이용해서 reply/update요청, 필요한값은 json형식
			//서버에서는 요청을 받아서 비밀번호를 확인하고, 비밀번호가 맞다면 업데이트를 진행합니다.
			//만약 비밀번호가 틀렸다면 0을 반환해서 비밀번호가 틀렸습니다, 경고창을 띄우셍
			//업데이트가 성공적으로 진행되었다면 모달창의 값을 공백으로 초기화
			var rno =$("#modalRno").val();
			var rcontent=$("#modalReply").val();			
			
			if(rno===""||rcontent ===""){
				alert("내용을 작성하세요");
				return;
			}
			
			$.ajax({
				type:"post",
				url:"replyupdate",
				data:JSON.stringify({"notice_reply_postnum":rno,"notice_reply_content":rcontent}),
				contentType:"application/json; charset=utf-8",
				success:function(data){
					if(data=1){
						alert('업데이트완료')
						$("#modalReply").val("");
						$("#replyModal").modal("hide");
						getlist(1,true);
					}else{
						alert("업데이트 실패, 관리자에게 문의하세요");
					}
					
				},
				error:function(status,error){}
			}) 		
		})
		
		
		//삭제 이벤트		
		$("#modalDelBtn").click(function () {
			/*
			1.모달창에 rno,replyPw값을 얻습니다.
			2.ajax함수를 이용해서 post방식으로 reply/delete요청, 필요한값은 json형식으로 처리
			3.서버에서는 요청을 받아서 비밀번호를 확인하고,비밀번호가 일치한다면 삭제 진행
			4.비밀번호가 틀렸다면 0을 반환해서 경고창을 띄우기
			*/
			
			var rno =$("#modalRno").val();
			
			if(rno === ""){
				return;
			}
			$.getJSON(
					"replydelete?rno="+rno,function(data){
						
				if(data=1){
					alert('삭제가 완료되었습니다');
					$("#replyModal").modal("hide");
					//location.reload(); //새로고침
					getlist(1,true);
				}else{
					alert("삭제시 에러가 발생했습니다");
				}
			})
		})
		
		
		//javascript에서 
		function timeStamp(millis) {
			//1시간 기준으로 방금전 or xx시간
			//1일 기준으로 날짜 출력
			var date = new Date(); //현재시간
			
			var gap = date- millis; //밀리초
			console.log(gap);
			
			//1000*60*60 //1시간
			//1000*60*60*24 //1일
			var result ="";
			if(gap <1000*60*60){
				result="방금전";
			}else if(gap <1000*60*60*24){
				var time=parseInt(gap/(1000*60*60));
				result=time+"시간전";
			}else{	
				var date = new Date(millis);
				var year=date.getFullYear();
				var month=date.getMonth()+1;
				var day=date.getDate();
				var hour=date.getHours();
				var minute=date.getMinutes();
				var second=date.getSeconds();
				result = year+"년"+month+"월"+day+"일"+(hour <10?"0"+hour:hour)+":"+(minute <10?"0"+minute:minute)+":"+(second <10?"0"+second:second)
			}
			return result;
			
		}
		
	})
</script>