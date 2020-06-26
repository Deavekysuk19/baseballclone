<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, com.review.model.vo.*"%>

<%
	Review r = (Review)request.getAttribute("review");
	ArrayList<Attachment> fileList
	= (ArrayList<Attachment>)request.getAttribute("fileList");

 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>야구야 놀자!</title>
   <meta name ="viewport" content ="width=device-width, initial-scale=1">
<script src="/baseball/resources/js/jquery-2.2.4.js"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
    crossorigin="anonymous">
</head>

	<%@ include file="../common/header.jsp" %>

	<div class="outer">
		<br>
		<h2 align="center">리뷰 수정 </h2>
		<form action="<%= request.getContextPath() %>/rUpdate.rv"
		      method="post" enctype="multipart/form-data">
		       <input type="hidden" name="bno" value="<%= r.getRno() %>"/>
		     
		      <div class="updateArea">
		      	
		      	<table align="center">
		      		<tr>
						<td width="100px">제목</td>
						<td colspan="3"><input type="text" size="40" name="title" ><%=r.getRtitle() %></td>
					</tr>
					<tr>
						<td>작성자</td>
						<td><input type="text" size="20" name="writer" readonly><%=r.getRwriter()%></td>
						<td>날짜</td>
						<td><input type="date" name="date" ><%=r.getRdate()%></td>
					</tr>	
					<tr>
						 <td>팀명</td>
                            <td> 
                            <select name="teamname">
                            	<option value="<%=r.getRteamname() %>"></option>
                           	 	<option value="SK 와이번스">SK 와이번스</option>
                          	  	<option value="한화 이글스">한화 이글스</option>
                           		<option value="두산 베어스">두산 베어스</option>
                            	<option value="롯데 자이언츠">롯데 자이언츠</option>
                            	<option value="키움 히어로즈">키움 히어로즈</option>
                            	<option value="KIA 타이거즈">KIA 타이거즈</option>
                       		 	<option value="LG 트윈스">LG 트윈스</option>
                       			<option value="삼성 라이온즈">삼성 라이온즈</option> 
                       		 	<option value="kt wiz">kt wiz</option>
                       		    <option value="NC 다이노스">NC 다이노스</option>
                       		    
                       		 </select>
						<td>좌석</td>
						<td><input type="text" size= "10" name="seatnum" /><%=r.getSno()%></td>
					</tr>
					
                        	<tr><td><br></td></tr>
					<tr>
						<td>대표 이미지</td>
						<td colspan="3">
							<div id="titleImgArea">
								<img id="titleImg" width="350" height="200"  src="<%= request.getContextPath()%>/resources/reviewUploadFiles/<%= fileList.get(0).getOriginname() %>"> 
							</div>
						
						   	<div class="fileArea" id="fileArea" type="hidden">
		      				<input type="file" id="file1"
		      				name="file1" onchange="loadImg(this, 1);" />
		      			</div> 
		      			</td>
					</tr>
					<%--  <tr>
                            <td>첨부파일1 </td>
                            <td > &nbsp; &nbsp;
                                <input type="file" name="file2" id="file2" /><%= file2.getOriginname() %>
                            </td>
                        </tr>
                         <tr>
                            <td>첨부파일 2</td>
                            <td > &nbsp; &nbsp;
                                <input type="file" name="file3" id="file3" /><%= file3.getOriginname() %>
                            </td>
                        </tr> --%>
						<tr><td><br></td></tr>
					<tr>
						<td width="100px">사진 메모</td>
						<td colspan="3">
							<textarea name="content" rows="5" cols="50" style="resize:none;">
							<%= r.getRcontent() %>
							</textarea>
						</td>
					</tr>
		      	</table>
		   
		      </div>
		      
		      <br>
		      
		      <div class="btnArea" align ="center">
		      	<button type="submit">수정완료</button> &nbsp;&nbsp;
		      	<button type="reset" onclick="location.href='/baseball/views/review/reviewList.jsp'" >취소하기</button>
		      </div>
		</form>
		
		<script>
			// 사진 게시판 미리보기 기능 지원 스크립트
			$(function(){
				$('#fileArea').hide();
				
				$('#titleImgArea').click(() => {
					$('#file1').click();
			});
				
			function loadImg(value, num){
				
				if(value.files && value.files[0])  {
					
					var reader = new FileReader();
					
					reader.onload = function(e){
					
					 $('#titleImg').attr('src', e.target.result);
					
						}
					}
					reader.readAsDataURL(value.files[0]);
				}
			});
		</script>
		
	</div>
	<%-- <% } else {
		// 비회원일 경우
		request.setAttribute("msg", "회원만 가능한 서비스입니다.");
		request.getRequestDispatcher("../common/errorPage.jsp")
		.forward(request, response);
	
	} %> --%>
	<%@ include file="../common/footer.jsp" %>
</html>