<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="com.board.model.vo.*, java.util.*, com.common.*"%>
<%
	ArrayList<Board> list = (ArrayList<Board>) request.getAttribute("list");
	PageInfo pi = (PageInfo) request.getAttribute("pi");
	Search s = (Search)request.getAttribute("s"); 
	int listCount = pi.getListCount();
	int currentPage = pi.getCurrentPage();
	int maxPage = pi.getMaxPage();
	int startPage = pi.getStartPage();
	int endPage = pi.getEndPage();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
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
<title>야구야 놀자!</title>

<style>

	th{
		text-align:center;
	}
	td{
		height :40px;
		text-align:center;
	}
	

button {
   	background : lightgray;
 	border : 1px solid black;
    -webkit-border-radius: 30px;
    -moz-border-radius: 30px;
    border-radius: 30px;
 }
	#searchCondition{
	 -webkit-border-radius: 30px;
    -moz-border-radius: 30px;
    border-radius: 30px;
	}
	#keyword{
	 -webkit-border-radius: 30px;
    -moz-border-radius: 30px;
    border-radius: 30px;
	}
 

	
</style>
</head>

<div><%@ include file="../common/header.jsp"%>
</div>
<br />
<h1 style="position: absolute; color:orange;
	 margin-top: 10%; margin-left: 38%;"> </h1>
 <img class="container-fluid" src="/baseball/resources/images/view.png" alt="">
  
<br>
<br>
<div class="row">
	<div class="mx-auto" id="tableArea">
		<table align="center" id="listArea">
		<!-- style="border: 1px dotted white;
    		    border-bottom: 1px solid gray;" 
    		     -->
			<tr style =" background:gray; color:white;">

				<th width="150px">글번호</th>
				<th width="200px">구단</th>
				<th width="300px">글제목</th>
				<th width="200px">작성자</th>
				<th width="100px">조회수</th>
				<th width="300px">작성일</th>
			</tr>
			<%
				for (Board b : list) {
			%>
			<tr>
				
				<td><%=b.getBno()%></td>
				<td><%=b.getBteamname()%></td>
				<td><%=b.getBtitle()%></td>
				<td><%=b.getBwriter()%></td>
				<td><%=b.getBcount()%></td>
				<td><%=b.getBdate()%></td>

			</tr>
			<%
				}
			%>

		</table>
	</div>
</div>
<br>
<br>
<br>
<br />
<br />
<br />
<br />

<% String pageURL =   request.getContextPath() + "/selectList.cb?con=" + s.getCondition() + "&keyword=" + s.getKeyword() + "&currentPage="; %>

<%-- 페이지 처리 --%>
<div class="pagingArea" align="center">
	<button
		onclick="location.href='<%= pageURL %>1'"><<</button>
	<%
		if (currentPage <= 1) {
	%>
	<button disabled><</button>
	<%
		} else {
	%>
	<button
		onclick="location.href='<%= pageURL + (currentPage - 1) %>'"><</button>
	<%
		}
	%>

	<%
		for (int p = startPage; p <= endPage; p++) {
			if (p == currentPage) {
	%>
	<button disabled><%=p%></button>
	<%
		} else {
	%>
	<button
		onclick="location.href='<%= pageURL + p %>'"><%=p%></button>
	<%
		}
	%>
	<%
		}
	%>

	<%
		if (currentPage >= maxPage) {
	%>
	<button disabled>></button>
	<%
		} else {
	%>
	<button onclick="location.href='<%= pageURL  +(currentPage + 1) %>'">></button>

	<%
		}
	%>
	<button onclick="location.href='<%= pageURL  + maxPage %>'">>></button>
   

</div>
<br>
<div class="searchArea" align="center">
	<select id="searchCondition" name="searchCondition">
		<option value="writer">작성자</option>
		<option value="team">구단</option>
		<option value="title">제목</option>
		<option value="content">내용</option>
	</select>&nbsp;&nbsp; <input type="search" id="keyword" placeholder="키워드를 입력하세요!">
	&nbsp;
	<button type="button" onclick="search();" style="color:white; background:gray;" >검색하기</button>
	&nbsp;&nbsp; 
	<% if(m != null ){ %>
	<button onclick="location.href='views/board/bInsert.jsp'">작성하기</button>
	<% } %>

</div>
	<script>
		$(function(){
			$("#listArea td").mouseenter(function(){
				$(this).parent().css({"background":"ligthgray", "cursor":"pointer"});
			}).mouseout(function(){
				$(this).parent().css({"background":"white"});
			}).click(function(){
				/* var bno = $(this).parent().find("input").val(); */ 
				var bno = $(this).parent().children().eq(0).text();
				location.href="<%=request.getContextPath()%>/selectOne.cb?bno=" + bno;
			});
		});
		
		function search(){
			location.href="<%=request.getContextPath()%>/selectList.cb?con="
					+ $('#searchCondition').val() + "&keyword="
					+ $('#keyword').val();
		}
	</script>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<%@ include file="../common/footer.jsp"%>
</html>