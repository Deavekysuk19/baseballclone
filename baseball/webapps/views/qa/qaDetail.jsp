<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.QA.model.vo.*"%>
<%
	QA q = (QA)request.getAttribute("qa");
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
	<br>
            <h2 class="col" style="text-align:center">Q&A내용</h2>

         <aside class="col-1"></aside>
     	
     	 <div class="row">
        
         <aside class="col-3"></aside>
           
         <section class="col-6">
			<div class="row">
            	<div class="col" style="align:center">
                   <div class="row">
                       <div class="col" style="font-size: medium;">
                           <b>제목 :</b>
                              <span>
                               <%= q.getQtitle() %>   
                              </span>
                        </div>
                    </div>
                    <br style="margin-top: -1%;" />

                    <div>
                         <div class="row">
                             <div class="col-5" style="font-size: medium;">
                                 <b>작성자 :</b>
                                     <span value="<%= q.getQwriter() %>" readonly="readonly">
                                      </span>
                               </div>
                              
                             <div class="col-4" style="font-size: medium;">
                                 <b>작성일 :</b>
                                    <span>
                                      <%= q.getQdate() %>  
                                     </span>
                             </div>
                             <div class="col-3" style="font-size: medium;">
                                  <b>조회수 :</b>
                                     <span>
                                        <%= q.getQcount()%>
                                     </span>
                              </div>
                          <br style="margin-top: -1%;" />
  
                          <textarea class="col-12 border" 
                               style="width: 100%; height:500px; resize:none;" >
                               <%= q.getQcontent()%>   
                                       
                            </textarea>
                        </div>
               		</div>
			 </div>
			 </div>
        </section>
            <aside class="col-3"></aside>
        </div>

        <div class="row">
            <aside class="col-3"></aside>
            <section class="col-6   ">

                <div style="margin: auto;" align="center" >
                    <br />
					<button onclick="location.href='selectList.qa'">메뉴로 돌아가기</button>
					 <% if( m != null && m.getUserid().equals(q.getQwriter())) { %>
						<button onclick="location.href='qUpView.qa?qno=<%=q.getQno()%>'">수정하기</button>
  						<% } %>
					
		       </div>
            </section>
            <aside class="col-1 "></aside>
        </div>
        <br><br>
	<%@ include file="../common/footer.jsp" %>

</html>