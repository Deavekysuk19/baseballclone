<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.ticket.model.vo.*"%>

<%@ page import="java.io.*,java.util.*"%>
<!-- 날짜 임포트[java.util] -->

<!doctype html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<title>예매 페이지</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">

<script src="/baseball/resources/js/jquery-2.2.4.js"></script>

<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
	integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
	crossorigin="anonymous"></script>

<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/js/jquery-3.5.1.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
	integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
	crossorigin="anonymous"></script>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">

<link href="/baseball/resources/css/ticketing/ticketing.css"
	rel="stylesheet" type="text/css" />

<script src="/baseball/resources/js/ticketing.js"
	type="application/javascript"></script>


<%@ include file="/views/common/header.jsp"%>
<%
	Ticket t = (Ticket)session.getAttribute("ticket");
%>
<%! 
	int chk=0;
%>

</head>

<div class="container  ">

	<header class="row  ">
		<div class="col-2"></div>

		<div class="col-3"></div>
	</header>

	<div class="row">
		<aside class="col-1 aside"></aside>
		<section class="col-10  ">
			<div class="row">
				<div class="col-12  " style="text-align: center;">
					<br>
					<h2>예매좌석 &nbsp; 안내</h2>
					<h5>(원하시는 좌석을 클릭해주세요)</h5>
					<br>
				</div>
			</div>
			<div class="row">
				<div class="col img-container">
					<img src="/baseball/resources/images/ticketing/seat_2020.jpg"
						alt="좌석 관련된 이미지입니다." id="image_1"
						style="margin-top: 20%; width: 100%; height: auto;">
				</div>
				<!-- 
            마진 auto가 안 되어서 top으로 따로 마진을 잡는 부분 
            또한 이미지도 png 파일이 아니기 때문에 그에 맞는 방식으로 사이즈 조정하였음.
       -->
				<div class="col  " id="box1">

					<div class="col-12 down  ">
						<input type="button" class="button" value="행복라이브존 [10인석]">
						<div class="down-con">
							<p>
								<a href="#selectSeat" class="SeatMove1" id="Move1"> <b>행복라이브존</b>은
									<br /> [관련 내용] <br /> <br /> [ 가격 안내 ] <br /> 주중경기 :
									47,000원 <br /> 주말경기 : 60,000원
								</a>
							</p>
						</div>
					</div>

					<div class="col-12 down  ">
						<input type="button" class="button" value="의자지정석 [N인석]">
						<div class="down-con">
							<p>
								<a href="#selectSeat" class="SeatMove2" id="Move2"> <b>의자지정석</b>은
									<br /> [관련 내용] <br /> <br /> [ 가격 안내 ] <br /> 주중경기 :
									13,500원 <br /> 주말경기 : 18,000원
								</a>
							</p>
						</div>
					</div>

					<div class="col-12 down  ">
						<input type="button" class="button" value="OPEN바베큐존 [4인석 ~ 8인석]">
						<div class="down-con mlb">
							<p>
								<a href="#selectSeat" class="SeatMove3" id="Move3"> <b>OPEN바베큐존</b>은
									<br /> [관련 내용] <br /> <br /> [ 가격 안내 ] <br /> 주중경기 / 주말경기 <br />
									4인 : 84,000원 / 108,000원 <br /> 5인 : 105,000원 / 135,000원 <br />
									6인 : 126,000원 / 162,000원 <br /> 7인 : 147,000원 / 189,000원 <br />
									8인 : 168,000원 / 216,000원
								</a>
							</p>
						</div>
					</div>


					<div class="col-12 down  ">
						<input type="button" class="button" value="SKY탁자석 [N인실]">
						<div class="down-con">
							<p>
								<a href="#selectSeat" class="SeatMove4" id="Move4"> <b>SKY탁자석</b>은
									<br /> [관련 내용] <br /> <br /> [ 가격 안내 ] <br /> 주중경기 :
									14,000원 <br /> 주말경기 : 20,000원
								</a>
							</p>
						</div>
					</div>

					<div class="col-12 down  ">
						<input type="button" class="button" value="드림라이브존 [N인석]"">
						<div class=" down-con">
							<p>
								<a href="#selectSeat" class="SeatMove5" id="Move5"> <b>드림라이브존</b>은
									<br /> [관련 내용] <br /> <br /> [ 가격 안내 ] <br /> 주중경기 :
									42,000원 <br /> 주말경기 : 55,000원
								</a>
							</p>
						</div>
					</div>


					<div class="col-12 down  ">
						<input type="button" class="button" value="T그린존 [N인석]">
						<div class="down-con">
							<p>
								<a href="#selectSeat" class="SeatMove6" id="Move6"> <b>T그린존</b>은
									<br /> [관련 내용] <br /> <br /> [ 가격 안내 ] <br /> 주중경기 :
									10,500원 <br /> 주말경기 : 14,000원
								</a>
							</p>
						</div>
					</div>


					<div class="col-12 down  ">
						<input type="button" class="button" value="이마트바비큐존 [N인석]">
						<div class="down-con">
							<p>
								<a href="#selectSeat" class="SeatMove7" id="Move7"> <b>이마트바비큐존</b>은
									<br /> [관련 내용] <br /> <br /> [ 가격 안내 ] <br /> 주중경기 :
									19,000원 <br /> 주말경기 : 22,000원
								</a>
							</p>
						</div>
					</div>


					<div class="col-12 down  ">
						<input type="button" class="button" value="미니스카이박스 [4~6인석]">
						<div class="down-con">
							<p>
								<a href="#selectSeat" class="SeatMove8" id="Move8"> <b>미니스카이박스</b>은
									<br /> [관련 내용] <br /> <br /> [ 가격 안내 ] <br /> 주중경기 / 주말경기 <br />
									4인 : 168,000원 / 240,000원 <br /> 6인 : 252,000원 / 360,000원
								</a>
							</p>
						</div>
					</div>


					<div class="col-12 down  ">
						<input type="button" class="button" value="탁자지정석 1층 [N인석]">
						<div class="down-con">
							<p>
								<a href="#selectSeat" class="SeatMove9" id="Move9"> <b>탁자지정석
										1층</b>은 <br /> [관련 내용] <br /> <br /> [ 가격 안내 ] <br /> 주중경기 :
									34,500원 <br /> 주말경기 : 42,000원
								</a>
							</p>
						</div>
					</div>


					<div class="col-12 down  ">
						<input type="button" class="button" value="탁자지정석 2층 [N인석]">
						<div class="down-con">
							<p>
								<a href="#selectSeat" class="SeatMove10" id="Move10"> <b>탁자지정석
										2층</b>은 <br /> [관련 내용] <br /> <br /> [ 가격 안내 ] <br /> 주중경기 :
									28,000원 <br /> 주말경기 : 33,000원
								</a>
							</p>
						</div>
					</div>


					<div class="col-12 down  ">
						<input type="button" class="button" value="내야패밀리존 [4인석 ~ 5인석]">
						<div class="down-con">
							<p>
								<a href="#selectSeat" class="SeatMove11" id="Move11"> <b>내야패밀리존</b>은
									<br /> [관련 내용] <br /> <br /> [ 가격 안내 ] <br /> 주중경기 / 주말경기 <br />
									4인 : 104,000원 / 132,000원 <br /> 5인 : 130,000원 / 165,000원
								</a>
							</p>
						</div>
					</div>


					<div class="col-12 down  ">
						<input type="button" class="button" value="외야패밀리존 [4인석 ~ 5인석]">
						<div class="down-con">
							<p>
								<a href="#selectSeat" class="SeatMove12" id="Move12"> <b>외야패밀리존</b>은
									<br /> [관련 내용] <br /> <br /> [ 가격 안내 ] <br /> 주중경기 / 주말경기 <br />
									4인 : 64,000원 / 88,000원 <br /> 5인 : 80,000원 / 110,000원
								</a>
							</p>
						</div>
					</div>


					<div class="col-12 down  ">
						<input type="button" class="button" value="홈런커플존 [2인석]">
						<div class="down-con">
							<p>
								<a href="#selectSeat" class="SeatMove13" id="Move13"> <b>홈런커플존</b>은
									<br /> [관련 내용] <br /> <br /> [ 가격 안내 ] <br /> 주중경기 :
									32,000원 <br /> 주말경기 : 41,000원
								</a>
							</p>
						</div>
					</div>


					<div class="col-12 down  ">
						<input type="button" class="button" value="초가정자 [N인석]">
						<div class="down-con">
							<p>
								<a href="#selectSeat" class="SeatMove14" id="Move14"> <b>초가정자</b>은
									<br /> [관련 내용] <br /> <br /> [ 가격 안내 ] <br /> 주중경기 :
									101,000원 <br /> 주말경기 : 109,000원
								</a>
							</p>
						</div>
					</div>

					<div class="col-12 down  ">
						<input type="button" class="button" value="이마트프랜들리존 [N인석]">
						<div class="down-con">
							<p>
								<a href="#selectSeat" class="SeatMove15" id="Move15"> <b>이마트프랜들리존</b>은
									<br /> [관련 내용] <br /> <br /> [ 가격 안내 ] <br /> 주중경기 :
									19,000원 <br /> 주말경기 : 22,000원
								</a>
							</p>
						</div>
					</div>

					<div class="col-12 down  ">
						<input type="button" class="button" value="스카이박스 [10인석 ~ 24인석]">
						<div class="down-con">
							<p>
								<a href="#selectSeat" class="SeatMove16" id="Move16"> <b>스카이박스</b>은
									<br /> [관련 내용] <br /> <br /> [ 가격 안내 ] <br> 주중경기 / 주말경기
									<br /> 8인 : 500,000원 / 88,000원 <br /> 10인 : 600,000원 /
									620,000원 <br /> 12인 : 700,000원 / 732,000원<br /> 16인 :
									1,040,000원 / 1,080,000원 <br /> 24인 : 1,454,000원 / 1,4880,000원
								</a>
							</p>
						</div>
					</div>

					<div class="col-12 down  ">
						<input type="button" class="button" value="응원 지정석 [N인석]">
						<div class="down-con">
							<p>
								<a href="#selectSeat" class="SeatMove17" id="Move17"> <b>응원
										지정석</b>은 <br /> [관련 내용] <br /> <br /> [ 가격 안내 ] <br /> 주중경기 :
									11,500원 <br /> 주말경기 : 15,000원
								</a>
							</p>
						</div>
					</div>

					<div class="col-12 down  ">
						<input type="button" class="button"
							value="로케트배터리 와야파티덱 [4인석 ~ 8인석]">
						<div class="down-con">
							<p>
								<a href="#selectSeat" class="SeatMove18" id="Move18"> <b>로케트배터리
										와야파티덱</b>은 <br /> [관련 내용] <br /> <br /> [ 가격 안내 ] <br /> 주중경기
									/ 주말경기 <br /> 4인 : 64,000원 / 80,000원 <br /> 6인 : 96,000원 /
									120,000원 <br /> 8인 : 128,000원 / 160,000원
								</a>
							</p>
						</div>
						<br />
					</div>
				</div>

			</div>
		</section>
	</div>
	<br />

	<div class="row show">
		<aside class="col-lg-1 "></aside>
		<div class="col  ">
			<br />
			<div class="row show" id="show">
				<div class="col " style="text-align: center;">
					<br />
					<h2>좌석 예매</h2>
					<br />
					<div class="row">
						<section class="col-8  ">
							<div class="A-seat all-seat"
								style="display: none; margin-top: 13%;" id="A">
								<p style="text-align: center;">
									경기장 <br /> [ 행복라이브존 ]
								</p>

								<div class="row">
									<div class="col-12  " style="text-align: center;">
										<div class="col-1 A seat">A1</div>
										<div class="col-1 A seat">A2</div>
										<div class="col-1 A seat">A3</div>
										<div class="col-1 A seat">A4</div>
										<div class="col-1 A seat">A5</div>
										<div class="col-1 A seat">A6</div>
										<div class="col-1 A seat">A7</div>
										<div class="col-1 A seat">A8</div>
										<div class="col-1 A seat">A9</div>
										<div class="col-1 A seat">A10</div>
										<div class="col-1 A seat">A11</div>
										<div class="col-1 A seat">A12</div>
									</div>
								</div>

								<div class="row">
									<div class="col-12  " style="text-align: center;">
										<div class="col-1 A seat">A13</div>
										<div class="col-1 A seat">A14</div>
										<div class="col-1 A seat">A15</div>
										<div class="col-1 A seat">A16</div>
										<div class="col-1 A seat">A17</div>
										<div class="col-1 A seat">A18</div>
										<div class="col-1 A seat">A19</div>
										<div class="col-1 A seat">A20</div>
										<div class="col-1 A seat">A21</div>
										<div class="col-1 A seat">A23</div>
										<div class="col-1 A seat">A24</div>
										<div class="col-1 A seat">A25</div>
									</div>
								</div>

								<div class="row">
									<div class="col-12  " style="text-align: center;">
										<div class="col-1 A seat">A26</div>
										<div class="col-1 A seat">A27</div>
										<div class="col-1 A seat">A28</div>
										<div class="col-1 A seat">A29</div>
										<div class="col-1 A seat">A30</div>
										<div class="col-1 A seat">A31</div>
										<div class="col-1 A seat">A32</div>
										<div class="col-1 A seat">A33</div>
										<div class="col-1 A seat">A34</div>
										<div class="col-1 A seat">A35</div>
										<div class="col-1 A seat">A36</div>
										<div class="col-1 A seat">A37</div>
									</div>
								</div>

								<div class="row">
									<div class="col-12  " style="text-align: center;">
										<div class="col-1 A seat">A38</div>
										<div class="col-1 A seat">A39</div>
										<div class="col-1 A seat">A40</div>
										<div class="col-1 A seat">A41</div>
										<div class="col-1 A seat">A42</div>
										<div class="col-1 A seat">A43</div>
										<div class="col-1 A seat">A44</div>
										<div class="col-1 A seat">A45</div>
										<div class="col-1 A seat">A46</div>
										<div class="col-1 A seat">A47</div>
										<div class="col-1 X seat" style="pointer-events: none;">-</div>
										<div class="col-1 X seat" style="pointer-events: none;">-</div>
									</div>
								</div>

								<div class="row">
									<div class="col-12  " style="text-align: center;">
										<div class="col-1 A seat">A48</div>
										<div class="col-1 A seat">A49</div>
										<div class="col-1 A seat">A50</div>
										<div class="col-1 A seat">A51</div>
										<div class="col-1 A seat">A52</div>
										<div class="col-1 A seat">A53</div>
										<div class="col-1 A seat">A54</div>
										<div class="col-1 A seat">A55</div>
										<div class="col-1 A seat">A56</div>
										<div class="col-1 A seat">A57</div>
										<div class="col-1 X seat" style="pointer-events: none;">-</div>
										<div class="col-1 X seat" style="pointer-events: none;">-</div>
									</div>
								</div>
							</div>

							<div class="B-seat all-seat"
								style="display: none; margin-top: 13%;" id="B">
								<p style="text-align: center;">
									경기장 <br /> [ 의자지정석 ]
								</p>

								<div class="row">
									<div class="col-12  " style="text-align: center;">
										<div class="col-1 B seat">B1</div>
										<div class="col-1 B seat">B2</div>
										<div class="col-1 B seat">B3</div>
										<div class="col-1 B seat">B4</div>
										<div class="col-1 B seat">B5</div>
										<div class="col-1 B seat">B6</div>
										<div class="col-1 B seat">B7</div>
										<div class="col-1 B seat">B8</div>
										<div class="col-1 B seat">B9</div>
										<div class="col-1 B seat">B10</div>
										<div class="col-1 B seat">B11</div>
										<div class="col-1 B seat">B12</div>
									</div>
								</div>

								<div class="row">
									<div class="col-12  " style="text-align: center;">
										<div class="col-1 B seat">B13</div>
										<div class="col-1 B seat">B14</div>
										<div class="col-1 B seat">B15</div>
										<div class="col-1 B seat">B16</div>
										<div class="col-1 B seat">B17</div>
										<div class="col-1 B seat">B18</div>
										<div class="col-1 B seat">B19</div>
										<div class="col-1 B seat">B20</div>
										<div class="col-1 B seat">B21</div>
										<div class="col-1 B seat">B23</div>
										<div class="col-1 B seat">B24</div>
										<div class="col-1 B seat">B25</div>
									</div>
								</div>

								<div class="row">
									<div class="col-12  " style="text-align: center;">
										<div class="col-1 B seat">B26</div>
										<div class="col-1 B seat">B27</div>
										<div class="col-1 B seat">B28</div>
										<div class="col-1 B seat">B29</div>
										<div class="col-1 B seat">B30</div>
										<div class="col-1 B seat">B31</div>
										<div class="col-1 B seat">B32</div>
										<div class="col-1 B seat">B33</div>
										<div class="col-1 B seat">B34</div>
										<div class="col-1 B seat">B35</div>
										<div class="col-1 B seat">B36</div>
										<div class="col-1 B seat">B37</div>
									</div>
								</div>

								<div class="row">
									<div class="col-12  " style="text-align: center;">
										<div class="col-1 X seat" style="pointer-events: none;">-</div>
										<div class="col-1 X seat" style="pointer-events: none;">-</div>
										<div class="col-1 B seat">B38</div>
										<div class="col-1 B seat">B39</div>
										<div class="col-1 B seat">B40</div>
										<div class="col-1 B seat">B41</div>
										<div class="col-1 B seat">B42</div>
										<div class="col-1 B seat">B43</div>
										<div class="col-1 B seat">B44</div>
										<div class="col-1 B seat">B45</div>
										<div class="col-1 B seat">B46</div>
										<div class="col-1 B seat">B47</div>
									</div>
								</div>

								<div class="row">
									<div class="col-12  " style="text-align: center;">
										<div class="col-1 X seat" style="pointer-events: none;">-</div>
										<div class="col-1 X seat" style="pointer-events: none;">-</div>
										<div class="col-1 B seat">B48</div>
										<div class="col-1 B seat">B49</div>
										<div class="col-1 B seat">B50</div>
										<div class="col-1 B seat">B51</div>
										<div class="col-1 B seat">B52</div>
										<div class="col-1 B seat">B53</div>
										<div class="col-1 B seat">B54</div>
										<div class="col-1 B seat">B55</div>
										<div class="col-1 B seat">B56</div>
										<div class="col-1 B seat">B57</div>
									</div>
								</div>
							</div>

							<div class="C-seat all-seat"
								style="display: none; margin-top: 13%;" id="C">
								<p style="text-align: center;">
									경기장 <br /> [ OPEN바베큐존 ]
								</p>

								<div class="row">
									<div class="col-12  " style="text-align: center;">
										<div class="col-1 C seat">C1</div>
										<div class="col-1 C seat">C2</div>
										<div class="col-1 C seat">C3</div>
										<div class="col-1 C seat">C4</div>
										<div class="col-1 C seat">C5</div>
										<div class="col-1 C seat">C6</div>
										<div class="col-1 C seat">C7</div>
										<div class="col-1 C seat">C8</div>
										<div class="col-1 C seat">C9</div>
										<div class="col-1 C seat">C10</div>
										<div class="col-1 C seat">C11</div>
										<div class="col-1 C seat">C12</div>
									</div>
								</div>

								<div class="row">
									<div class="col-12  " style="text-align: center;">
										<div class="col-1 C seat">C13</div>
										<div class="col-1 C seat">C14</div>
										<div class="col-1 C seat">C15</div>
										<div class="col-1 C seat">C16</div>
										<div class="col-1 C seat">C17</div>
										<div class="col-1 C seat">C18</div>
										<div class="col-1 C seat">C19</div>
										<div class="col-1 C seat">C20</div>
										<div class="col-1 C seat">C21</div>
										<div class="col-1 C seat">C23</div>
										<div class="col-1 C seat">C24</div>
										<div class="col-1 C seat">C25</div>
									</div>
								</div>

								<div class="row">
									<div class="col-12  " style="text-align: center;">
										<div class="col-1 C seat">C26</div>
										<div class="col-1 C seat">C27</div>
										<div class="col-1 C seat">C28</div>
										<div class="col-1 C seat">C29</div>
										<div class="col-1 C seat">C30</div>
										<div class="col-1 C seat">C31</div>
										<div class="col-1 C seat">C32</div>
										<div class="col-1 C seat">C33</div>
										<div class="col-1 C seat">C34</div>
										<div class="col-1 C seat">C35</div>
										<div class="col-1 C seat">C36</div>
										<div class="col-1 C seat">C37</div>
									</div>
								</div>

								<div class="row">
									<div class="col-12  " style="text-align: center;">
										<div class="col-1 C seat">C38</div>
										<div class="col-1 C seat">C39</div>
										<div class="col-1 C seat">C40</div>
										<div class="col-1 C seat">C41</div>
										<div class="col-1 X seat" style="pointer-events: none;">-</div>
										<div class="col-1 X seat" style="pointer-events: none;">-</div>
										<div class="col-1 C seat">C42</div>
										<div class="col-1 C seat">C43</div>
										<div class="col-1 C seat">C44</div>
										<div class="col-1 C seat">C45</div>
										<div class="col-1 C seat">C46</div>
										<div class="col-1 C seat">C47</div>
									</div>
								</div>

								<div class="row">
									<div class="col-12  " style="text-align: center;">
										<div class="col-1 C seat">C48</div>
										<div class="col-1 C seat">C49</div>
										<div class="col-1 C seat">C50</div>
										<div class="col-1 C seat">C51</div>
										<div class="col-1 X seat" style="pointer-events: none;">-</div>
										<div class="col-1 X seat" style="pointer-events: none;">-</div>
										<div class="col-1 C seat">C52</div>
										<div class="col-1 C seat">C53</div>
										<div class="col-1 C seat">C54</div>
										<div class="col-1 C seat">C55</div>
										<div class="col-1 C seat">C56</div>
										<div class="col-1 C seat">C57</div>
									</div>
								</div>
							</div>

							<div class="D-seat all-seat"
								style="display: none; margin-top: 13%;" id="D">
								<p style="text-align: center;">
									경기장 <br /> [ SKY탁자석 ]
								</p>

								<div class="row">
									<div class="col-12  " style="text-align: center;">
										<div class="col-1 D seat">D1</div>
										<div class="col-1 D seat">D2</div>
										<div class="col-1 D seat">D3</div>
										<div class="col-1 D seat">D4</div>
										<div class="col-1 D seat">D5</div>
										<div class="col-1 D seat">D6</div>
										<div class="col-1 D seat">D7</div>
										<div class="col-1 D seat">D8</div>
										<div class="col-1 D seat">D9</div>
										<div class="col-1 D seat">D10</div>
										<div class="col-1 D seat">D11</div>
										<div class="col-1 D seat">D12</div>
									</div>
								</div>

								<div class="row">
									<div class="col-12  " style="text-align: center;">
										<div class="col-1 D seat">D13</div>
										<div class="col-1 D seat">D14</div>
										<div class="col-1 D seat">D15</div>
										<div class="col-1 D seat">D16</div>
										<div class="col-1 D seat">D17</div>
										<div class="col-1 D seat">D18</div>
										<div class="col-1 D seat">D19</div>
										<div class="col-1 D seat">D20</div>
										<div class="col-1 D seat">D21</div>
										<div class="col-1 D seat">D23</div>
										<div class="col-1 D seat">D24</div>
										<div class="col-1 D seat">D25</div>
									</div>
								</div>

								<div class="row">
									<div class="col-12  " style="text-align: center;">
										<div class="col-1 D seat">D26</div>
										<div class="col-1 D seat">D27</div>
										<div class="col-1 D seat">D28</div>
										<div class="col-1 D seat">D29</div>
										<div class="col-1 D seat">D30</div>
										<div class="col-1 D seat">D31</div>
										<div class="col-1 D seat">D32</div>
										<div class="col-1 D seat">D33</div>
										<div class="col-1 D seat">D34</div>
										<div class="col-1 D seat">D35</div>
										<div class="col-1 D seat">D36</div>
										<div class="col-1 D seat">D37</div>
									</div>
								</div>

								<div class="row">
									<div class="col-12  " style="text-align: center;">
										<div class="col-1 D seat">D38</div>
										<div class="col-1 D seat">D39</div>
										<div class="col-1 X seat" style="pointer-events: none;">-</div>
										<div class="col-1 X seat" style="pointer-events: none;">-</div>
										<div class="col-1 D seat">D40</div>
										<div class="col-1 D seat">D41</div>
										<div class="col-1 D seat">D42</div>
										<div class="col-1 D seat">D43</div>
										<div class="col-1 D seat">D44</div>
										<div class="col-1 D seat">D45</div>
										<div class="col-1 D seat">D46</div>
										<div class="col-1 D seat">D47</div>
									</div>
								</div>

								<div class="row">
									<div class="col-12  " style="text-align: center;">
										<div class="col-1 D seat">D48</div>
										<div class="col-1 D seat">D49</div>
										<div class="col-1 X seat" style="pointer-events: none;">-</div>
										<div class="col-1 X seat" style="pointer-events: none;">-</div>
										<div class="col-1 D seat">D50</div>
										<div class="col-1 D seat">D51</div>
										<div class="col-1 D seat">D52</div>
										<div class="col-1 D seat">D53</div>
										<div class="col-1 D seat">D54</div>
										<div class="col-1 D seat">D55</div>
										<div class="col-1 D seat">D56</div>
										<div class="col-1 D seat">D57</div>
									</div>
								</div>
							</div>

							<div class="E-seat all-seat"
								style="display: none; margin-top: 20%;" id="E">
								<p style="text-align: center;">
									경기장 <br /> [ 드림라이브존 ]
								</p>

								<div class="row">
									<div class="col-12  " style="text-align: center;">
										<div class="col-1 E seat">E1</div>
										<div class="col-1 E seat">E2</div>
										<div class="col-1 E seat">E3</div>
										<div class="col-1 E seat">E4</div>
										<div class="col-1 E seat">E5</div>
										<div class="col-1 E seat">E6</div>
										<div class="col-1 E seat">E7</div>
										<div class="col-1 E seat">E8</div>
										<div class="col-1 E seat">E9</div>
										<div class="col-1 E seat">E10</div>
										<div class="col-1 E seat">E11</div>
										<div class="col-1 E seat">E12</div>
									</div>
								</div>

								<div class="row">
									<div class="col-12  " style="text-align: center;">
										<div class="col-1 E seat">E13</div>
										<div class="col-1 E seat">E14</div>
										<div class="col-1 E seat">E15</div>
										<div class="col-1 E seat">E16</div>
										<div class="col-1 E seat">E17</div>
										<div class="col-1 E seat">E18</div>
										<div class="col-1 E seat">E19</div>
										<div class="col-1 E seat">E20</div>
										<div class="col-1 E seat">E21</div>
										<div class="col-1 E seat">E23</div>
										<div class="col-1 E seat">E24</div>
										<div class="col-1 E seat">E25</div>
									</div>
								</div>

								<div class="row">
									<div class="col-12  " style="text-align: center;">
										<div class="col-1 E seat">E26</div>
										<div class="col-1 E seat">E27</div>
										<div class="col-1 E seat">E28</div>
										<div class="col-1 E seat">E29</div>
										<div class="col-1 E seat">E30</div>
										<div class="col-1 E seat">E31</div>
										<div class="col-1 E seat">E32</div>
										<div class="col-1 E seat">E33</div>
										<div class="col-1 E seat">E34</div>
										<div class="col-1 E seat">E35</div>
										<div class="col-1 E seat">E36</div>
										<div class="col-1 E seat">E37</div>
									</div>
								</div>
							</div>


							<div class="F-seat all-seat"
								style="display: none; margin-top: 20%;" id="F">
								<p style="text-align: center;">
									경기장 <br /> [ T그린존 ]
								</p>

								<div class="row">
									<div class="col-12  " style="text-align: center;">
										<div class="col-1 F seat">F1</div>
										<div class="col-1 F seat">F2</div>
										<div class="col-1 F seat">F3</div>
										<div class="col-1 F seat">F4</div>
										<div class="col-1 F seat">F5</div>
										<div class="col-1 F seat">F6</div>
										<div class="col-1 F seat">F7</div>
										<div class="col-1 F seat">F8</div>
										<div class="col-1 F seat">F9</div>
										<div class="col-1 F seat">F10</div>
										<div class="col-1 X seat" style="pointer-events: none;">-</div>
										<div class="col-1 X seat" style="pointer-events: none;">-</div>
									</div>
								</div>

								<div class="row">
									<div class="col-12" style="text-align: center;">
										<div class="col-1 F seat">F11</div>
										<div class="col-1 F seat">F12</div>
										<div class="col-1 F seat">F13</div>
										<div class="col-1 F seat">F14</div>
										<div class="col-1 F seat">F15</div>
										<div class="col-1 F seat">F16</div>
										<div class="col-1 F seat">F17</div>
										<div class="col-1 F seat">F18</div>
										<div class="col-1 F seat">F19</div>
										<div class="col-1 F seat">F20</div>
										<div class="col-1 X seat" style="pointer-events: none;">-</div>
										<div class="col-1 X seat" style="pointer-events: none;">-</div>
									</div>
								</div>

								<div class="row">
									<div class="col" style="text-align: center;">
										<div class="col-1 F seat">F21</div>
										<div class="col-1 F seat">F22</div>
										<div class="col-1 F seat">F23</div>
										<div class="col-1 F seat">F24</div>
										<div class="col-1 F seat">F25</div>
										<div class="col-1 F seat">F26</div>
										<div class="col-1 F seat">F27</div>
										<div class="col-1 F seat">F28</div>
										<div class="col-1 F seat">F29</div>
										<div class="col-1 F seat">F30</div>
										<div class="col-1 F seat">F31</div>
										<div class="col-1 F seat">F32</div>
									</div>
								</div>
							</div>

							<div class="G-seat all-seat"
								style="display: none; margin-top: 16%;" id="G">
								<p style="text-align: center;">[ 이마트바비큐존 ]</p>
								<div class="row">
									<div class="col-12" style="text-align: center;">
										<div class="col-1 G seat">G1</div>
										<div class="col-1 G seat">G2</div>
										<div class="col-1 G seat">G3</div>
										<div class="col-1 G seat">G4</div>
										<div class="col-1 G seat">G5</div>
										<div class="col-1 G seat">G6</div>
										<div class="col-1 G seat">G7</div>
										<div class="col-1 G seat">G8</div>
										<div class="col-1 G seat">G9</div>
										<div class="col-1 G seat">G10</div>
										<div class="col-1 G seat">G11</div>
										<div class="col-1 G seat">G12</div>
									</div>
								</div>

								<div class="row">
									<div class="col-12  " style="text-align: center;">
										<div class="col-1 G seat">G13</div>
										<div class="col-1 G seat">G14</div>
										<div class="col-1 G seat">G15</div>
										<div class="col-1 G seat">G16</div>
										<div class="col-1 G seat">G17</div>
										<div class="col-1 G seat">G18</div>
										<div class="col-1 G seat">G19</div>
										<div class="col-1 G seat">G20</div>
										<div class="col-1 G seat">G21</div>
										<div class="col-1 G seat">G22</div>
										<div class="col-1 G seat">G23</div>
										<div class="col-1 G seat">G24</div>
									</div>
								</div>

								<div class="row">
									<div class="col-12  " style="text-align: center;">
										<div class="col-1 G seat">G25</div>
										<div class="col-1 G seat">G26</div>
										<div class="col-1 G seat">G27</div>
										<div class="col-1 G seat">G28</div>
										<div class="col-1 G seat">G29</div>
										<div class="col-1 G seat">G30</div>
										<div class="col-1 G seat">G31</div>
										<div class="col-1 G seat">G32</div>
										<div class="col-1 G seat">G33</div>
										<div class="col-1 G seat">G34</div>
										<div class="col-1 G seat">G35</div>
										<div class="col-1 G seat">G36</div>
									</div>
								</div>

								<div class="row">
									<div class="col-12  " style="text-align: center;">
										<div class="col-1 G seat">G37</div>
										<div class="col-1 G seat">G38</div>
										<div class="col-1 G seat">G39</div>
										<div class="col-1 G seat">G40</div>
										<div class="col-1 G seat">G41</div>
										<div class="col-1 G seat">G42</div>
										<div class="col-1 G seat">G43</div>
										<div class="col-1 G seat">G44</div>
										<div class="col-1 G seat">G45</div>
										<div class="col-1 G seat">G46</div>
										<div class="col-1 G seat">G47</div>
										<div class="col-1 G seat">G48</div>
									</div>
								</div>

								<div class="row">
									<div class="col-12"
										style="text-align: center; margin-right: 16%;">
										<div class="col-1 G seat">G49</div>
										<div class="col-1 G seat">G50</div>
										<div class="col-1 G seat">G51</div>
										<div class="col-1 G seat">G52</div>
										<div class="col-1 G seat">G53</div>
										<div class="col-1 G seat">G54</div>
									</div>
								</div>
							</div>



							<div class="H-seat all-seat"
								style="display: none; margin-top: 15%;" id="H">
								<p style="text-align: center;">
									경기장 <br /> [ 미니SKY존 ]
								</p>

								<div class="row">
									<div class="col-12" style="text-align: center;">
										<div class="col-1 H seat">H1</div>
										<div class="col-1 H seat">H2</div>
										<div class="col-1 H seat">H3</div>
										<div class="col-1 H seat">H4</div>
										<div class="col-1 H seat">H5</div>
									</div>
								</div>

								<div class="row">
									<div class="col-12  " style="text-align: center;">
										<div class="col-1 H seat">H6</div>
										<div class="col-1 H seat">H7</div>
										<div class="col-1 H seat">H8</div>
										<div class="col-1 H seat">H9</div>
									</div>
								</div>

								<div class="row">
									<div class="col-12  " style="text-align: center;">
										<div class="col-1 H seat">H10</div>
										<div class="col-1 H seat">H11</div>
										<div class="col-1 H seat">H12</div>
										<div class="col-1 H seat">H13</div>
									</div>
								</div>
							</div>

							<div class="I-seat all-seat" style="display: none;">
								<p style="text-align: center; margin-top: 9%;" id="I">
									경기장 <br /> [ 탁자지정석 1층 ]
								</p>

								<div class="row">
									<div class="col-12  " style="text-align: center;">
										<div class="col-1 I seat">I1</div>
										<div class="col-1 I seat">I2</div>
										<div class="col-1 I seat">I3</div>
										<div class="col-1 I seat">I4</div>
										<div class="col-1 I seat">I5</div>
										<div class="col-1 I seat">I6</div>
										<div class="col-1 I seat">I7</div>
										<div class="col-1 I seat">I8</div>
										<div class="col-1 I seat">I9</div>
										<div class="col-1 I seat">I10</div>
										<div class="col-1 I seat">I11</div>
										<div class="col-1 I seat">I12</div>
									</div>
								</div>

								<div class="row">
									<div class="col-12  " style="text-align: center;">
										<div class="col-1 I seat">I13</div>
										<div class="col-1 I seat">I14</div>
										<div class="col-1 I seat">I15</div>
										<div class="col-1 I seat">I16</div>
										<div class="col-1 I seat">I17</div>
										<div class="col-1 I seat">I18</div>
										<div class="col-1 I seat">I19</div>
										<div class="col-1 I seat">I20</div>
										<div class="col-1 I seat">I21</div>
										<div class="col-1 I seat">I23</div>
										<div class="col-1 I seat">I24</div>
										<div class="col-1 I seat">I25</div>
									</div>
								</div>

								<div class="row">
									<div class="col-12  " style="text-align: center;">
										<div class="col-1 I seat">I26</div>
										<div class="col-1 I seat">I27</div>
										<div class="col-1 I seat">I28</div>
										<div class="col-1 I seat">I29</div>
										<div class="col-1 I seat">I30</div>
										<div class="col-1 I seat">I31</div>
										<div class="col-1 I seat">I32</div>
										<div class="col-1 I seat">I33</div>
										<div class="col-1 I seat">I34</div>
										<div class="col-1 I seat">I35</div>
										<div class="col-1 I seat">I36</div>
										<div class="col-1 I seat">I37</div>
									</div>
								</div>

								<div class="row">
									<div class="col-12  " style="text-align: center;">
										<div class="col-1 I seat">I38</div>
										<div class="col-1 I seat">I39</div>
										<div class="col-1 I seat">I40</div>
										<div class="col-1 I seat">I41</div>
										<div class="col-1 I seat">I42</div>
										<div class="col-1 X seat" style="pointer-events: none;">-</div>
										<div class="col-1 X seat" style="pointer-events: none;">-</div>
										<div class="col-1 I seat">I43</div>
										<div class="col-1 I seat">I44</div>
										<div class="col-1 I seat">I45</div>
										<div class="col-1 I seat">I46</div>
										<div class="col-1 I seat">I47</div>
									</div>
								</div>

								<div class="row">
									<div class="col-12  " style="text-align: center;">
										<div class="col-1 I seat">I48</div>
										<div class="col-1 I seat">I49</div>
										<div class="col-1 I seat">I50</div>
										<div class="col-1 I seat">I51</div>
										<div class="col-1 I seat">I52</div>
										<div class="col-1 X seat" style="pointer-events: none;">-</div>
										<div class="col-1 X seat" style="pointer-events: none;">-</div>
										<div class="col-1 I seat">I53</div>
										<div class="col-1 I seat">I54</div>
										<div class="col-1 I seat">I55</div>
										<div class="col-1 I seat">I56</div>
										<div class="col-1 I seat">I57</div>
									</div>
								</div>
							</div>

							<div class="J-seat all-seat"
								style="display: none; margin-top: 16%;" id="J">
								<p style="text-align: center;">
									경기장 <br /> [ 탁자지정석 2층 ]
								</p>
								<div class="row">
									<div class="col-12  " style="text-align: center;">
										<div class="col-1 J seat">J1</div>
										<div class="col-1 J seat">J2</div>
										<div class="col-1 J seat">J3</div>
										<div class="col-1 J seat">J4</div>
										<div class="col-1 J seat">J5</div>
										<div class="col-1 X seat" style="pointer-events: none;">-</div>
										<div class="col-1 X seat" style="pointer-events: none;">-</div>
										<div class="col-1 J seat">J6</div>
										<div class="col-1 J seat">J7</div>
										<div class="col-1 J seat">J8</div>
										<div class="col-1 J seat">J9</div>
										<div class="col-1 J seat">J10</div>
									</div>
								</div>

								<div class="row">
									<div class="col-12  " style="text-align: center;">
										<div class="col-1 J seat">J11</div>
										<div class="col-1 J seat">J12</div>
										<div class="col-1 J seat">J13</div>
										<div class="col-1 J seat">J14</div>
										<div class="col-1 J seat">J15</div>
										<div class="col-1 J seat">J16</div>
										<div class="col-1 J seat">J17</div>
										<div class="col-1 J seat">J18</div>
										<div class="col-1 J seat">J19</div>
										<div class="col-1 J seat">J20</div>
										<div class="col-1 J seat">J21</div>
										<div class="col-1 J seat">J22</div>
									</div>
								</div>

								<div class="row">
									<div class="col-12  " style="text-align: center;">
										<div class="col-1 J seat">J23</div>
										<div class="col-1 J seat">J24</div>
										<div class="col-1 J seat">J25</div>
										<div class="col-1 J seat">J26</div>
										<div class="col-1 J seat">J27</div>
										<div class="col-1 J seat">J28</div>
										<div class="col-1 J seat">J29</div>
										<div class="col-1 J seat">J30</div>
										<div class="col-1 J seat">J31</div>
										<div class="col-1 J seat">J32</div>
										<div class="col-1 J seat">J33</div>
										<div class="col-1 J seat">J34</div>
									</div>
								</div>

								<div class="row">
									<div class="col-12" style="text-align: center;">
										<div class="col-1 J seat">J37</div>
										<div class="col-1 J seat">J38</div>
										<div class="col-1 J seat">J39</div>
										<div class="col-1 J seat">J40</div>
										<div class="col-1 J seat">J41</div>
										<div class="col-1 J seat">J42</div>
										<div class="col-1 J seat">J43</div>
										<div class="col-1 J seat">J44</div>
										<div class="col-1 J seat">J45</div>
										<div class="col-1 J seat">J46</div>
										<div class="col-1 J seat">J47</div>
										<div class="col-1 J seat">J48</div>
									</div>
								</div>
							</div>

							<div class="K-seat all-seat"
								style="display: none; margin-top: 16%;" id="K">
								<p style="text-align: center;">
									경기장 <br /> [ 내야패밀리존 ]
								</p>
								<div class="row">
									<div class="col-12" style="text-align: center;">
										<div class="col-1 K seat">K1</div>
										<div class="col-1 K seat">K2</div>
										<div class="col-1 K seat">K3</div>
										<div class="col-1 K seat">K4</div>
										<div class="col-1 K seat">K5</div>
										<div class="col-1 K seat">K6</div>
										<div class="col-1 K seat">K7</div>
										<div class="col-1 K seat">K8</div>
										<div class="col-1 K seat">K9</div>
										<div class="col-1 K seat">K10</div>
										<div class="col-1 K seat">K11</div>
										<div class="col-1 K seat">K12</div>
									</div>
								</div>

								<div class="row">
									<div class="col-12  " style="text-align: center;">
										<div class="col-1 K seat">K13</div>
										<div class="col-1 K seat">K14</div>
										<div class="col-1 K seat">K15</div>
										<div class="col-1 K seat">K16</div>
										<div class="col-1 K seat">K17</div>
										<div class="col-1 K seat">K18</div>
										<div class="col-1 K seat">K19</div>
										<div class="col-1 K seat">K20</div>
										<div class="col-1 K seat">K21</div>
										<div class="col-1 K seat">K22</div>
										<div class="col-1 K seat">K23</div>
										<div class="col-1 K seat">K24</div>
									</div>
								</div>

								<div class="row">
									<div class="col-12  " style="text-align: center;">
										<div class="col-1 K seat">K25</div>
										<div class="col-1 K seat">K26</div>
										<div class="col-1 K seat">K27</div>
										<div class="col-1 K seat">K28</div>
										<div class="col-1 K seat">K29</div>
										<div class="col-1 K seat">K30</div>
										<div class="col-1 K seat">K31</div>
										<div class="col-1 K seat">K32</div>
										<div class="col-1 K seat">K33</div>
										<div class="col-1 K seat">K34</div>
										<div class="col-1 K seat">K35</div>
										<div class="col-1 K seat">K36</div>
									</div>
								</div>

								<div class="row">
									<div class="col-12" style="text-align: center;">
										<div class="col-1 K seat">K37</div>
										<div class="col-1 K seat">K38</div>
										<div class="col-1 K seat">K39</div>
										<div class="col-1 K seat">K40</div>
										<div class="col-1 K seat">K41</div>
										<div class="col-1 K seat">K42</div>
										<div class="col-1 K seat">K43</div>
										<div class="col-1 K seat">K44</div>
										<div class="col-1 K seat">K45</div>
										<div class="col-1 K seat">K46</div>
										<div class="col-1 K seat">K47</div>
										<div class="col-1 K seat">K48</div>
									</div>
								</div>
							</div>

							<div class="L-seat all-seat"
								style="display: none; margin-top: 16%;" id="L">
								<p style="text-align: center;">
									경기장 <br /> [ 외야패밀리존 ]
								</p>
								<div class="row">
									<div class="col-12" style="text-align: center;">
										<div class="col-1 L seat">L1</div>
										<div class="col-1 L seat">L2</div>
										<div class="col-1 L seat">L3</div>
										<div class="col-1 L seat">L4</div>
										<div class="col-1 L seat">L5</div>
										<div class="col-1 L seat">L6</div>
										<div class="col-1 L seat">L7</div>
										<div class="col-1 L seat">L8</div>
										<div class="col-1 L seat">L9</div>
										<div class="col-1 L seat">L10</div>
										<div class="col-1 L seat">L11</div>
										<div class="col-1 L seat">L12</div>
									</div>
								</div>

								<div class="row">
									<div class="col-12  " style="text-align: center;">
										<div class="col-1 L seat">L13</div>
										<div class="col-1 L seat">L14</div>
										<div class="col-1 L seat">L15</div>
										<div class="col-1 L seat">L16</div>
										<div class="col-1 L seat">L17</div>
										<div class="col-1 L seat">L18</div>
										<div class="col-1 L seat">L19</div>
										<div class="col-1 L seat">L20</div>
										<div class="col-1 L seat">L21</div>
										<div class="col-1 L seat">L22</div>
										<div class="col-1 L seat">L23</div>
										<div class="col-1 L seat">L24</div>
									</div>
								</div>

								<div class="row">
									<div class="col-12  " style="text-align: center;">
										<div class="col-1 L seat">L25</div>
										<div class="col-1 L seat">L26</div>
										<div class="col-1 L seat">L27</div>
										<div class="col-1 L seat">L28</div>
										<div class="col-1 L seat">L29</div>
										<div class="col-1 L seat">L30</div>
										<div class="col-1 L seat">L31</div>
										<div class="col-1 L seat">L32</div>
										<div class="col-1 L seat">L33</div>
										<div class="col-1 L seat">L34</div>
										<div class="col-1 L seat">L35</div>
										<div class="col-1 L seat">L36</div>
									</div>
								</div>

								<div class="row">
									<div class="col-12  " style="text-align: center;">
										<div class="col-1 L seat">L37</div>
										<div class="col-1 L seat">L38</div>
										<div class="col-1 L seat">L39</div>
										<div class="col-1 L seat">L40</div>
										<div class="col-1 L seat">L41</div>
										<div class="col-1 L seat">L42</div>
										<div class="col-1 L seat">L43</div>
										<div class="col-1 L seat">L44</div>
										<div class="col-1 L seat">L45</div>
										<div class="col-1 L seat">L46</div>
										<div class="col-1 L seat">L47</div>
										<div class="col-1 L seat">L48</div>
									</div>
								</div>

								<div class="row">
									<div class="col-12"
										style="text-align: center; margin-right: 16%;">
										<div class="col-1 L seat">L49</div>
										<div class="col-1 L seat">L50</div>
										<div class="col-1 L seat">L51</div>
										<div class="col-1 L seat">L52</div>
										<div class="col-1 L seat">L53</div>
										<div class="col-1 L seat">L54</div>
									</div>
								</div>
							</div>


							<div class="M-seat all-seat"
								style="display: none; margin-top: 16%;" id="M">
								<p style="text-align: center;">
									경기장 <br /> [ 홈런커플존 ]
								</p>
								<div class="row">
									<div class="col-12  " style="text-align: center;">
										<div class="col-2 M seat">M1</div>
										<div class="col-2 M seat">M2</div>
										<div class="col-2 M seat">M3</div>
										<div class="col-2 M seat">M4</div>
										<div class="col-2 M seat">M5</div>
										<div class="col-2 M seat">M6</div>
									</div>
								</div>

								<div class="row">
									<div class="col-12  " style="text-align: center;">
										<div class="col-2 M seat">M7</div>
										<div class="col-2 M seat">M8</div>
										<div class="col-2 M seat">M9</div>
										<div class="col-2 M seat">M10</div>
										<div class="col-2 M seat">M11</div>
										<div class="col-2 M seat">M12</div>
									</div>
								</div>

								<div class="row">
									<div class="col-12  " style="text-align: center;">
										<div class="col-2 M seat">M13</div>
										<div class="col-2 M seat">M14</div>
										<div class="col-2 M seat">M15</div>
										<div class="col-2 M seat">M16</div>
										<div class="col-2 M seat">M17</div>
										<div class="col-2 M seat">M18</div>
									</div>
								</div>

								<div class="row">
									<div class="col-12  " style="text-align: center;">
										<div class="col-2 M seat">M19</div>
										<div class="col-2 M seat">M20</div>
										<div class="col-2 M seat">M21</div>
										<div class="col-2 M seat">M22</div>
										<div class="col-2 M seat">M23</div>
										<div class="col-2 M seat">M24</div>
									</div>
								</div>

								<div class="row">
									<div class="col-12  " style="text-align: center;">
										<div class="col-2 M seat">F25</div>
										<div class="col-2 M seat">F26</div>
										<div class="col-2 M seat">F27</div>
										<div class="col-2 M seat">F28</div>
										<div class="col-2 M seat">F29</div>
										<div class="col-2 M seat">F30</div>
									</div>
								</div>
							</div>

							<div class="N-seat all-seat"
								style="display: none; margin-top: 16%;" id="N">
								<p style="text-align: center;">
									경기장 <br /> [ 초가정자 ]
								</p>
								<div class="row">
									<div class="col-12  " style="text-align: center;">
										<div class="col-6 N seat">N1</div>
										<div class="col-6 N seat">N2</div>

									</div>
								</div>
							</div>

							<div class="O-seat all-seat"
								style="display: none; margin-top: 16%;" id="O">
								<p style="text-align: center;">
									경기장 <br /> [ 이마트프랜들리존 ]
								</p>
								<div class="row">
									<div class="col-12  " style="text-align: center;">
										<div class="col-2 O seat">O1</div>
										<div class="col-2 O seat">O2</div>
										<div class="col-2 O seat">O3</div>
										<div class="col-2 O seat">O4</div>
										<div class="col-2 O seat">O5</div>
										<div class="col-2 O seat">O6</div>
										<div class="col-2 O seat">O7</div>
										<div class="col-2 O seat">O8</div>
										<div class="col-2 O seat">O9</div>
										<div class="col-2 O seat">O10</div>
									</div>
								</div>

								<div class="row">
									<div class="col-12  " style="text-align: center;">
										<div class="col-2 O seat">O11</div>
										<div class="col-2 O seat">O12</div>
										<div class="col-2 O seat">O13</div>
										<div class="col-2 O seat">O14</div>
										<div class="col-2 O seat">O15</div>
										<div class="col-2 O seat">O16</div>

									</div>
								</div>

								<div class="row">
									<div class="col-12  " style="text-align: center;">
										<div class="col-2 O seat">O17</div>
										<div class="col-2 O seat">O18</div>
										<div class="col-2 O seat">O19</div>
										<div class="col-2 O seat">O20</div>
										<div class="col-2 O seat">O21</div>
										<div class="col-2 O seat">O22</div>
									</div>
								</div>

								<div class="row">
									<div class="col-12  " style="text-align: center;">
										<div class="col-2 O seat">O23</div>
										<div class="col-2 O seat">O24</div>
										<div class="col-2 O seat">O25</div>
										<div class="col-2 O seat">O26</div>
										<div class="col-2 O seat">O27</div>
										<div class="col-2 O seat">O28</div>
									</div>
								</div>

								<div class="row">
									<div class="col-12  " style="text-align: center;">
										<div class="col-2 O seat">O29</div>
										<div class="col-2 O seat">O30</div>
										<div class="col-2 O seat">O31</div>
										<div class="col-2 O seat">O32</div>
										<div class="col-2 O seat">O33</div>
										<div class="col-2 O seat">O34</div>
										<div class="col-2 O seat">O35</div>
										<div class="col-2 O seat">O36</div>
										<div class="col-2 O seat">O37</div>
										<div class="col-2 O seat">O38</div>
									</div>
								</div>
							</div>

							<div class="P-seat all-seat"
								style="display: none; margin-top: 18%;" id="P">
								<p style="text-align: center;">
									경기장 <br /> [ 스카이박스 ]
								</p>

								<div class="row">
									<div class="col-12" style="text-align: center;">
										<div class="col-1 P seat">P1</div>
										<div class="col-1 P seat">P2</div>
										<div class="col-1 P seat">P3</div>
										<div class="col-1 P seat">P4</div>
										<div class="col-1 P seat">P5</div>
									</div>
								</div>

								<div class="row">
									<div class="col-12  " style="text-align: center;">
										<div class="col-1 P seat">P6</div>
										<div class="col-1 P seat">P7</div>
										<div class="col-1 P seat">P8</div>
										<div class="col-1 P seat">P9</div>
									</div>
								</div>

								<div class="row">
									<div class="col-12  " style="text-align: center;">
										<div class="col-1 P seat">P10</div>
										<div class="col-1 P seat">P11</div>
										<div class="col-1 P seat">P12</div>
										<div class="col-1 P seat">P13</div>
									</div>
								</div>
							</div>

							<div class="Q-seat all-seat"
								style="display: none; margin-top: 18%;" id="Q">
								<p style="text-align: center;">
									경기장 <br /> [ 응원 지정석 ]
								</p>

								<div class="row">
									<div class="col-12" style="text-align: center;">
										<div class="col-1 Q seat">Q1</div>
										<div class="col-1 Q seat">Q2</div>
										<div class="col-1 Q seat">Q3</div>
										<div class="col-1 Q seat">Q4</div>
										<div class="col-1 Q seat">Q5</div>
										<div class="col-1 Q seat">Q6</div>
										<div class="col-1 Q seat">Q7</div>
										<div class="col-1 Q seat">Q8</div>
									</div>
								</div>

								<div class="row">
									<div class="col-12  " style="text-align: center;">
										<div class="col-1 Q seat">Q9</div>
										<div class="col-1 Q seat">Q10</div>
										<div class="col-1 Q seat">Q11</div>
										<div class="col-1 Q seat">Q12</div>
										<div class="col-1 Q seat">Q13</div>
										<div class="col-1 Q seat">Q14</div>
									</div>
								</div>

								<div class="row">
									<div class="col-12  " style="text-align: center;">
										<div class="col-1 R seat">R15</div>
										<div class="col-1 R seat">R16</div>
										<div class="col-1 R seat">R17</div>
										<div class="col-1 R seat">R18</div>
										<div class="col-1 R seat">R19</div>
										<div class="col-1 R seat">R20</div>
										<div class="col-1 R seat">R21</div>
										<div class="col-1 R seat">R22</div>
									</div>
								</div>
							</div>

							<div class="R-seat all-seat"
								style="display: none; margin-top: 25%;" id="R">
								<p style="text-align: center;">
									경기장 <br /> [ 응원 지정석 ]
								</p>

								<div class="row">
									<div class="col-12" style="text-align: center;">
										<div class="col-1 R seat">R1</div>
										<div class="col-1 R seat">R2</div>
										<div class="col-1 R seat">R3</div>
										<div class="col-1 R seat">R4</div>
										<div class="col-1 R seat">R5</div>
										<div class="col-1 R seat">R6</div>
										<div class="col-1 R seat">R7</div>
										<div class="col-1 R seat">R8</div>
									</div>
								</div>

								<div class="row">
									<div class="col-12  " style="text-align: center;">
										<div class="col-1 R seat">R9</div>
										<div class="col-1 R seat">R10</div>
										<div class="col-1 R seat">R11</div>
										<div class="col-1 R seat">R12</div>
										<div class="col-1 R seat">R13</div>
										<div class="col-1 R seat">R14</div>
									</div>
								</div>

								<div class="row">
									<div class="col-12  " style="text-align: center;">
										<div class="col-1 R seat">R15</div>
										<div class="col-1 R seat">R16</div>
										<div class="col-1 R seat">R17</div>
										<div class="col-1 R seat">R18</div>
										<div class="col-1 R seat">R19</div>
										<div class="col-1 R seat">R20</div>
										<div class="col-1 R seat">R21</div>
										<div class="col-1 R seat">R22</div>
										<div class="col-1 R seat">R23</div>
										<div class="col-1 R seat">R24</div>
									</div>
								</div>
							</div>



						</section>

						<div class="col-4 border " id="selectSeat"
							style="margin: auto; text-align: center">
							<aside class="col-lg-1 "></aside>
							<br />

							<h4>
								<b>"</b><span><b>_______</b></span><b>"</b> 회원님께서
							</h4>

							<br /> <br /> 선택하신 존은 <br /> <span id="SeatCheck0"
								style="font-size: 26px;"><b>--</b></span> <br /> 입니다. <br /> <br />
							입력하신 좌석은 <br /> <span id="SeatCheck1" style="font-size: 26px;"></span>
							<b>번</b> <br /> 입니다. <br />

							<p class="card-text" style="display: none;">
								수량 : <input type="number" min="1" max="20" id="quan" />
							</p>

							<br /> 총 금액은 <br /> <span id="SeatCheck3"></span> <b>원</b> <br />
							입니다. <br /> <br /> <br />

							<div class="row">
								<!-- Modal -->
								<div class="modal fade" id="viewModal" tabindex="-1"
									role="dialog" aria-labelledby="viewModal" aria-hidden="true">
									<div class="modal-dialog" style="margin-top: 10%;">
										<div class="modal-content">
											<div class="modal-header">
												<button type="button" class="close" data-dismiss="modal"
													aria-label="Close">
													<span aria-hidden="true">&times;</span>
												</button>

											</div>
											<div class="modal-body" id="modal"
												style="text-align: center;">
												<h3>정면 뷰</h3>
												<img src="/baseball/resources/images/ticketing/mid_view.png"
													width="100%">
											</div>
										</div>
									</div>
								</div>
							</div>

							<button class="views" data-toggle="modal"
								data-target="#viewModal">좌석뷰 확인하기</button>

							<br />

							<button class="cash" id="payBtn">결제하기</button>

							<button class="cash" id="deleteBtn">취소하기</button>

							<br /> <br />
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 
	<form id="goahead" action="/baseball/InsertT.do" method="post" >
	<input type="hidden" value=<%=chk %> name="price">
	</form>
	 -->
	

	<aside class="col-lg-1"></aside>
</div>
<br />
<br />
<br />
<br />

<%@ include file="/views/common/footer.jsp"%>

<script type="text/javascript"
	src="https://service.iamport.kr/js/iamport.payment-1.1.5.js"></script>

<script>
	var date = new Date();
	var isWeekend = (date.getDay() == 0 || date.getDay() == 6) ? true : false;
	var price = 0;

	// -- test -- //

	var strong = document.getElementById('SeatCheck1').innerText;
	console.log(strong);

	var strcount = strong.split(',');
	var count = strcount.length;
	console.log(count);

	// -- test -- //

	$('#Move1').on('click', function() {
		$(".all-seat").hide();
		$(".A-seat").show();

		document.getElementById('SeatCheck0').innerHTML = "행복라이브존";
		if (isWeekend == true) {
			price += 60000;
			document.getElementById('SeatCheck3').innerText = "60000" * count;
		} else {
			price += 47000;
			document.getElementById('SeatCheck3').innerText = "47000" * count;
		}
	});

	$('#Move2').on('click', function() {
		$(".all-seat").hide();
		$(".B-seat").show();

		document.getElementById('SeatCheck0').innerHTML = "의자지정석";
		if (isWeekend == true) {
			price += 18000;
		} else {
			price += 13500;
		}
	});

	$('#Move3').on('click', function() {
		$(".all-seat").hide();
		$(".C-seat").show();

		document.getElementById('SeatCheck0').innerHTML = "OPEN바베이큐존";
		if (isWeekend == true) {
			price += 162000;
		} else {
			price += 126000;
		}
	});

	$('#Move4').on('click', function() {
		$(".all-seat").hide();
		$(".D-seat").show();

		document.getElementById('SeatCheck0').innerHTML = "SKY탁자석";
		if (isWeekend == true) {
			price += 20000;
		} else {
			price += 14000;
		}
	});

	$('#Move5').on('click', function() {
		$(".all-seat").hide();
		$(".E-seat").show();

		document.getElementById('SeatCheck0').innerHTML = "드림라이브존";
		if (isWeekend == true) {
			price += 55000;
		} else {
			price += 42000;
		}
	});

	$('#Move6').on('click', function() {
		$(".all-seat").hide();
		$(".F-seat").show();

		document.getElementById('SeatCheck0').innerHTML = "T그린존";
		if (isWeekend == true) {
			price += 14000;
		} else {
			price += 10500;
		}
	});

	$('#Move7').on('click', function() {
		$(".all-seat").hide();
		$(".G-seat").show();

		document.getElementById('SeatCheck0').innerHTML = "이마트바비큐존";
		if (isWeekend == true) {
			price += 22000;
		} else {
			price += 19000;
		}
	});

	// --------------- don't touch ------------------------ //

	$('#Move8').on('click', function() {
		$(".all-seat").hide();
		$(".H-seat").show();

		document.getElementById('SeatCheck0').innerHTML = "미니스카이박스";
		if (isWeekend == true) {
			price += 360000;
		} else {
			price += 252000;
		}
	});

	$('#Move9').on('click', function() {
		$(".all-seat").hide();
		$(".I-seat").show();

		document.getElementById('SeatCheck0').innerHTML = "탁자지정석(1층)";
		if (isWeekend == true) {
			price += 42000;
		} else {
			price += 34500;
		}
	});

	$('#Move10').on('click', function() {
		$(".all-seat").hide();
		$(".J-seat").show();

		document.getElementById('SeatCheck0').innerHTML = "탁자지정석(2층)";
		if (isWeekend == true) {
			price += 33000;
		} else {
			price += 28000;
		}
	});

	$('#Move11').on('click', function() {
		$(".all-seat").hide();
		$(".K-seat").show();

		document.getElementById('SeatCheck0').innerHTML = "내야패밀리존";
		if (isWeekend == true) {
			price += 165000;
		} else {
			price += 130000;
		}
	});

	$('#Move12').on('click', function() {
		$(".all-seat").hide();
		$(".L-seat").show();

		document.getElementById('SeatCheck0').innerHTML = "외야패밀리존";
		if (isWeekend == true) {
			price += 110000;
		} else {
			price += 80000;
		}
	});

	$('#Move13').on('click', function() {
		$(".all-seat").hide();
		$(".M-seat").show();

		document.getElementById('SeatCheck0').innerHTML = "홈런커플존";
		if (isWeekend == true) {
			price += 41000;
		} else {
			price += 32000;
		}
	});

	//--------------- don't touch ------------------------ //

	$('#Move14').on('click', function() {
		$(".all-seat").hide();
		$(".N-seat").show();

		document.getElementById('SeatCheck0').innerHTML = "초가정자";
		if (isWeekend == true) {
			price += 109000;
		} else {
			price += 101000;
		}
	});

	$('#Move15').on('click', function() {
		$(".all-seat").hide();
		$(".O-seat").show();

		document.getElementById('SeatCheck0').innerHTML = "이마트프랜들리존";
		if (isWeekend == true) {
			price += 22000;
		} else {
			price += 19000;
		}
	});

	$('#Move16').on('click', function() {
		$(".all-seat").hide();
		$(".P-seat").show();

		document.getElementById('SeatCheck0').innerHTML = "스카이박스";
		if (isWeekend == true) {
			price += 732000;
		} else {
			price += 700000;
		}
	});

	$('#Move17').on('click', function() {
		$(".all-seat").hide();
		$(".Q-seat").show();

		document.getElementById('SeatCheck0').innerHTML = "응원 지정석";
		if (isWeekend == true) {
			price += 15000;
		} else {
			price += 11500;
		}
	});

	$('#Move18').on('click', function() {
		$(".all-seat").hide();
		$(".R-seat").show();

		document.getElementById('SeatCheck0').innerHTML = "로케트배터리 와야파티덱";
		if (isWeekend == true) {
			price += 120000;
		} else {
			price += 96000;
		}
	});

	var IMP = window.IMP;

	$(function() {
		IMP.init('imp66702050');
	});

	$('#payBtn').on('click', function() {
		var name = $('#SeatCheck0').text() + ' - ' + $('#SeatCheck1').text();

		// --- test --- //

		var str = document.getElementById('SeatCheck1').innerText;
		console.log(str);

		var strcount = str.split(',');
		var count = strcount.length;
		console.log(count);

		// --- test --- //
		console.log("확인");
		IMP.request_pay({
					pg : 'kakao',
				    pay_method : 'card',
				    merchant_uid : 'merchant_' + new Date().getTime(),//결제가 된 적이 있는 merchant_uid로는 재결제 불가
					name : '주문명:' + $('#pname').text(),
					amount : price * parseInt(count),
																//buyer_email : 'test@example.com',
					// seat으로 슥삭
					buyer_name : '창원NC파크',
																//buyer_tel : '010-1111-2222',
					// stadium로 슥삭
					buyer_addr : '서울시 강남구 역삼동',
																//buyer_postcode : '01234'
		}, function(rsp) {
			if (rsp.success) {
				$.ajax({
					url : "/baseball/orderconfirm.do", //cross-domain error가 발생하지 않도록 동일한 도메인으로 전송
					type : 'POST',
					dataType : 'json',
					data : {
						// 서블릿에서 받을 값들 적으세요
						// rsp. 으로 시작하는 건 iamport에서 주는 값
						// https://github.com/iamport/iamport-manual/blob/master/%EC%9D%B8%EC%A6%9D%EA%B2%B0%EC%A0%9C/README.md#211-param-%EC%86%8D%EC%84%B1%EA%B3%B5%ED%86%B5-%EC%86%8D%EC%84%B1
						// 필요 없다면 지우시고, 원하는 값 넣으시면 됩니다.
						imp_uid : rsp.imp_uid,
						pay_method : rsp.pay_method,
						pri : rsp.paid_amount,
						status : rsp.status,
						title : rsp.name,
						pg_tid : rsp.pg_tid,
						buyer_name : rsp.buyer_name,
						//결제 승인 시각
						paid_at : rsp.paid_at,
						//receipt_url : rsp.receipt_url	
					}
				});
				
				// 찾았다 네이놈!!!!!!!! 여기서 db로 쏩시다!!
				//console.log(rsp.paid_amount);
				/*
				chk=Integer.parseInt(rsp.paid_amount);
				$("#goahead").submit();
				*/
				
				location.href = "/baseball/views/ticketing/orderConfirm.jsp?item=ticket&pay_method="+rsp.pay_method
				+ "&nick="+rsp.buyer_name 
				+"&date="+rsp.paid_at+"&pri="+rsp.paid_amount;
				

			} else {
				var msg = '결제에 실패하였습니다.';
				msg += '\n에러내용 : ' + rsp.error_msg;
				alert(msg);
			}
		});

	});
</script>


</html>