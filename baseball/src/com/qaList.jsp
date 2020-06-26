<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, com.QA.model.vo.*, com.common.*"%>    
<% ArrayList<QA> list = (ArrayList<QA>)request.getAttribute("list");
	PageInfo pi = (PageInfo)request.getAttribute("pi");
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
<meta name ="viewport" content ="width=device-width, initial-scale=1">
<script src="/baseball/resources/js/jquery-2.2.4.js"></script> 
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
    crossorigin="anonymous">
<title>Q&A</title>

 <%-- <script src="<%= request.getContextPath() %>/resources/js/jquery-3.5.1.min.js"></script> 
 --%>
<style>
	h2{
		padding-top:3%
	}
	#tableArea{
            padding-top : 3%;
            width : 1000px;
            height: 400px;
            margin-left: 400px;
            margin-right: auto;
        }
   
</style>	
</head>


<div><%@ include file="../common/header.jsp" %> </div>
	
	<h2 align="center">Q&A</h2>
	<div class="row">
    	<div class="mx-auto" id= "tableArea">
        <table align="center" id="listArea">
			<tr>
				<th width ="100px">글번호</th>
				<th width="300px">글제목</th>
				<th width="150px">작성자</th>
				<th width="100px">조회수</th>
				<th width="150px">작성일</th>
			</tr>
			<% for(QA q : list){ %>
			<tr>
				<td><%= q.getQno() %></td>
				<td><%= q.getQtitle() %></td>
				<td><%= q.getQwriter() %></td>
				<td><%= q.getQcount() %></td>
				<td><%= q.getQdate() %></td>
			</tr>
			<% } %> 
		</table>
         </div>
	</div>
	 <br> <br> <br> <br>
	 
	 <% String pageURL =   request.getContextPath() + "/selectList.qa?con=" + s.getCondition() + "&keyword=" + s.getKeyword() + "&currentPage="; %>
	 
	 <%-- 페이지 처리 --%>
		<div class="pagingArea" align="center">
			<button onclick="location.href='<%= pageURL %>1'"><<</button>
			<%  if(currentPage <= 1){  %>
			<button disabled><</button>
			<%  }else{ %>
			<button onclick="location.href='<%= pageURL  +(currentPage - 1) %>'"><</button>
			<%  } %>
			
			<% for(int p = startPage; p <= endPage; p++){
					if(p == currentPage){	
			%>
				<button disabled><%= p %></button>
			<%      }else{ %>
				<button onclick="location.href='<%= pageURL  +  p %>'"><%= p %></button>
			<%      } %>
			<% } %>
				
			<%  if(currentPage >= maxPage){  %>
			<button disabled>></button>
			<%  }else{ %>
			<button onclick="location.href='<%= pageURL  +(currentPage + 1) %>'">></button>
			<%  } %>
			<button onclick="location.href='<%= pageURL  + maxPage %>'">>></button>
			
		</div>
   	<br> <br>
    <div class="searchArea" align="center">
     	
     	<select id="searchCondition" name="searchCondition">
         	<option value="writer">작성자</option>
            <option value="title">제목</option>
            <option value="content">내용</option>
        </select>
        
        <input type="search" id="keyword" placeholder="키워드를 입력하세요!">
        <button type="button" onclick="search();">검색하기</button>
        <button onclick="location.href='/baseball/views/qa/qaInsertForm.jsp'">작성하기</button>
           
      
    </div>
      
	<div>
	<br /><br /><br /><br /><br /><br /><br /><br />
	<br /><br /><br /><br />
	<%@ include file="../common/footer.jsp" %></div>
    
      <script>  
		$(function(){
			
			$("#listArea td").mouseenter(function(){
				$(this).parent().css({"background":"lightgray", "cursor":"pointer"});
			}).mouseout(function(){
				$(this).parent().css({"background":"white"});
			}).click(function(){
				var qno = $(this).parent().children().eq(0).text();
				location.href="<%=request.getContextPath()%>/selectOne.qa?qno=" + qno;
			});
		});
		
		function search(){
			location.href="<%=request.getContextPath()%>/searchQA.qa?con="+$('#searchCondition').val()+"&keyword="+$('#keyword').val();
		}
		
	</script>

</html>