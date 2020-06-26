<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.member.model.vo.*" %>
<%
	Member m = (Member)session.getAttribute("member");
%>

<script src="/baseball/resources/js/jquery-2.2.4.js"></script>
<!-- <script src="/baseball/resources/js/jquery-3.5.1.min.js"></script> -->
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
<!-- <script src="/baseball/resources/js/bootstrap.min.js"></script> -->
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript" src="/baseball/resources/js/jquery-scrolltofixed-min.js"></script>
 <link rel="shortcut icon" href="/baseball/resources/images/baseball.ico">
 <link rel="icon" href="/baseball/resources/images/baseball.ico">


<style>


nav .dropdown-menu{ border:none; }
nav .dropdown-item{ color: #fff; }

/* .navbar {position: fixed; width: 100%; z-index: 1000; } */


/* footer {
  background: #f8f9fa;
  color:#A2A0A0;
  
} */
.dropdown-toggle::after { 
/* 화살표 제거 */
	display:none;
}

#test1 {
	background-color : white;
}

#test1 a {
	color : black;
}

nav a {
	color:white;
}

#user26, #lock26 {
			width: 35px;
			height:35px;
		}

</style>


  <nav class="top-bar navbar-expand-sm bg-secondary " id="test1">
     <div class="container">
     <div class="row">
       <div class="col-12" id="test" >
        <ul class="navbar-nav ml-auto">
     
     <%if ( m == null ) { %>
			<li class="dropdown-toggle" style="margin-left:auto;">
		  	
				<a class="nav-link" href="#" data-toggle="modal" aria-haspopup="true" aria-expanded="false"
				data-target="#loginFormBtnGo" style="display: inline; color: white;">로그인
				</a>
		  
				<a class="nav-link" href="#" data-toggle="modal" aria-haspopup="true" aria-expanded="false"
				data-target="#newSignBtnGo" style="display: inline; color: white;">회원가입
				</a>
				  
			</li>
		<% } else { %>
			<li class="nav-item dropdown" style="margin-left:auto;">
				<!-- <b style="display: inline; color: white;">&nbsp;님 환영합니다.</b> -->
				<p>
					<a class="nav-link" style="display: inline; color: white;"><b><%= m.getUsername() %>님 환영합니다.</b></a>
				</p>
			
			  
				<a class="nav-link" href="#" style="display: inline; color: white;" onclick="changeInfo();">마이페이지
				</a> 
				
				<a class="nav-link" href="#" style="display: inline; color: white;" onclick="logoutBtn();">로그아웃              
				</a>

			</li>
		<% } %>	    
	                        
        </ul>
        </div>
      </div> 
      </div>
      </nav>
      
      
            <div class="modal fade" id="loginFormBtnGo" tabindex="-1" role="dialog" aria-labelledby="loginModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h3 class="modal-title" id="loginModalLabel"><b>로그인</b></h3>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                        </div>
                            <div class="modal-body">
        
                                <!-- 네비게이션 바 -->
                                <nav class="navbar navbar-expand-lg navbar-light bg-light">
                                        
                                    <div class="collapse navbar-collapse">
                                    <ul class="navbar-nav">
                                        <li class="nav-item active">
                                        <a class="nav-link" href="#">홈으로</a>
                                        </li>
                                        <li class="nav-item">
                                        <a class="nav-link" href="#">고객센터</a>
                                        </li>
                                        <li class="nav-item">
                                        <a class="nav-link" href="#">개인정보처리방침</a>
                                        </li>
                                    </ul>
                                    </div>
                                </nav>
                    
                    
                    <!-- 로그인 폼 시작 -->
                    	<%if ( m == null ) { %>
						<form id="loginForm" action="/baseball/login.me" method="post">										
						
                                <div class="badge badge-secondary text-wrap" style="width: 450px; height: 50px; font-size: 35px;">
									야구야 놀자 로그인
								</div><hr>                 
					
								<div class="row">
								
									<div class="col-2"></div>
									<div class="col-7">
										<div class="input-group mb-1">            
											<img id="user26" src="/baseball/resources/images/user26.png">&nbsp;&nbsp;&nbsp;
											<input type="text" class="form-control" 
											 name="userId" placeholder="아이디" maxlength="50" required>
										</div><br>
					
										<div class="input-group mb-1">
											<img id="lock26" src="/baseball/resources/images/lock26.png">&nbsp;&nbsp;&nbsp;
											<input type="password" class="form-control" 
											   name="passwd1" placeholder="비밀번호" maxlength="50" required>
										</div>
									</div>
									<div class="col-2"></div>
									
								</div>
							
								<div class="col text-center" style="margin-top: 40px;"> 
									<button type="submit" class="btn btn-secondary" >로그인</button>									
									<div class="btn btn-secondary" onclick="location.href='/baseball/searchNotice.no'">고객센터</div><br>
									<div style="margin-top: 5px;">
										<div class="btn btn-primary" onclick="window.open('/baseball/views/member/otherSign.jsp')">다른 방법으로 로그인</div>										
									</div>
								</div>
								<br>
								<div class="container text-center">
									<div class="social-links social-icons">
										<a href="#"><i class="fa fa-facebook fa-3x"></i></a>
										<a href="#"><i class="fa fa-twitter fa-3x"></i></a>
										<a href="#"><i class="fa fa-linkedin fa-3x"></i></a>
										<a href="#"><i class="fa fa-github fa-3x"></i></a>
									</div>
								</div>
							</form>
							
						<% } else { %>
									<!-- 유저정보 및 옵션 창 -->
									<div>
										<label><%= m.getUsername() %>님의 방문을 환영합니다.</label>
									</div>
							<% } %>
							<!-- 로그인 폼 끝 -->

						<div class="modal-footer" style="margin-top: 3%;">
							<button type="button" class="btn btn-primary" data-dismiss="modal">닫기</button>          
						</div>
					  
					</div> <!-- modal-body -->
				
				</div> <!-- content -->
		
			</div> <!-- dialog --> 

		</div> <!-- fade -->
    
    
    <!-- 회원가입속성 -->        
		<div class="modal fade" id="newSignBtnGo" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		
			<div class="modal-dialog modal-lg"> <!-- modal-dialog -->
				
				<div class="modal-content"> <!-- modal-content -->
				
					<div class="modal-header">
						<h3 class="modal-title" id="exampleModalLabel"><b>야구야 놀자 회원가입</b></h3>							
					</div>
					
					<div class="modal-body"> <!-- 모달바디 -->

						<!-- 가입 시작 -->
						<form id="joinForm" action="/baseball/mInsert.me" method="post">

							<div class="row">
							
								<div class="col-4" style="margin-top: 10px;"><p class="text-right">* 아이디</p></div>								
								<div class="col-4 input-group mb-3">
								<input type="text" class="form-control" name="userId" id="chkUserID" placeholder="아이디" required>
									<div class="input-group-append">
										<button class="btn btn-outline-secondary" type="button" id="userIdChk">체크</button>
									</div>
								</div>								
								<div class="col-4"></div>
			
			
								<div class="col-4" style="margin-top: 10px;"><p class="text-right">* 비밀번호</p></div>
								<div class="col-4 input-group mb-3">
									<input type="password" class="form-control" name="passwd1" id="pw" placeholder="비밀번호" required>
								</div>
								<div class="col-4"></div>
			
														
								<div class="col-4" style="margin-top: 10px;"><p class="text-right">* 비밀번호 재확인</p></div>
								<div class="col-4 input-group mb-3">
									<input type="password" class="form-control" name="passwd1" id="pwChk" placeholder="비밀번호 재확인" required>								
								</div>
								<div class="col-4"></div>


								<div class="col-4" style="margin-top: 10px;"></div>
								<div class="col-4 mb-3">
									<p class="text-center">▼ 비밀번호 랜덤 생성 ▼</p>
								</div>
								<div class="col-4"></div>


								<div class="col-4" style="margin-top: 10px;"></div>
									<div class="input-group col-4 mb-3">
										<input type="text" class="form-control input-lg" rel="gp" data-size="32" data-character-set="a-z,A-Z,0-9,#">
										<button type="button" class="btn btn-dark btn-lg getNewPass" style="font-size: 15px;">생성</button>
									</div>
								<div class="col-4"></div>
					

								<div class="col-4"></div>
								<div class="col-4">
									<span id="pw-success" style="display: none; color: lime; font-weight: bold; ">비밀번호가 일치합니다.</span>
									<span id="pw-fail" style="display: none; color: red; font-weight: bold; ">비밀번호가 일치하지 않습니다.</span>
								</div>
								<div class="col-4"></div>


								<div class="col-4" style="margin-top: 10px;"><p class="text-right">이름</p></div>
								<div class="col-4 input-group mb-3">
									<input type="text" class="form-control" name="userName" placeholder="이름" required>
								</div>						
								<div class="col-4"></div>
								

								<div class="col-4" style="margin-top: 10px;"><p class="text-right">나이</p></div>
								<div class="col-4 input-group mb-3">
									<input type="text" class="form-control" name="age" placeholder="나이">
								</div>
								<div class="col-4"></div>
								
								
								<div class="col-4" style="margin-top: 10px;"><p class="text-right">성별</p></div>
									<div class="col-4 mb-3" style="margin-top: 10px;">
										<input type="radio" name="gender" value="M">&nbsp;남성&nbsp;&nbsp;&nbsp;
										<input type="radio" name="gender" value="F">&nbsp;여성
									</div>
								<div class="col-4"></div>

							
								<div class="col-4" style="margin-top: 10px;"><p class="text-right">연락처</p></div>
								<div class="col-4 input-group mb-3">                
								<input type="text" name="phone" class="form-control" placeholder="- 없이 입력">
								</div>
								<div class="col-4"></div>
				
								  
								<div class="col-4" style="margin-top: 10px;"><p class="text-right">주소</p></div>
								<div class="col-4 input-group mb-3">
								<input type="text" class="form-control" name="address1" placeholder="주소">
									<div class="input-group-append">
										<button class="btn btn-outline-secondary" type="button" onclick="addressSearchBtn();">검색</button>
									</div>
								</div>
								<div class="col-3"></div>
				
				
								<div class="col-4" style="margin-top: 10px;"><p class="text-right">상세 주소</p></div>
								<div class="col-4 input-group mb-3">
									<input type="text" class="form-control" name="address2" placeholder="상세 주소">
								</div>
								<div class="col-4"></div>
				
				
								<div class="col-4" style="margin-top: 10px;"><p class="text-right">우편번호</p></div>
								<div class="col-4 input-group mb-3">
									<input type="text" class="form-control" name="zipCode" placeholder="우편번호">
								</div>
								<div class="col-4"></div>
				
										 
								<div class="col-4" style="margin-top: 10px;"><p class="text-right">* 이메일</p></div>
								<div class="col-4 input-group mb-3">
									<input type="text" class="form-control" name="email" placeholder="이메일" required>						  
								</div>
								<div class="col-4"></div>	
																					
								
								<div class="col-4"></div>	
								<div class="col-4 mb-1"><p class="text-center"  style="margin-top: 10px;">
										<input class="form-check-input" type="checkbox" id="checkboxBtn2" checked> 
										마케팅 정보 수신 허용</p>
								</div>
								
							</div>	
							
							<div class="row">
								<div class="col-4"></div>
									<div class="col-6">
										<div class="mx-auto form-group" style="margin-top: 10px;">
											<div class="dropdown">
												<button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenu2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
													이용약관
												</button>
													<div class="dropdown-menu" aria-labelledby="dropdownMenu2">
														<textarea name="" id="" cols="100px" rows="10">제 1 조 (목적)
															이 약관은 “고객”이 주식회사 "야구야 놀자" 가 운영하는 “사이트”에서 제공되는 “서비스”를 이용함에 있어 “회사”와 “고객”의 권리·의무 및 책임 사항을 규정함을 목적으로 합니다.
															※ PC통신, 모바일, 무선 등을 이용하는 전자상거래에 대해서도 그 성질에 반하지 않는 한 이 약관을 준용합니다.
															
															제 2 조 (약관의 명시 및 개정)
															① “회사”는 이 약관과 상호, 영업소 소재지 주소(소비자의 불만을 처리할 수 있는 곳의 주소를 포함), 대표자의 성명, 사업자등록번호, 통신판매업신고번호, 연락처(전화번호, 전자우편주소 등) 등을 “고객”이 쉽게 알 수 있도록 “사이트”의 초기화면에 게시합니다. 다만, 약관의 내용은 링크를 통하여 연결되는 별도의 화면에 게시할 수 있습니다.
															② “회사”는 『전자상거래 등에서의 소비자보호에 관한 법률』(이하 “전자상거래법”이라 합니다), 『약관의 규제등에 관한 법률』, 『전자문서 및 전자거래기본법』, 『전자서명법』, 『정보통신망 이용촉진 등에 관한 법률』, 『방문판매등에 관한 법률』, 『소비자기본법』 등 관련 법령에 위배되지 않는 범위에서 이 약관을 개정할 수 있습니다.
															③ “회사”가 이 약관을 개정하는 경우에는 그 적용일 7일 전부터 변경내용 및 적용일자를 명시하여 “사이트”의 초기화면에 공지합니다. 다만, 약관의 변경 내용이 중대하거나 ”고객”에게 불리한 경우에는 그 적용일 30일 전에 “고객”들에게 개별 통지함을 원칙으로 하되, 개별 통지가 어려운 경우에는 그 적용일자 30일 전부터 “사이트”의 초기화면에 공지함으로써 개별 통지를 갈음할 수 있습니다.
															④ “구매회원”은 전항에 따라 변경되는 약관에 동의하지 않을 권리가 있으며, 변경된 약관에 동의하지 않을 경우에는 “서비스” 이용을 중단하고 회원 탈퇴를 요청할 수 있습니다.
															
															제 2 조 (서비스의 내용)
															① “회사”가 이 약관에 따라 “고객”에게 제공하는 “서비스”는 다음 각 호와 같습니다.
															1. 상품 거래를 위한 오픈마켓 플랫폼 운영 서비스
															2. “사이트”의 개발 및 운영 서비스
															3. 상품 구매 관련 업무 지원 서비스
															4. 상품 정보 검색 서비스
															5. 기타 전자상거래와 관련하여 “회사”가 정하는 서비스
															② “회사”가 제공하는 “서비스”의 범위는 “사이트”에서 “판매회원”과 “고객”이 상품을 원활하게 거래할 수 있도록 하는 것에 한정되며, “회사”는 ”판매회원”이 “사이트”에서 판매하는 상품에 관하여 일체의 책임을 지지 않습니다.
														</textarea>
													</div>
												<button class="btn btn-secondary" onclick="insertMember();">회원가입 완료</button>	
											</div>
										</div>
									</div>
								<div class="col-2"></div>
								
								<div class="col-4"></div>
								<div class="col-4">
									<ul class="list-inline text-center">
										<li class="list-inline-item"><a href="#"><span class="fa-stack fa-lg"><i class="fa fa-circle fa-stack-2x"></i><i class="fa fa-facebook fa-stack-1x fa-inverse"></i></span></a></li>
										<li class="list-inline-item"><a href="#"><span class="fa-stack fa-lg"><i class="fa fa-circle fa-stack-2x"></i><i class="fa fa-twitter fa-stack-1x fa-inverse"></i></span></a></li>
										<li class="list-inline-item"><a href="#"><span class="fa-stack fa-lg"><i class="fa fa-circle fa-stack-2x"></i><i class="fa fa-instagram fa-stack-1x fa-inverse"></i></span></a></li>
										<li class="list-inline-item"><a href="#"><span class="fa-stack fa-lg"><i class="fa fa-circle fa-stack-2x"></i><i class="fa fa-pinterest fa-stack-1x fa-inverse"></i></span></a></li>
									</ul>
								</div>
								<div class="col-4"></div>
								
							</div> 		
							
						</form>
						<!-- 가입 끝 -->
					
					</div> <!-- 모달바디 끝 -->
	
					<br>
					<div class="modal-footer" style="margin-top: 3%;">
						<button type="button" class="btn btn-primary" data-dismiss="modal">닫기</button>
					</div>
				
				</div> <!-- modal-content -->
				
			</div> <!-- modal-dialog -->
			
		</div> <!-- modal fade -->


      
			
	<nav class="navbar navbar-expand-sm  bg-danger navbar-default navbar-static-top "	>
    <div class="container container-fluid">
    <div class="row">
    	<div class="col-4">
	    	<a class="navbar-brand" href="#" ><img src="/baseball/resources/images/logo.jpg" style="width:50px;height:56px; position: absolute; margin-top:-12.5%;"  /></a>
	      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown"
	        aria-expanded="false" aria-label="Toggle navigation">
	        <span class="navbar-toggler-icon"></span>
	      </button>
    	</div>
    	<div class="col-6">
	    	<div class="collapse navbar-collapse" id="navbarNavDropdown">
	        <ul class="navbar-nav ml-auto">
	          <li class="nav-item active">
	            <a class="nav-link" href="/baseball/index.jsp" >Home&nbsp;&nbsp;&nbsp;
	              <span class="sr-only">(current)</span>
	            </a>	          
	          <!-- <li class="nav-item dropdown">
	            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	              소개 &nbsp;&nbsp;&nbsp;
	            </a>
	            <div class="dropdown-menu bg-dark"  id="dropdown-menu1"  aria-labelledby="navbarDropdownMenuLink">
	              <a class="dropdown-item" href="#">ㅇㅅㅇ</a>
	              <a class="dropdown-item" href="#">Another action</a>
	              <a class="dropdown-item" href="#">Something else here</a>
	            </div>
	          </li> -->
	          <li class="nav-item dropdown">
	            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	              구단&nbsp;&nbsp;&nbsp;
	            </a>
	            <div class="dropdown-menu bg-dark"  id="dropdown-menu"  aria-labelledby="navbarDropdownMenuLink">
	              <a class="dropdown-item" href="/baseball/views/baseballClub/clubIntroduce.jsp">구단 소개</a>
	              <a class="dropdown-item" href="/baseball/views/baseballClub/rank.jsp">구단 순위</a>
	            </div>
	          </li>
	          <li class="nav-item dropdown">
	            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	              구장&nbsp;&nbsp;&nbsp;
	            </a>
	            <div class="dropdown-menu bg-dark"  id="dropdown-menu"  aria-labelledby="navbarDropdownMenuLink">
	              <a class="dropdown-item" href="/baseball/views/StadiumIntroduce/skStadium.jsp">인천SK 행복드림구장</a>
	              <a class="dropdown-item" href="/baseball/views/StadiumIntroduce/JamSilStadium.jsp">잠실 구장</a>
	              <a class="dropdown-item" href="/baseball/views/StadiumIntroduce/gsdStadium.jsp">고척스카이돔</a>
	              <a class="dropdown-item" href="/baseball/views/StadiumIntroduce/ktStadium.jsp">수원 kt위즈파크 야구장</a>
	              <a class="dropdown-item" href="/baseball/views/StadiumIntroduce/heStadium.jsp">한화생명 이글스파크</a>
	              <a class="dropdown-item" href="/baseball/views/StadiumIntroduce/slStadium.jsp">대구삼성 라이온즈파크</a>
	              <a class="dropdown-item" href="/baseball/views/StadiumIntroduce/kiaStadium.jsp">광주기아 챔피언스필드</a>
	              <a class="dropdown-item" href="/baseball/views/StadiumIntroduce/lsStadium.jsp">사직야구장</a>
	              <a class="dropdown-item" href="/baseball/views/StadiumIntroduce/ncStadium.jsp">창원NC파크</a>
	            </div>
	          </li>
	          <li class="nav-item dropdown">
	            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	              예매&nbsp;&nbsp;&nbsp;
	            </a>
	            <div class="dropdown-menu bg-dark"  id="dropdown-menu"  aria-labelledby="navbarDropdownMenuLink">
	              <a class="dropdown-item" href="/baseball/views/ticketing/information.jsp">예매</a>  
	              <a class="dropdown-item" href="/baseball/views/ticketing/match.jsp">The next day's game</a>
	            </div>
	          </li>
	          <li class="nav-item dropdown">
	            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	              게시판&nbsp;&nbsp;&nbsp;
	            </a>
	            <div class="dropdown-menu bg-dark"  id="dropdown-menu"  aria-labelledby="navbarDropdownMenuLink">
	              <a class="dropdown-item" href="/baseball/selectList.cb">응원 게시판</a>
	              <a class="dropdown-item" href="/baseball/selectList.rv">리뷰 게시판</a>
	            </div>
	          </li>
	          <li class="nav-item dropdown">
	            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	              고객센터&nbsp;&nbsp;&nbsp;
	            </a>
	            <div class="dropdown-menu bg-dark"  id="dropdown-menu"  aria-labelledby="navbarDropdownMenuLink">
	              <a class="dropdown-item" href="/baseball/searchNotice.no">공지사항</a>
	              <a class="dropdown-item" href="/baseball/selectList.qa">Q & A</a>
	            </div>
	          </li>
	          
	         	   
	           
	        </ul>
	      </div>
    	</div>
    </div>
    </div>
  </nav>    
  
  <script>
            function addressSearchBtn() {
            // 참조 API : http://postcode.map.daum.net/guide
                new daum.Postcode({
                    oncomplete: function(data) {
                        // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
    
                        // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                        // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                        var fullAddr = ''; // 최종 주소 변수
                        var extraAddr = ''; // 조합형 주소 변수
    
                        // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                        if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                            fullAddr = data.roadAddress;
    
                        } else { // 사용자가 지번 주소를 선택했을 경우(J)
                            fullAddr = data.jibunAddress;
                        }
    
                        // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
                        if(data.userSelectedType === 'R'){
                            //법정동명이 있을 경우 추가한다.
                            if(data.bname !== ''){
                                extraAddr += data.bname;
                            }
                            // 건물명이 있을 경우 추가한다.
                            if(data.buildingName !== ''){
                                extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                            }
                            // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                            fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
                        }
    
                        // 우편번호와 주소 정보를 해당 필드에 넣는다.
                        $('[name=zipCode]').val(data.zonecode); //5자리 새우편번호 사용
                        $('[name=address1]').val(fullAddr);
    
                        // 커서를 상세주소 필드로 이동한다.
                        $('[name=address2]').focus();
                    }
                }).open();
            };
       </script>
  
  


 
   <script src="https://use.fontawesome.com/926fe18a63.js"></script>
<script>
  /* $('.nav-link').on('mouseenter', function(){
	  $('#navbarDropdownMenuLink1').dropdown('show');
  });
  $('.dropdown-menu').on('mouseleave', function(){
	    $('#dropdown-menu1').dropdown('hide');
	 });
  
    document.querySelector('.btn-submit').addEventListener('click', function () {
      alert("??????????");
    }); */
    
    $('.navbar').scrollToFixed();
    
    function goNotice(){
		location.href="/baseball/selectList.no";
	}
  </script>
  <script>
       // 야구 로그인전용스크립트
  
       		function loginBtn(){
    	   location.href="/baseball/login.me";
		}
       
			function logoutBtn(){
			
			var conf = confirm('떠나실건가요..........?')

			if(conf == true) {
				location.href="/baseball/logout.me";
			} else {
				return false;
			}
		}
		
		function insertMember(){
			$("#joinForm").submit();
		}
		
		function changeInfo(){
			location.href="/baseball/views/member/myPageForm.jsp";
		}
		
		function homeBtn(){
			location.href="/baseball/index.jsp";
		}
	</script>

	<script>
	//회원가입
		$('#userIdChk').on('click', function(){
				$.ajax({
					url : '/baseball/idDup.do' , 
					type : 'post' , 
					data : { useridAX : $('#chkUserID').val() } , 
					success : function(data){

						console.log(data);
						
						// 결과가 0 이면 사용자 없음 : 가입 가능
						//			    1 이면 1명 사용중 : 가입 불가
						if( data == 0){
							alert("사용 가능한 아이디입니다.");
						} else {
							alert("이미 사용 중인 아이디입니다.");
					}
				} , error : function(){
					console.log("체크 에러 발생.");
				}
			});
		});
	</script>
	
		 <script>
		// 비밀번호 무결성 췍
		$('input:password[name=passwd1]').on('change', function (){			
			var pwVal = $('#pw').val();
			var pwChkVal = $('#pwChk').val();
	
			if ( pwVal != '' && pwChkVal == '' ) { // 비번1번채워질떄
				// console.log(pwVal);
				// console.log(pwChkVal);
			} else if (pwVal != '' || pwChkVal != '') { // 비번1 or 2 빈칸	
				if (pwVal == pwChkVal) {
					// $("#mpw-success").css('display', 'inline-block');
					// $("#mpw-fail").css('display', 'none');
					alert("확인되었습니다.");
				} else {						
					// $("#mpw-success").css('display', 'none');
					// $("#mpw-fail").css('display', 'inline-block');
					alert("비밀번호가 일치하지 않습니다");
				}
			}
		});
	</script> 
	
	<script>
			$('#checkboxBtn2').on('change', function(){
				
				var marketChk = $(this);
				
				for(var i = 0 ; i < marketChk.length ; i++){
					if(marketChk.prop('checked')) {
						var conf = "마케팅 알림 설정 완료.";
                        alert(conf);						
					} else {
                        alert("설정 취소되었습니다.");
                    }
				}	
			});
		</script>
	
	<!--  <script>
		// 비번 최소값
		$('input:password[name=passwd1]').on('change', function(){
			var pw1 = $('#pw').val();
			var pw2 = $('#pwChk').val();

			if (pw1.length < 3 || pw1 == ''){
				// $("#mpw-success").css('display', 'none');
				// $("#mpw-fail").css('display', 'none');
				// console.log(pw1);
				// console.log(pw2);					
				alert("최소 3자 이상으로 입력하세요.");
				return false;
			} else if ( pw1 != pw2 ){					
				return false;
			} else {
				return true;
			}
		});
	</script>  -->

	 <script>
		$('#pwSign').on('change', function(){
			var pwSign1 = $('#pwSign').val();

			if(pwSign1 == ''){
				console.log(pwSign1);
				alert('공백을 입력할 수 없습니다.')
			} else {
				null;
			}
		});
	</script>
	 
	 <script>
		
		function randString(id){
		var dataSet = $(id).attr('data-character-set').split(',');  
		var possible = '';
		if($.inArray('a-z', dataSet) >= 0){
			possible += 'abcdefghijklmnopqrstuvwxyz';
		}
		if($.inArray('A-Z', dataSet) >= 0){
			possible += 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
		}
		if($.inArray('0-9', dataSet) >= 0){
			possible += '0123456789';
		}
		if($.inArray('#', dataSet) >= 0){
			possible += '![]{}()%&*$#^<>~@|';
		}
		var text = '';
		for(var i=0; i < $(id).attr('data-size'); i++) {
			text += possible.charAt(Math.floor(Math.random() * possible.length));
		}
		return text;
		}

		// Create a new password on page load
		$('input[rel="gp"]').each(function(){
		$(this).val(randString($(this)));
		});

		// Create a new password
		$(".getNewPass").click(function(){
		var field = $(this).closest('div').find('input[rel="gp"]');
		field.val(randString(field));
		});

		// Auto Select Pass On Focus
		$('input[rel="gp"]').on("click", function () {
		$(this).select();
		});

	</script>