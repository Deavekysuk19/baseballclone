<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, com.review.model.vo.*"%>

<%
	Review r = (Review)request.getAttribute("review");
ArrayList<Attachment> fileList
= (ArrayList<Attachment>)request.getAttribute("fileList");
%>
<%

Attachment file1 = fileList.get(0);
Attachment file2 = fileList.get(1);
Attachment file3 = fileList.get(2); 

 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
<meta charset="UTF-8">
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
            <h3 class="col" style="text-align:center"> <%= r.getRtitle() %>  </h3>

         <aside class="col-1"></aside>
     	
     	 <div class="row">
        
         <aside class="col-3"></aside>
           
         <section class="col-6">
           <br>
			<div class="row">
            	<div class="col" style="align:center">
                  
                   <div class="row">
                   <br> 
                       <div class="col-5" style="font-size: medium;">
                           <b>작성자 :</b>
                             <span><%= r.getRwriter() %> 
                             </span>
                        </div>
                       
                        <div class="col-4" style="font-size: medium;">
                                 <b>팀명</b>
                                    <span>
                                      <%= r.getRteamname() %>  
                                     </span>
                         </div>
                             <div class="col-3" style="font-size: medium;">
                                  <b>좌석번호 :</b>
                                     <span>
                                        <%= r.getSno()%>
                                     </span>
                    
                    		</div>
                  	  <br style="margin-top: -1%;" />
                    </div>
<br>
               
                         <div class="row">
                             <div class="col-5" style="font-size: medium;">
                                 <b>작성일 :</b>
                                     <span ><%= r.getRdate() %>
                                      </span>
                               </div>
                              
                             <div class="col-4" style="font-size: medium;">
                                 <b>조회수 : </b>
                                    <span>
                                      <%= r.getRcount() %>  
                                     </span>
                             </div>
            			</div>
                       <br>
  						
  						  <div class="row">
                             <div class="col-5" >
                                 <div id="titleImgArea" align="center">
									<img  id="titleImg" style="height:300px; wieght:300px;" src="<%= request.getContextPath() %>/resources/reviewUploadFiles/<%= file1.getOriginname() %>">
								  </div>
                             </div>
                          </div>
            
                          <br style="margin-top: -1%;" />
                          
                           <%if(file2 !=null ||file3!=null){ %>
                    	 <div class="row">
                 
						<% if (file2.equals("null")) {%><%}else{ %>

							<div id="ImgArea" align="center">
							<img id="Img"  style="height:200px; wieght:200px;"src="<%= request.getContextPath() %>/resources/reviewUploadFiles/<%= file2.getOriginname() %>">
							</div>
						<%} %>
						
						<% if (file3.equals("null")) {%><%}else{ %>
									
							<div id="ImgArea" align="center">
							<img id="Img"  style="height:200px; wieght:200px;"src="<%= request.getContextPath() %>/resources/reviewUploadFiles/<%= file3.getOriginname() %>">
							</div>
						<%} %>
                   	</div><%} %>
  						
  						 <br><br>
                          <textarea class="col-12 border" 
                               style="width: 100%; height:200px; resize:none;" >
                               <%= r.getRcontent()%> 
                                       
                            </textarea>
				 </div>
			 </div>
        </section>
            <aside class="col-3"></aside>
        </div>

        <div class="row">
            <aside class="col-3"></aside>
            <section class="col-6   ">

                <div style="margin: auto;" align="center" >
	  <br>  <br>
				<div class="button" align ="center">
					<button onclick="location.href='<%= request.getContextPath() %>/selectList.rv'">메뉴로 돌아가기</button> &nbsp;
			<% if(m != null && m.getUserid().equals(r.getRwriter())){%> 
					<button onclick="location.href='<%= request.getContextPath() %>/rUpView.rv?rno='+<%=r.getRno()%>">수정하기</button>&nbsp;
					<button onclick="location.href='<%= request.getContextPath() %>/rDelete.rv?rno='+<%=r.getRno()%>">삭제하기</button>
			<% } %> 
			   </div>
	</div>
	</section>
	</div>
		<br><br><br><br><br>	<br><br><br><br><br>
		<div id="disqus_thread"></div>
<script>

/**
*  RECOMMENDED CONFIGURATION VARIABLES: EDIT AND UNCOMMENT THE SECTION BELOW TO INSERT DYNAMIC VALUES FROM YOUR PLATFORM OR CMS.
*  LEARN WHY DEFINING THESE VARIABLES IS IMPORTANT: https://disqus.com/admin/universalcode/#configuration-variables*/
/*
var disqus_config = function () {
this.page.url = PAGE_URL;  // Replace PAGE_URL with your page's canonical URL variable
this.page.identifier = PAGE_IDENTIFIER; // Replace PAGE_IDENTIFIER with your page's unique identifier variable
};
*/
(function() { // DON'T EDIT BELOW THIS LINE
var d = document, s = d.createElement('script');
s.src = 'https://baseball-2.disqus.com/embed.js';
s.setAttribute('data-timestamp', +new Date());
(d.head || d.body).appendChild(s);
})();
</script>
<noscript>Please enable JavaScript to view the <a href="https://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>
		<br><br><br><br><br>	<br><br><br><br><br>
	
	<%@ include file="../common/footer.jsp" %>


</html>