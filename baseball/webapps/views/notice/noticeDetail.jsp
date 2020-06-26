<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.notice.model.vo.*"%>
<%
	Notice n = (Notice)request.getAttribute("notice");
%>
  
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://stackpath.bootsdivapcdn.com/bootsdivap/4.5.0/css/bootsdivap.min.css"
        integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

    <script src="/baseball/resources/js/jquery-2.2.4.js"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
        integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
        integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
        crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
        integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm">
 <title>야구야 놀자!</title>
    <style>
button {
   	background : lightgray;
 	border : 1px solid black;
    -webkit-border-radius: 30px;
    -moz-border-radius: 30px;
    border-radius: 30px;
 }
</style>

</head>

          <%@ include file="../common/header.jsp" %>   
	<br>
            <h2 class="col" style="text-align:center">공지 사항 내용</h2>

         <aside class="col-1"></aside>
    

        <div class="row">
            <aside class="col-3"></aside>
            <section class="col-6">

                <div class="row">
                    <div class="col" syle="align:center">
                        <div class="row">
                            <div class="col" style="font-size: medium;">
                                <b>제목 :</b>
                                <span>
                                      <%= n.getNtitle() %>   
                                </span>
                            </div>
                        </div>
                        <br style="margin-top: -1%;" />

                        <div>
                            <div class="row">
                                    <div class="col-5" style="font-size: medium;">
                                    <b>작성자 :</b>
                                        <span>
                                              <%= n.getNwriter() %>   
                                        </span>
                                    </div>
                                    <div class="col-4" style="font-size: medium;">
                                    <b>작성일 :</b>
                                        <span>
                                              <%= n.getNdate() %>  
                                        </span>
                                    </div>
                                    <div class="col-3" style="font-size: medium;">
                                        <b>조회수 :</b>
                                            <span>
                                                  <%= n.getNcount()%>
                                            </span>
                                        </div>
                                </div>
                            </div>
                            <br style="margin-top: -1%;" />


                        <div class="row">
                            <div class="col">
                                
                                    <textarea class="col-12 border" 
                                    style="width: 100%; height:500px; resize:none;" >
                                          <%= n.getNcontent()%>   
                                       
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


					 <% if( m != null && m.getUserid().equals("admin")) { %>
                    <button class="btn" onclick="location.href='nUpView.no?nno=<%=n.getNno()%>'">수정하기</button>
                    &nbsp;&nbsp;&nbsp;&nbsp; 
                   <% } %>
                    <button class="btn" onclick="location.href='searchNotice.no'">돌아가기</button>
                </div>


            </section>
            <aside class="col-1  "></aside>
        </div>


    <br />
    <br />
    <br />
    <br />
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
s.src = 'https://test-fgs8csrroe.disqus.com/embed.js';
s.setAttribute('data-timestamp', +new Date());
(d.head || d.body).appendChild(s);
})();
</script>
<noscript>Please enable JavaScript to view the <a href="https://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>
                            
      <%@ include file="../common/footer.jsp" %>   


</html>