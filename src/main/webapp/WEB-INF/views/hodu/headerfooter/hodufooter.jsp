<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Footer</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css'> 
<script
	src='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js'></script>
<link rel="stylesheet" href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css'>
<script
	src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
</head>
<style>
@import url('https://fonts.googleapis.com/css2?family=Titillium+Web:wght@700&display=swap');

body {
    font-size: 13px;
    font-weight: bold;
    color: rgb(189, 196, 203);
}


ul {
    list-style-type: none;
    margin: 0;
    padding: 0
}

.foot>ul>li {
    padding: 4px;
    color: #ebdad3;
}

.foot>ul>li:hover {
    color: #692e1d;
    cursor: pointer
}

hr {
    border-width: 3px
}

.card {
    padding: 2% 7%
}

.social>i {
    padding: 1%;
    font-size: 15px
}

.social>i:hover {
    color: #692e1d;
    cursor: pointer
}

.policy>div {
    padding: 4px
}

.heading {
    font-family: 'Rammetto One', sans-serif;
    font-weight: bold;
    color: #692e1d;
}

.divider {
    border-top: 2px solid
}
</style>
<body>
	<hr>
	<br>
	<div class="container foot">
		<div class="bg-white mx-8">
			<div class="row mb-4">
				<div class="col-md-4 col-sm-4 col-xs-4">
					<div class="footer-text pull-left">
						<div class="d-flex">
							<h1 class="font-weight-bold mr-2 px-3"
								style="color: white; background-color: #692e1d">H</h1>
							<h1 style="color: #692e1d">ODU</h1>
						</div>
						<p class="card-text">Selling people's skills at HODU! </p>
						<div class="social mt-2 mb-3">
							<i class="fa fa-facebook-official fa-lg"></i> <i
								class="fa fa-instagram fa-lg"></i> <i
								class="fa fa-twitter fa-lg"></i> <i
								class="fa fa-linkedin-square fa-lg"></i> <i
								class="fa fa-facebook"></i>
						</div>
					</div>
				</div>
				<div class="col-md-2 col-sm-2 col-xs-2"></div>
				<div class="col-md-2 col-sm-2 col-xs-2">
					<h5 class="heading">호두 소개</h5>
					<ul>
						<li>회사 소개</li>
						<li>채용 안내</li>
						<!-- <li>Cloud</li>
						<li>Support</li> -->
					</ul>
				</div>
				<div class="col-md-2 col-sm-2 col-xs-2">
					<h5 class="heading">고객 센터</h5>
					<ul class="card-text">
						<li>공지 사항</li>
						<li>자주묻는 질문</li>
						<!-- <li>Smart Office</li>
						<li>Retail</li> -->
					</ul>
				</div>
				<div class="col-md-2 col-sm-2 col-xs-2">
					<h5 class="heading">정책 사항</h5>
					<ul class="card-text">
						<li>이용 약관</li>
						<li>개인정보 처리 방침</li>
						<!-- <li>Contact</li>
						<li>Join Us</li> -->
					</ul>
				</div>
			</div>
			<div class="divider mb-4"></div>
			<div class="row" style="font-size: 10px;">
				<div class="col-md-6 col-sm-6 col-xs-6">
					<div class="pull-left">
						<p>
							<i class="fa fa-copyright"></i> 2021 teamhodudesign
						</p>
					</div>
				</div>
				<div class="col-md-6 col-sm-6 col-xs-6">
					<div class="pull-right mr-4 d-flex policy">
						<div>Terms of Use</div>
						<div>Privacy Policy</div>
						<div>Cookie Policy</div>
					</div>
				</div>
			</div>
		</div>
		</div>
</body>
<script>
	jQuery(document).ready(function($) {
		$('.counter').counterUp({
			delay : 10,
			time : 1000
		});
	});
</script>
</html>