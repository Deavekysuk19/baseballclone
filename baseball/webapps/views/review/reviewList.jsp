<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import ="java.util.*, com.review.model.vo.*"%>
<%
	ArrayList<Review> list
	= (ArrayList<Review>)request.getAttribute("list");
%>
<!doctype html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <!-- <meta name="viewport" content="width=device-width, initial-scale=1"> -->
<title>야구야 놀자!</title>>
    <meta name ="viewport" content ="width=device-width, initial-scale=1">
<script src="/baseball/resources/js/jquery-2.2.4.js"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
    crossorigin="anonymous">
    <style>
    .reviewArea{
    width: 1000px;
	height: 500px;
	margin-left: auto;
	margin-right: auto;
	/* border : 1px solid black; */
    }
    .r-list {
		width:220px;
		display:inline-block;
		margin:10px;
		align:center;
	}
    p { margin:20px 0px; } 
	

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
  <%@ include file="../common/header.jsp"%>
<div class="outer">
<br>

<h2 align="center">리뷰 게시판</h2>

	<div class="reviewArea">
			<% for(Review r : list) { %>
				<div class="r-list" align="center">
					<div>
						<input type="hidden" value="<%= r.getRno() %>">
						<img src="/baseball/resources/reviewUploadFiles/<%= r.getReviewfile() %>" 
						     width="200px" height="150px">
					</div>
					
					<p> <%=r.getRtitle() + "      " + r.getSno()%> <br>
						팀 : <%=r.getRteamname()+"    " + "작성자 :"+ r.getRwriter() %><br>
						<%=r.getRtitle() %>  조회수	: <%= r.getRcount() %>
					</p>
				</div>
			<% } %>
			</div>
			<script>
				$(function(){
					$('.r-list').click(function(){
							var rno = $(this).children().children().eq(0).val();
							location.href = "<%=request.getContextPath()%>/selectOne.rv?rno=" + rno;
					});
				});
			</script>
	<br><br><br><br><br><br>
	<div class="searchArea" align="center">
		<select id="searchCondition" name="searchCondition">
			<option value="writer">작성자</option>
			<option value="writer">팀명</option>
			<option value="title">제목</option>
			<option value="content">내용</option>
		</select>&nbsp;
		<input type="search"/ id="keyword"> &nbsp;
		<button type="submit">검색하기</button> &nbsp;
	  <% if(m != null){ %>
		<button onclick="location.href='views/review/reviewInsert.jsp'">작성하기</button>
		<%} %>
			
	</div>
	<br><br><br>
</div>
<%@ include file="../common/footer.jsp" %>

</html>