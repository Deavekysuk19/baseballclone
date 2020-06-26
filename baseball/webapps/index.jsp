
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>야구야 놀자!</title>

<script src="/baseball/resources/js/jquery-2.2.4.js"></script>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
	integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
	crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link rel="icon" href="/baseball/resources/images/baseball.ico"
	type="image/x-icon" />

<style>
.images {
	animation: trans2;
	animation-duration: 3s;
	animation-iteration-count: 1;
	transition-duration: 0.2s;
	/* transition-timing-function : ease-in; */
	transition-timing-function: ease-out;
	border-radius: 7%;
}

.images:hover {
	border-radius: 7%;
	transform: scale(1.05);
}

.new {
	width: 300px;
	height: 200px;
}

a {
	text-decoration: none;
	color: black;
}

#arrows {
	top: 94%;
	left: 97%;
	width: 50px;
	height: 50px;
	position: fixed;
	z-index: 100;
}

.dion {
	background-color: #eee;
	color: #444;
	cursor: pointer;
	padding: 18px;
	width: 100%;
	border: none;
	outline: none;
	font-size: 15px;
	transition: 0.4s;
}

.activ, .dion:hover {
	background-color: #ccc;
	animation-duration: 3s;
	animation-iteration-count: 1;
	transition-duration: 0.2s;
}

.panel {
	padding: 0 18px;
	display: none;
	background-color: white;
	overflow: hidden;
	text-align: center;
}

#boom {
	background: gray;
}
</style>
</head>

<body>

	<!-- 시작 -->
	<%@ include file="views/common/header.jsp"%>

	<img class="container-fluid"
		src="/baseball/resources/images/baseball1.png"
		style="height: 100%; widht: 100%;" alt=" KBO와 신한은행 콜라보">
	<br />
	<br />

	<!-- 상단 부분 -->
	<div class="row">

		<aside class="col-1 "></aside>
		<section class="col-10 "></section>
		<aside class="col-1 "></aside>
	</div>

	<!-- 중간 부분1 -->


	<!-- 중간 부분2 -->
	<div class="row">
		<aside class="col-1 "></aside>
		<section class="col-10 " style="text-align: center;">
			<a href="https://www.koreabaseball.com/Event/Etc/SaveSacrifice.aspx">
				<img
				src="//lgcxydabfbch3774324.cdn.ntruss.com/KBO_IMAGE/KBOHome/resources/images/main/img_banner.png"
				alt="KBO-희망병원" />
			</a> <br /> <br />
		</section>
		<aside class="col-1 "></aside>
	</div>

	<!-- 중간 부분3 -->
	<div class="row">
		<aside class="col-1 "></aside>
		<section class="col-10 "
			style="vertical-align: middle; text-align: center;">
			<div class="row ">
				<div class="col">
					<a
						href="https://sports.news.naver.com/kbaseball/vod/index.nhn?id=669957&category=kbo&gameId=20200611WOSS02020&date=20200611&listType=game"
						target="_blank;"> <img class="new images"
						src="/baseball/resources/images/index/new3.jpeg" alt="이미지1">
						<br /> <br />
						<h5>1. 박승규, 모두를 놀라게한 말 그대로 미친수비</h5>
						</p> <br />
					</a>
				</div>

				<div class="col">
					<a
						href="https://sports.news.naver.com/kbaseball/vod/index.nhn?id=670145&category=kbo&gameId=20200611HHLT02020&date=20200611&listType=game"
						target="_blank;"> <img class="new images"
						src="/baseball/resources/images/index/new2.jpeg" alt="이미지2">
						<br /> <br />
						<h5>2. '충격의 17연패, 한화 또 졌다' 기회의 순간들</h5>
						</p> <br />
					</a>
				</div>

				<div class="col">
					<a
						href="https://sports.news.naver.com/kbaseball/vod/index.nhn?id=669898&category=kbo&gameId=20200611SKLG12020&date=20200611&listType=game"
						target="_blank;"> <img class="new images"
						src="/baseball/resources/images/index/new1.jpeg" alt="이미지3">
						<br /> <br />
						<h5>3. 정현의 머리를 맞혀 놀라는 이민호 7회초</h5> <br />
					</a>
				</div>

				<div class="col">
					<a
						href="https://sports.news.naver.com/kbaseball/vod/index.nhn?id=669974&category=kbo&gameId=20200611WOSS02020&date=20200611&listType=game"
						target="_blank;"> <img class="new images"
						src="/baseball/resources/images/index/new4.jpeg" alt="3"> <br />
						<br />
						<h5>4. 박승규의 슈퍼 캐치에 대한 비하인드 스토리</h5> <br />
					</a>
				</div>
			</div>
		</section>
		<aside class="col-1 "></aside>
	</div>
	<br />


	<!-- 중간 부분4 -->

	<div class="row">

		<aside class="col-1 "></aside>
		<section class="col-10 " style="text-align: center;">
			<h3>협회 & 구단 공식 사이트</h3>
			<hr />
		</section>
		<aside class="col-1 "></aside>
	</div>


	<!-- 하단 부분 -->
	<div class="row">
		<aside class="col-1 "></aside>
		<section class="col-10 ">
			<!-- 첫번째 줄 -->
			<div class="row" style="margin-left: 3%;">

				<div class="col">
					<a href="https://www.koreabaseball.com/" target="_blank;"> <img
						class="images"
						src="/baseball/resources/images/index/img_banner05.png" alt="KBO">
					</a>
				</div>

				<div class="col">
					<a href="https://www.skwyverns.com:8443/Wyverns/main"
						target="_blank;"> <img class="images"
						src="/baseball/resources/images/index/emblemL_SK.png" alt="SK">
					</a>
				</div>
				<div class="col">

					<a href="http://www.samsunglions.com/" target="_blank;"> <img
						class="images"
						src="/baseball/resources/images/index/emblemL_SS.png" alt="삼성">
					</a>
				</div>

				<div class="col">
					<a href="http://www.hanwhaeagles.co.kr/html/main/main.asp"
						target="_blank;"> <img class="images"
						src="/baseball/resources/images/index/emblemL_HH.png" alt="한화">
					</a>
				</div>

				<div class="col">
					<a href="https://tigers.co.kr/" target="_blank;"> <img
						class="images"
						src="/baseball/resources/images/index/emblemL_HT.png" alt="기아">
					</a>
				</div>

				<div class="col">
					<a href="https://www.ktwiz.co.kr/sports/site/baseball/main.do"
						target="_blank;"> <img class="images"
						src="/baseball/resources/images/index/emblemL_KT.png" alt="KT">
					</a>
				</div>

				<div class="col">
					<a
						href="https://www.lgtwins.com/service/html.ncd?view=/pc_twins/twins_main/twins_main"
						target="_blank;"> <img class="images"
						src="/baseball/resources/images/index/emblemL_LG.png" alt="LG">
					</a>
				</div>

				<div class="col">
					<a href="http://www.giantsclub.com/html/" target="_blank;"> <img
						class="images"
						src="/baseball/resources/images/index/emblemL_LT.png" alt="롯데">
					</a>
				</div>

				<div class="col">
					<a href="https://ncdinos.com/main/index" target="_blank;"> <img
						class="images"
						src="/baseball/resources/images/index/emblemL_NC.png" alt="NC">
					</a>
				</div>

				<div class="col">
					<a href="https://www.doosanbears.com/" target="_blank;"> <img
						class="images"
						src="/baseball/resources/images/index/emblemL_OB.png" alt="두산">
					</a>
				</div>

				<div class="col">
					<a href="https://www.ktwiz.co.kr/sports/site/baseball/main.do"
						target="_blank;"> <img class="images"
						src="/baseball/resources/images/index/emblemL_WO.png" alt="키움">
					</a>
				</div>

			</div>

		</section>
		<asdie class="col-1 "></asdie>
	</div>
	<br />
	<br />


	<!-- 소개 내용1 
	<h5 style="text-align: center;">프로젝트를 마치며</h5>
	-->

	<!-- 소개 내용2 -->
	<div class="row" id="boom">
		<section class="col-12">

			<div class="row">
			
					<div class="col">
					<button class="dion">
						<b>조장 윤태양</b>
					</button>
					<div class="panel">
						<img src="/baseball/resources/images/point/TY.jpeg" 
						style=" margin-top: 1%;  height:127px;"/>
						<div class="row" style="text-align: center;">
							<div class="col">
							<p style="font-size:smaller;">
								<br />다 하고나니 아쉬운부분이 많았지만 
										이번을 계기로 다들 더 발전해서
										 파이널프로젝트는 더 잘했으면 한다.
							</p>
						</div>
					</div>
					</div>
				</div>
				
					<div class="col">
					<button class="dion">
						<b>조원 전석기</b>
					</button>
					<div class="panel">
						<img src="/baseball/resources/images/point/SK.jpg" 
						style=" margin-top: 2%;  height:107px;"/>
						<div class="row" style="text-align: center;">
							<div class="col">
							<p style="font-size:smaller;">
								<br />설계부터 구상 및 빌드까지 청사진이
								<br />그려지기 어려움이 많았지만 다함께 
								<br />극복하여 좋은 결과를 얻게 되었습니다. 
								<br />앞으로 부족한 부분을 채워나갈 수 있도록
								<br />더욱 성장하겠습니다.
							</p>
						</div>
					</div>
					</div>
				</div>
				
				<div class="col">
					<button class="dion">
						<b>조원 권은지</b>
					</button>
					<div class="panel">
						<img src="/baseball/resources/images/point/EJ.png" 
						style=" margin-top: 1%;  height:127px;"/>
						<div class="row" style="text-align: center;">
							<div class="col">
							<p style="font-size:smaller;">
								<br />Java와 DB간의 데이터 처리 과정을 직접
								<br /> 만들어 볼 수 있는 유익한 시간이였다.
								<br />디자인감각이 없다는 
								<br />사실을 뼈저리게느끼게 되었다.
							</p>
						</div>
					</div>
					</div>
				</div>

				<div class="col">
					<button class="dion">
						<b>조원 김진성</b>
					</button>
					<div class="panel">
						<img src="/baseball/resources/images/point/JS.jpeg" 
						style=" margin-top: 2%; height: 144px; wifth:144px;"/>
						<div class="row" style="text-align: center;">
							<div class="col">
							<p style="font-size:smaller;">
								<br />서버와 서버 그리고 서버와 DB 사이의 데이터 
								<br />이동을 중점으로 서버를 이해하여 전체적인
								<br />흐름을 깨닫는 계기가 된 프로젝트였다
							</p>
						</div>
					</div>
					</div>
				</div>

				<div class="col">
					<button class="dion">
						<b>조원 정진홍</b>
					</button>
					<div class="panel">
						<img src="/baseball/resources/images/point/JH.png" 
						style=" margin-top: 3%; height: 124px; wifth:124px;"/>
						<div class="row" style="text-align: center;">
							<div class="col">
							<p style="font-size:smaller;">
								<br />Java와 DB 그리고 홈페이지에 대한 중요 예매 
								<br />페이지 제작을 통해 전체적인 흐름과 어떠한 
								<br />방식으로 저 자신에 부족한 점과
								<br />장점을 알 수 있는 계기가 된 프로젝트였습니다.
							</p>
						</div>
					</div>
					</div>
				</div>
			</div>
		</section>
	</div>


	<!-- 맨위로 올라가기 -->
	<a href="#"> <img id="arrows"
		src="/baseball/resources/images/index/above_theapplication_thearrow_4431.png"
		alt="화살표s" />
	</a>

	<!-- 끝 -->
	<%@ include file="views/common/footer.jsp"%>


	<script>
		var acc = document.getElementsByClassName("dion");
		var i;

		for (i = 0; i < acc.length; i++) {
			acc[i].addEventListener("click", function() {
				this.classList.toggle("activ");
				var panel = this.nextElementSibling;
				if (panel.style.display === "block") {
					panel.style.display = "none";
				} else {
					panel.style.display = "block";
				}
			});
		}
	</script>

</body>

</html>