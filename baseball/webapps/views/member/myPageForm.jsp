<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.member.model.vo.*" %>

    <!DOCTYPE html>
    <html lang="ko">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- 부트스트랩 전용 CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
        <!-- 부트스트랩 전용 JS -->
        <script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
        
        <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
        
        <style>
            /* .container {
                position: absolute;
            } */
            body {
	            /* background-image: url(http://a-v2.sndcdn.com/assets/images/first_on_soundcloud_che_lingo_creator-ddf8c2ba.jpg);	         	             */
				background-color: darkslategray;
            }
            .title1 {
                text-align: center;
				font-weight: bold;
				color: white;
            }
            .row {
                white-space: nowrap;
            }
            .form-control {
                width: 100px;
                height: auto;            
            }     
			#bo1{color: yellow;font-size: medium;}
			#bo2{color: yellow;font-size: medium;}
			#bo3{color: yellow;font-size: medium;}
			#bo4{color: yellow;font-size: medium;}
		</style>
		
		<%@ include file="/views/common/header.jsp" %>
<title>야구야 놀자!</title>  
      
    </head>
    
    <body>    
        
        <h3 class="title1" style="margin-top: 20px; margin-bottom: 20px;">마이페이지</h3>        
        
	<div class="row">
    
		<div class="container">			
			<div class="row text-white bg-dark" style="line-height: 1;">
				<!-- 왼쪽 여백 -->
				<div class="col-2"></div>
				<!-- 가운데 공간 -->
				<div class="col-8">
					
					<form action="/baseball/mUpdate.me" id="myPageAccountUpdate" method="post">
						
						
						<div class="row">											
							
							<div class="col-4"></div>                                                
							<div class="col-4" style="margin-top: 10px;"><p class="text-center">▶ 회원번호 : <%= m.getUserno()%> ◀</p></div>                        
							<div class="col-4"></div>
						
							<div class="col-4"><p class="text-right">아이디</p></div>
							<div class="col-4"><p class="text-left"><%= m.getUserid()%></p></div>							
							<div class="col-4"></div>
		
		
							<div class="col-4" style="margin-top: 10px;"><p class="text-right">* 비밀번호</p></div>
							<div class="col-4 input-group mb-1">
								<input type="password" class="form-control" name="passwd1" id="mpw" placeholder="비밀번호" required>                     
								
							</div>
							<div class="col-4"></div>
		
													
							<div class="col-4" style="margin-top: 10px;"><p class="text-right">* 비밀번호 재확인</p></div>
							<div class="col-4 input-group mb-1">
								<input type="password" class="form-control" name="passwd1" id="mpwChk" placeholder="비밀번호 재확인" required>								
							</div>
							<div class="col-4"></div>
							

							<div class="col-4"></div>
							<div class="col-4">
								<span id="mpw-success" style="display: none; color: lime; font-weight: bold; ">비밀번호가 일치합니다.</span>
								<span id="mpw-fail" style="display: none; color: red; font-weight: bold; ">비밀번호가 일치하지 않습니다.</span>
							</div>
							<div class="col-4"></div>


							<div class="col-4" style="margin-top: 10px;"><p class="text-right">이름</p></div>
							<div class="col-4" style="margin-top: 10px;"><p class="text-left"><%= m.getUsername() %></p></div>							
							<div class="col-4"></div>
							

							<div class="col-4" style="margin-top: 10px;"><p class="text-right">나이</p></div>
							<div class="col-4 input-group mb-1">
								<input type="text" class="form-control" name="age" placeholder="나이" value="<%= m.getAge() %>">
							</div>
							<div class="col-4"></div>
							
							
							<div class="col-4" style="margin-top: 10px;"><p class="text-right">성별</p></div>
								<div class="col-4" style="margin-top: 10px;">
									<input type="radio" name="gender" value="M" checked>&nbsp;남성&nbsp;&nbsp;&nbsp;
									<input type="radio" name="gender" value="F">&nbsp;여성
								</div>
							<div class="col-4"></div>

						
							<div class="col-4" style="margin-top: 10px;"><p class="text-right">연락처</p></div>
							<div class="input-group mb-1 col-4">                
							<input type="text" name="phone" class="form-control" placeholder="- 없이 입력" value="<%= m.getPhone() %>">
							</div>
							<div class="col-4"></div>
			
							  
							<div class="col-4" style="margin-top: 10px;"><p class="text-right">주소</p></div>
							<div class="input-group col-4 mb-1">
							<div class="input-group-append">
							<input type="text" class="form-control" name="address1" placeholder="주소" style="width:225px;">
								
									<button class="btn btn-outline-secondary" type="button" onclick="addressSearchBtn();">검색</button>
								</div>
							</div>
							<div class="col-3"></div>
			
			
							<div class="col-4" style="margin-top: 10px;"><p class="text-right">상세 주소</p></div>
							<div class="col-4 input-group mb-1">
								<input type="text" class="form-control" name="address2" placeholder="상세 주소">
							</div>
							<div class="col-4"></div>
			
			
							<div class="col-4" style="margin-top: 10px;"><p class="text-right">우편번호</p></div>
							<div class="col-4 input-group mb-1">
								<input type="text" class="form-control" name="zipCode" placeholder="우편번호">
							</div>
							<div class="col-4"></div>
			
									 
							<div class="col-4" style="margin-top: 10px;"><p class="text-right">* 이메일</p></div>
							<div class="col-4 input-group mb-1">
								<input type="text" class="form-control" name="email" placeholder="이메일" required value="<%= m.getEmail() %>">						  
							</div>
							<div class="col-4"></div>	
																				
							
							<div class="col-4"></div>	
							<div class="col-4 mb-1"><p class="text-center"  style="margin-top: 10px;">
									<input class="form-check-input" type="checkbox" id="checkboxBtn" checked> 
									마케팅 정보 수신 허용</p>
							</div>							
			
			
							<div class="col-12"> <hr style="border : 1px solid gray;"> </div> 							
							
							<div class="col-2"></div>							
							<div class="btn-group col-2" role="group">
							<button type="button" class="btn btn-dark btn-lg" onclick="homeBtn();" id="bo1">뒤로</button></div>
							<div class="btn-group col-2" role="group">
							<button type="button" class="btn btn-dark btn-lg" onclick="updateAccount();" id="bo2">정보수정</button></div>
							<div class="btn-group col-2" role="group">
							<button type="reset" class="btn btn-dark btn-lg" id="bo3">초기화</button></div>
							<div class="btn-group col-2" role="group">							
							<button type="button" class="btn btn-dark btn-lg" name="delac" onclick="accountDel();" id="bo4">탈퇴</button></div>
							<div class="col-2"></div>

							<div class="col-12"> <hr style="border : 1px solid gray;"> </div> 	
							<div class="btn-group col-4" role="group">
							<button type="reset" class="btn btn-dark btn-lg" onclick="location.href='/baseball/SelectT.do?userno='+<%=m.getUserno()%> ">예매 확인하기</button></div>                           

						</div> 

						</div>
						
					</form>
					
				</div>
		
				<!-- 오른쪽 여백 -->
				<div class="col-2"></div>				
			
			</div>
			
		</div>
		
	</div>
    	<br />
    	<br />
    	<br />
    	<br />
		<%@ include file="/views/common/footer.jsp" %>

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
        
        <script>
	    	function homeBtn(){
				location.href="/baseball/index.jsp";
			}
		</script>

		<script>
            function accountDel() {
            
                if(confirm("정말 탈퇴 하시겠습니까? ") == true){
                    location.href="/baseball/mDelete.me";
                } else {
                    // location.href="/baseball/views/member/myPageForm.jsp";					
					null;
                }
            
            }	    
		</script>
		

		<!-- // 회원가입
		<script>
			$('#useridCheck').on('click', function(){
					$.ajax({
						url : '/baseball/idDup.do' , 
						type : 'post' , 
						data : { useridAX : $('#userId').val() } , // 
						success : function(data){

							// console.log(data);
							
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
		</script> -->
		
		<script>
			$('#checkboxBtn').on('change', function(){
				
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
		
		<script>
			// 비밀번호 무결성 췍
			$('input:password[name=passwd1]').on('change', function (){			
				var pwVal = $('#mpw').val();
				var pwChkVal = $('#mpwChk').val();
		
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
		<!-- <script>
			// 경고 글씨 제거
			$('#reset').on('click', function(){
				$("#mpw-success").css('display', 'none');
				$("#mpw-fail").css('display', 'none');
			});
		</script> -->
		
		<!-- <script>
			// 비번 최소값
			$('input:password[name=passwd1]').on('change', function(){
				var pw1 = $('#mpw').val();
				var pw2 = $('#mpwChk').val();

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
		</script> -->
		
		<script>
			// 비번 미 수정 방지
			function updateAccount(){
				var pwFirstInput = $('#mpw').val();
				var pw2 = $('#mpwChk').val();
				var conf = confirm('정말 변경하시겠습니까?');
				
				if(pwFirstInput == '' || pwFirstInput.length < 3){
					
					alert('비밀번호를 3자 이상 입력하세요.');
					
				} else if ( pwFirstInput != pw2 ){
					
					alert('비밀번호를 다시 확인하세요.');
					
				}  else {
				
					if(conf){
						$("#myPageAccountUpdate").submit();						
					} else {
						return null;
					}
				}
			}
    	</script>
		
    </body>
    </html>
    