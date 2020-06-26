<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
	integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
	integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
	crossorigin="anonymous"></script>


</head>

<%@ include file="/views/common/header.jsp"%>
<br />
<br />

<div class="row">

	<aside class="col-1 aside"></aside>
	<section class="col-10  ">

		<div class="row">
			<aside class="col-1 aside"></aside>
			<section class="col-10  ">
				<div id="carouselExampleControls" class="carousel slide"
					data-ride="carousel">
					<ol class="carousel-indicators">
						<li data-target="#carouselExampleIndicators" data-slide-to="0"
							class="active"></li>
						<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
						<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
					</ol>
					<div class="carousel-inner">
						<div class="carousel-item active">
							<img src="/baseball/resources/images/ticketing/kbo.png"
								class="d-block .w-100" alt="..." style="width: 100%; height: 250px;">
						</div>
						<div class="carousel-item">
							<img src="/baseball/resources/images/ticketing/file_1.jpeg"
								class="d-block .w-100" alt="..." style="width: 100%; height: 250px;">
						</div>
						<div class="carousel-item">
							<img src="/baseball/resources/images/ticketing/file_2.jpeg"
								class="d-block .w-100" alt="..." style="width: 100%; height: 250px;">
						</div>
					</div>
					<a class="carousel-control-prev" href="#carouselExampleControls"
						role="button" data-slide="prev"> <span
						class="carousel-control-prev-icon" aria-hidden="true"></span> <span
						class="sr-only">Previous</span>
					</a> <a class="carousel-control-next" href="#carouselExampleControls"
						role="button" data-slide="next"> <span
						class="carousel-control-next-icon" aria-hidden="true"></span> <span
						class="sr-only">Next</span>
					</a>
				</div>
			</section>
			<aside class="col-1 aside"></aside>
		</div>
		<br /> <br />

		<div class="row" style="margin: auto;">
			<aside class="col-1 aside"></aside>
			<section class="col-10 " style="text-align: center; margin: auto;">
				<br /> <br />

				<div class="row  " style="margin-left: 0.1%;">
				<div class="col-sm-5 col-xl-2">
					<div class="card" style="width: 220px; height: 400px; margin-bottom : 65px;">
							<img src="/baseball/resources/images/ticketing/logo_SK.jpeg"
								class="card-img-top" style="width: 100%; height: 50%;" alt="...">
							<div class="card-body">
								<h3 class="card-title">SK 와이번스</h3>
								<p class="card-text"></p>
								<br /> <br /> 
								<% if (m != null){ %>
								<a href="/baseball/views/ticketing/calendar/calendar.jsp" class="btn btn-primary"> 구매하러가기</a>
								<% } else { %>
								<a class="btn btn-primary" onclick="a()" style="color:white" >구매하러가기</a>
								<% } %>
								<script>
								function a(){
									alert("로그인을 해주세요");
								}
								</script>
								
							</div>
						</div>
					</div>
					&nbsp; &nbsp; &nbsp;
				
					
					<div class="col-sm-5 col-xl-2">
						<div class="card" style="width: 220px; height: 400px; margin-bottom : 65px;">
							<img src="/baseball/resources/images/ticketing/logo_kt.png"
								class="card-img-top" style="width: 100%; height: 50%;" alt="...">
							<div class="card-body">
								<h3 class="card-title">KT 위즈</h3>
								<p class="card-text"></p>
								<br /> <br /> <a href="/baseball/views/ticketing/ktticketing.jsp" class="btn btn-primary"> 구매하러가기</a>
							</div>
						</div>
					</div>
				
					&nbsp; &nbsp; &nbsp;

					<div class="col-sm-5 col-xl-2">
						<div class="card" style="width: 220px; height: 400px; margin-bottom : 65px;">
							<img src="/baseball/resources/images/ticketing/logo_S.png"
								class="card-img-top" style="width: 100%; height: 50%;" alt="...">
							<div class="card-body">
								<h3 class="card-title">삼성 라이온즈</h3>
								<p class="card-text"></p>
								<br /> <br /> <a href="/baseball/views/ticketing/slticketing.jsp" class="btn btn-primary"> 구매하러가기</a>
							</div>
						</div>
					</div>
					&nbsp; &nbsp; &nbsp;

					<div class="col-sm-5 col-xl-2">
						<div class="card" style="width: 220px; height: 400px; margin-bottom : 65px;">
							<img src="/baseball/resources/images/ticketing/logo_E.png"
								class="card-img-top" style="width: 100%; height: 50%;" alt="...">
							<div class="card-body">
								<h3 class="card-title">한화 이글스</h3>
								<p class="card-text"></p>
								<br /> <br /> <a href="/baseball/views/ticketing/heticketing.jsp" class="btn btn-primary"> 구매하러가기</a>
							</div>
						</div>
					</div>
					&nbsp; &nbsp; &nbsp;

					<div class="col-sm-5 col-xl-2">
						<div class="card" style="width: 220px; height: 400px; margin-bottom : 65px;">
							<img src="/baseball/resources/images/ticketing/logo_G.gif"
								class="card-img-top" style="width: 100%; height: 50%;" alt="...">
							<div class="card-body">
								<h3 class="card-title">롯데 자이언츠</h3>
								<p class="card-text"></p>
								<br /> <br /> <a href="/baseball/views/ticketing/lsticketing.jsp" class="btn btn-primary"> 구매하러가기</a>
							</div>
						</div>
					</div>
					&nbsp; &nbsp; &nbsp;

				<div class="col-sm-5 col-xl-2">
						<div class="card" style="width: 220px; height: 400px; margin-bottom : 65px;">
							<img src="/baseball/resources/images/ticketing/logo_D.png"
								class="card-img-top" style="width: 100%; height: 50%;" alt="...">
							<div class="card-body">
								<h3 class="card-title">NC 다이노스</h3>
								<p class="card-text"></p>
								<br /> <br /> <a href="/baseball/views/ticketing/ncticketing.jsp" class="btn btn-primary"> 구매하러가기</a>
							</div>
						</div>
					</div>
					&nbsp; &nbsp; &nbsp;
					<div class="col-sm-5 col-xl-2">
						<div class="card" style="width: 220px; height: 400px; margin-bottom : 65px;">
							<img src="/baseball/resources/images/ticketing/logo_F.jpg"
								class="card-img-top" style="width: 100%; height: 50%;" alt="...">
							<div class="card-body">
								<h3 class="card-title">키움 히어로즈</h3>
								<p class="card-text"></p>
								<br /> <br /> <a href="/baseball/views/ticketing/gsticketing.jsp" class="btn btn-primary"> 구매하러가기</a>
							</div>
						</div>
					</div>
					&nbsp; &nbsp; &nbsp;

					<div class="col-sm-5 col-xl-2">
						<div class="card" style="width: 220px; height: 400px; margin-bottom : 65px;">
							<img src="/baseball/resources/images/ticketing/logo_T.png"
								class="card-img-top" style="width: 100%; height: 50%;" alt="...">
							<div class="card-body">
								<h3 class="card-title">LG 트윈스</h3>
								<p class="card-text"></p>
								<br /> <br /> <a href="/baseball/views/ticketing/jamsilticketing.jsp" class="btn btn-primary"> 구매하러가기</a>
							</div>
						</div>
					</div>
					&nbsp; &nbsp; &nbsp;

					<div class="col-sm-5 col-xl-2">
						<div class="card" style="width: 220px; height: 400px; margin-bottom : 65px;">
							<img src="/baseball/resources/images/ticketing/logo_tiger.gif"
								class="card-img-top" style="width: 100%; height: 50%;" alt="...">
							<div class="card-body">
								<h3 class="card-title">KIA 타이거즈</h3>
								<p class="card-text"></p>
								<br /> <br /> <a href="/baseball/views/ticketing/kiaticketing.jsp" class="btn btn-primary"> 구매하러가기</a>
							</div>
						</div>
					</div>
					&nbsp; &nbsp; &nbsp;
					
					<div class="col-sm-5 col-xl-2">
						<div class="card" style="width: 220px; height: 400px; margin-bottom : 65px;">
							<img src="/baseball/resources/images/ticketing/logo_D.jpeg"
								class="card-img-top" style="width: 100%; height: 50%;" alt="...">
							<div class="card-body">
								<h3 class="card-title">두산 베어스</h3>
								<p class="card-text"></p>
								<br /> <br /> <a href="/baseball/views/ticketing/jamsilticketing.jsp" class="btn btn-primary"> 구매하러가기</a>
							</div>
						</div>
					</div>
					&nbsp; &nbsp; &nbsp;

					</div>
					<br />
				<br /> <br /> <br /> <br />
			</section>
			<aside class="col-1   aside"></aside>
		</div>

	</section>
	<aside class="col-1   aside"></aside>
</div>

<br />
<br />
<script>



</script>


<%@ include file="/views/common/footer.jsp"%>

</html>