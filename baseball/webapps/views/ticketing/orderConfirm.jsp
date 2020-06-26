<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
   String sta = request.getParameter("add");
   String sp= ",";
   String[] sArray = sta.split(sp);
   int i=0;
%>

<!DOCTYPE html>
<html>
<head>
<script src="/baseball/resources/js/jquery-2.2.4.js"></script>
<meta charset="UTF-8">
<title>결제 완료</title>
</head>
<body>
   
   <h1>결제 완료 : <%= request.getParameter("item") %></h1>
   <h1>결제 금액 : <%= request.getParameter("pri") %></h1>
   <h1>구장 이름 : <%= request.getParameter("nick") %></h1>
   <h1>좌석 확인 : <%= request.getParameter("add") %></h1>
   <%=sArray[0] %>
   
   <p>
      <input type=button value="확인" name="check" onclick="check()">
   </p>
    <%while(i<sArray.length) {%>
   <form id="goahead" action="/baseball/InsertT.do" method="post" >
   <input type="hidden" value='<%= sArray[i] %>' name="seat">
   <input type="hidden" value='<%= request.getParameter("pri") %>' name="price">
   <input type="hidden" value='<%= request.getParameter("nick") %>' name="stadium">
   <%i++;} %>
   </form>
   <script>
   
   function check(){
      //location.href="/baseball/views/ticketing/ticket.jsp";
      $("#goahead").submit();
   }

   </script>
</body>
</html>