<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

<style>
button {
   	background : lightgray;
 	border : 1px solid black;
    -webkit-border-radius: 30px;
    -moz-border-radius: 30px;
    border-radius: 30px;
 
</style>
</head>

	<%@ include file="../common/header.jsp" %>
	<%-- <% if( m != null) { %> --%>
	<!-- 회원일 경우 -->
	<div class="outer">
		<br>
		<h2 align="center">리뷰 게시판 작성 </h2>
		<br><br>
		<form action="<%= request.getContextPath() %>/rInsert.rv"
		      method="post" enctype="multipart/form-data">
		      
		      <div class="insertArea">
		      	
		  
		      	<table align="center">
		      		<tr>
						<td width="100px">제목</td>
						<td><input type="text" size="40" name="title"></td>
					</tr>
					<tr>
						<td>작성자</td>
						<td><input type="text" size="20" name="writer" value="<%=m.getUserid()%>" readonly="readonly"></td>
					
					</tr>	
					<tr>
						 <td>팀명</td>
                            <td> 
                            <select name="teamname">
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
						<td><input type="text" size= "10" name="seatnum" /></td>
					</tr>
                        	<tr><td><br></td></tr>
					<tr>
						<td>대표 이미지</td>
						<td>
							<div id="titleImgArea">
								<img id="titleImg" width="350" height="200" onchange="loadImg(this, 1);" accept="image/*"/>
							</div>
							
							<div class="fileArea" id="fileArea" type="hidden">
		      				<input type="file" id="file1" name="file1" onchange="loadImg(this, 1);" accept="image/*" />
		      				</div>
						</td>
					</tr>
					 <tr>
                            <td>첨부파일1 </td>
                            <td > &nbsp; &nbsp;
                                <input type="file" name="file2" id="file2" onchange="fileTypeCheck(this)" accept="image/gif, image/jpeg, image/png"//>
                            </td>
                        </tr>
                         <tr>
                            <td>첨부파일 2</td>
                            <td > &nbsp; &nbsp;
                                <input type="file" name="file3" id="file3" onchange="fileTypeCheck(this)" accept="image/gif, image/jpeg, image/png"/ />
                            </td>
                        </tr>
						<tr><td><br></td></tr>
					<tr>
						<td width="100px">사진 메모</td>
						<td >
							<textarea name="content" rows="5" cols="50" style="resize:none;"></textarea>
						</td>
					</tr>
		      	</table>
		      </div>
		      
		      <br>
		      
		      <div class="btnArea" align ="center">
		      	<button type="submit" >작성완료</button> &nbsp;&nbsp;
		      	<button type="reset" onclick="location.href='/baseball/views/review/reviewList.jsp'" >취소하기</button>
		      </div>
		</form>

		<script>
			// 사진 게시판 미리보기 기능 지원 스크립트
			$(function(){
				$('#fileArea').hide();
					// 사진 클릭하면 첨부파일 button눌러지
				 $('#titleImgArea').click(() => {
					$('#file1').click();
				});
			});
			
			function loadImg(value, num){
				
				if(value.files && value.files[0])  {
					
					var reader = new FileReader();
					
					reader.onload = function(e){
						 $('#titleImg').attr('src', e.target.result);
						 }
					reader.readAsDataURL(value.files[0]);
				}
			}
			function fileTypeCheck(obj) {

				pathpoint = obj.value.lastIndexOf('.');

				filepoint = obj.value.substring(pathpoint+1,obj.length);

				filetype = filepoint.toLowerCase();

				if(filetype=='jpg' || filetype=='gif' || filetype=='png' || filetype=='jpeg' || filetype=='bmp') {

					

				} else {

					alert('이미지파일이 아닙니다!!');

					parentObj  = obj.parentNode

					node = parentObj.replaceChild(obj.cloneNode(true),obj);

					return false;

				}

			}
		</script>
		
	</div>
	<br><br><br>
	<%@ include file="../common/footer.jsp" %>
</html>