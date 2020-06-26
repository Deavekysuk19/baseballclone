<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html lang="ko">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- 부트스트랩 전용 CSS -->
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">		
        <!-- 부트스트랩 전용 JS -->
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>				
        <title>야구야 놀자!</title>
        
	</head>
	<style>
  /* body {
    background-color: #5c4084;
    margin: 50px;
  }
  .container {
    background-color: #fff;
    padding: 40px 80px;
    border-radius: 8px;
  }
  h1 {
    color: #fff;
    font-size: 4rem;
    font-weight: 900;
    margin: 0 0 5px 0;
    background: -webkit-linear-gradient(#fff, #999);
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
    text-align: center;
  }
  h4 {
    color: lighten(#5c3d86,30%);
    font-size: 24px;
    font-weight: 400;
    text-align: center;
    margin: 0 0 35px 0;
  }
  input[type=text]:focus {
    border-color: darken(#dce4ec, 20%);
  }
  .btn.btn-default {
    outline: none ;
	
    background-color: darken(#95a5a6, 20%) !important;
  
  } */

	</style>
    
    <body>    
		
		<div class="container text-center">
			
			<h1 style="font-weight: bold;">새로운 비밀번호 재설정</h1><br><br>

			<form action="/baseball/pwUpdate.do" method="post" id="pwUpdate">
				
				<div class="row">

					<div class="col-4" style="margin-top: 10px;">
						<p class="text-right">비밀번호 : </p>
					</div>
					<div class="col-4 input-group mb-1">
						<input type="password" class="form-control" name="passwd1" id="mpw" placeholder="비밀번호">		
					</div>
					<div class="col-4"></div>
				
					<div class="col-4" style="margin-top: 10px;">
						<p class="text-right">비밀번호 재확인 : </p>
					</div>
					<div class="col-4 input-group mb-1">
						<input type="password" class="form-control" name="passwd1" id="mpwChk" placeholder="비밀번호 재확인">
					</div>
					<div class="col-4"></div>
				
					<div class="col-4" style="margin-top: 10px;"></div>
					<div class="btn-group col-2">
						<button type="button" class="btn btn-dark btn-lg" onclick="updateAccount();">정보수정</button>
					</div>
					<div class="btn-group col-2">
						<button type="reset" class="btn btn-dark btn-lg" >초기화</button>
					</div> 
					<div class="col-4" style="margin-top: 10px;"></div>


					<div class="col-4" style="margin-top: 10px;"></div>
					<div class="col-4" style="margin-top: 10px;">
						<p class="text-center">▼ 비밀번호 랜덤 생성 ▼</p>
					</div>
					<div class="col-4" style="margin-top: 10px;"></div>


					<div class="col-4" style="margin-top: 10px;"></div>
						<div class="input-group col-4">
								<input type="text" class="form-control input-lg" rel="gp" data-size="32" data-character-set="a-z,A-Z,0-9,#">
								<button type="button" class="btn btn-dark btn-lg getNewPass" style="font-size: 15px;">생성</button>
						</div>
					<div class="col-4"></div>
					  
					<!-- onclick="reset();" -->
				</div>
				
			</form> 			

		</div>


		
      
      
      
    
  



		<script>
			// 비밀번호 무결성 췍
			$('input:password[name=passwd1]').on('change', function() {
				var pwVal = $('#mpw').val();
				var pwChkVal = $('#mpwChk').val();

				if (pwVal != '' && pwChkVal == '') { // 비번1번채워질떄
					// console.log(pwVal);
					// console.log(pwChkVal);
				} else if (pwVal != '' || pwChkVal != '') { // 비번1 or 2 빈칸	
					if (pwVal == pwChkVal) {				
						alert("확인되었습니다.");
					} else {				
						alert("비밀번호가 일치하지 않습니다");
					}
				}
			});
		</script>		
		
		<script>
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
		</script>
			
		<script>
			// 비번 미 수정 방지
			function updateAccount(){
				var pwFistInput = $('#mpw').val();
				var pw2 = $('#mpwChk').val();
				var conf = confirm('정말 변경하시겠습니까?');

				if(pwFistInput != pw2 ){
					alert('비밀번호를 다시 확인하세요.');
				} else if (conf){
						$("#pwUpdate").submit();
						// window.close();
				} else {
					return null;
				}
				
			}
		</script>
		
		<!-- <script>
			function reset(){
				$('input').val('');
			}
		</script> -->

						<script>
				// Generate a password string
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


		
    </body>
    </html>
    