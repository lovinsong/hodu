<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl"
	crossorigin="anonymous">
</head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<style>
#leftcart {
	background-color: gray;
}

#rightcart {
	background-color: white;
}

#total {
	color: black;
}

.apply_people .count {
	color: #000;
	display: inline-block;
	vertical-align: top;
	font-size: 25px;
	font-weight: 700;
	line-height: 30px;
	padding: 0 2px;
	min-width: 35px;
	text-align: center;
}

.apply_people .plus {
	cursor: pointer;
	display: inline-block;
	vertical-align: top;
	color: white;
	width: 30px;
	height: 30px;
	font: 30px/1 Arial, sans-serif;
	text-align: center;
	border-radius: 50%;
}

.apply_people .minus {
	cursor: pointer;
	display: inline-block;
	vertical-align: top;
	color: white;
	width: 30px;
	height: 30px;
	font: 30px/1 Arial, sans-serif;
	text-align: center;
	border-radius: 50%;
	background-clip: padding-box;
}

div {
	text-align: center;
}

.minus:hover {
	background-color: #717fe0 !important;
}

.plus:hover {
	background-color: #717fe0 !important;
}
/*Prevent text selection*/
span {
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
}

input {
	border: 0;
	width: 2%;
}

nput::-webkit-outer-spin-button, input::-webkit-inner-spin-button {
	-webkit-appearance: none;
	margin: 0;
}

input:disabled {
	background-color: white;
}
</style>
<body>
	<!-- footer 파일 포함 코드 -->
	<%@ include file="../headerfooter/hoduheader.jsp"%>

	<br>
	<form action="./payment" method="POST">
		<div class="container" id="total">
			<div class="row">
				<div class="col-6" id="leftcart">
					게시판 만들어야 하고 조건문 사용해서 글을 받아와서(반복문)
					라디오 형식으로 보여줘야함

					<div>
						<input type="radio" id="huey" name="oneclass" value="huey">
						<label for="huey">수업 받아오기</label>
					</div>

					<div>
						<input type="radio" id="dewey" name="oneclass" value="dewey">
						<label for="dewey">Dewey</label>
					</div>

					<div>
						<input type="radio" id="louie" name="oneclass" value="louie">
						<label for="louie">Louie</label>
					</div>
					<div class="p-5"></div>
					<div class="p-5"></div>
					<div class="p-5"></div>
					<div class="p-5"></div>
					<div class="p-5"></div>
					<div class="p-5"></div>
					<div class="p-5"></div>
				</div>

				<!-- 오른쪽 부분 -->

				<div class="col-6" id="rightcart">
					<div class="p-3"></div>
					<hr>
					<div class="row">
						<div class="col-6">
							<h4>신청 인원 :</h4>
						</div>
						<div align="right" class="col-6">
							<span class="apply_people mt-5"> <span
								class="minus bg-dark">-</span> <input type="number"
								class="count" name="apply_people" id="apply_people" value="1">
								<span class="plus bg-dark">+</span>
							</span>
						</div>
					</div>
					<br>
					<hr>

					<div class="row">
						<div class="col-6">
							<h4>연락 받으실 전화번호 :</h4>
						</div>
						<div align="right" class="col-6">
							<h5>${member.member_phone }</h5>
						</div>
					</div>
					<br>
					<hr>
					<h2>튜터에게 전하는말!</h2>
					<h4>튜어에게 간단히 자신을 소개하고, 신청 목적에 대해 알려주세요.</h4>
					<div class="p-3"></div>
					<div class="container"
						style="display: inline-block; text-align: center;">
						<!--  가운데 정렬 -->
						&nbsp; &nbsp; &nbsp; <input type="radio"
							style="width: 23px; height: 23px;" name="chk_level">입문
						&nbsp; &nbsp; &nbsp; <input type="radio"
							style="width: 23px; height: 23px;" name="chk_level">초 /
						중급 &nbsp; &nbsp; &nbsp; <input type="radio"
							style="width: 23px; height: 23px;" name="chk_level">상급
						&nbsp; &nbsp; &nbsp; <br>

						<textarea style="resize: none" cols="80" rows="10"
							placeholder="예) 처음이라 서투르지만 열심히 따라갈께요!"></textarea>
						<div class="p-3"></div>
						<input type="submit"
							style="width: 500px; height: 50px; background-color: crimson;"
							value="다음">
					</div>
				</div>
			</div>

		</div>
	</form>
	<!-- footer 파일 포함 코드 -->

	<script>
		$(document).ready(function() {
			$('.count')
			$(document).on('click', '.plus', function() {
				if ($('.count').val() < 9) { //최대 조건 
					$('.count').val(parseInt($('.count').val()) + 1);
				}
			});
			$(document).on('click', '.minus', function() {
				$('.count').val(parseInt($('.count').val()) - 1);
				if ($('.count').val() == 0) {
					$('.count').val(1);
				}
			});
		});
	</script>
	<%@ include file="../headerfooter/hodufooter.jsp"%>
</body>
</html>