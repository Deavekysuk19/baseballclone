<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, com.ticket.model.vo.*"%>

<% ArrayList<Ticket> list = (ArrayList<Ticket>)request.getAttribute("list"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예매 확인</title> 
<script src="<%= request.getContextPath() %>/resources/js/jquery-2.2.4.js"></script>
             <!--  /myWeb : 나중에 바뀌면, 얘도 자동으로 바뀜 -->
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
           
<style>
/* 	.outer{
		width:800px;
		height:500px;
		background:black;
		color:white;
		margin-left:auto;
		margin-right:auto;
		margin-top:50px;
	} */
	table {
		border:1px solid white;
		text-align:center;
	}
	.tableArea {
		width:700px;
		height:350px;
		margin-left:auto;
		margin-right:auto;
	}
</style>
<%@ include file="/views/common/header.jsp"%>
</head>
<body>
	<div class="outer">
		<br>
		<h2 align="center">구매 티켓</h2>
		<div class="tableArea">
			<table align="center" id="listArea">
			<tr>
				<th width="100px">티켓번호</th>
				<th width="100px">좌석번호</th>
				<th width="100px">사용자번호</th>
				<th width="100px">날짜</th>
				<th width="100px">결제 가격</th>
				<th width="200px">구장 이름</th>
			</tr>
			<% for(Ticket t : list){ %>
			<tr>
				<td><%= t.getTicketNo() %></td>
				<td><%= t.getSeat() %></td>
				<td><%= t.getUserNo() %></td>
				<td><%= t.getDay() %></td>
				<td><%= t.getPrice() %></td>
				<td><%= t.getStadium() %></td>
			</tr>
			<% } %>
			</table>
			
		</div>
		<div align="center">
			<button onclick="location.href='/baseball/index.jsp'">메인화면으로 돌아가기</button>	
			<br />
			<br />
			<br /><br />
			<br />
			<br />
		</div>
	</div>
	<%@ include file="/views/common/footer.jsp"%>
	<script>  
		
		
	</script>
</body>
</html>