<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.notice.model.vo.*"%>
<%
	Notice n = (Notice)request.getAttribute("notice");
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
	 <div class="outer"> 
            <div class="tableArea">
                <form id="updateForm" method="post">
                    <table align="center">
                        <tr>
                            <td>제목 </td>
                            <td colspan="3">
                                <input type="text" size="50" name="title" 
                                       value="<%= n.getNtitle().replace("\"", "&#34;") %>">
                                <input type="hidden" name="nno" value="<%= n.getNno() %>">
                            </td>
                        </tr>
                        <tr>
                            <td>작성자 </td>
                            <td>
                                <input type="text" value="<%= n.getNwriter() %>" name="writer" readonly>
                            </td>
                      
                          
                        </tr>
                       
                        <tr>
                            <td>내용 </td>
                        </tr>
                        <tr>
                            <td colspan="4">
                                <textarea name="content" cols="100" rows="30" style="resize:none;"><%= n.getNcontent() %></textarea>
                            </td>
                        </tr>
                    </table>
            <br>
            <div align="center">
                <button onclick="complete();">작성완료</button> &nbsp;&nbsp;
                <button onclick="deleteNotice();">삭제하기</button>
            </div>
        </div>
	</div>
	<script>
					function complete(){
						$("#updateForm").attr("action","<%=request.getContextPath() %>/nUpdate.no");
						
					}
					
					function deleteNotice(){
						// delete 는 예약어 이므로 deleteNotice 로 ...!
						
						$("#updateForm").attr("action","<%=request.getContextPath() %>/nDelete.no");
					}
				
				</script>
            </form>
	<br>
	<br>
	<br>
	<br>
<%@ include file="../common/footer.jsp" %>

</html>