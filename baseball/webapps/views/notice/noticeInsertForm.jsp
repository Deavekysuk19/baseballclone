<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name ="viewport" content ="width=device-width, initial-scale=1">
<script src="/baseball/resources/js/jquery-2.2.4.js"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
    crossorigin="anonymous">
    <style>
button {
   	background : lightgray;
 	border : 1px solid black;
    -webkit-border-radius: 30px;
    -moz-border-radius: 30px;
    border-radius: 30px;
 
</style>

<title>야구야 놀자!</title>
</head>

<%@ include file="../common/header.jsp" %>
	 <%-- <% if(m != null && m.getUserId().equals("admin")) { %> --%>
	<div class="outer">
		<br>
		<h2 align="center">공지 사항 작성</h2>
		<div class="tableArea">
			<form action="<%= request.getContextPath() %>/nInsert.no" method="post">
				<table align="center">
					<tr>
						<td>제목 </td>
						<td colspan="3"><input type="text" size="50" name="title"></td>
					</tr>
					<tr><td><br></td></tr>
					<tr>
						<td>작성자 </td>
						<td>
							<input type="text" name="writer" value="<%=m.getUserid() %>"readonly="readonly" >
						</td>
					</tr>
					<tr>
						<td>내용 </td>
					</tr>
					<tr>
						<td colspan="4">
							<textarea name="content" cols="60" rows="15" style="resize:none;"></textarea>
						</td>
					</tr>
				</table>
				<br>
				<div align="center">
					<button type="submit">등록하기</button>&nbsp;&nbsp;
					<button type="reset" onclick="location.href='/baseball/views/notice/noticeList.jsp'">취소하기</button>
					
				</div>
				
			</form>
			
		</div>
	</div>

	<%@ include file="../common/footer.jsp" %>

</html>