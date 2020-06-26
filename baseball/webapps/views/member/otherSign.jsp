<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
 	// 이미 세션이 존재한다면 죽이고 시작하기
 	session.invalidate();
 %>
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
<body>

    <div class="container text-center">
    
        <h1 style="font-weight: bold;">계정 인증</h1><br>

        <form action="/baseball/OSignChk.me" method="POST" id="inputTX">

                    <div class="row">
    
                        <div class="col-4" style="margin-top: 10px;">
                            <p class="text-right">이름 : </p>
                        </div>
                        <div class="col-4 input-group mb-1">
                            <input type="text" class="form-control" name="userName" id="userName" onkeyup="noSpaceForm(this);" onchange="noSpaceForm(this);">		
                        </div>
                        <div class="col-4"></div>
                    
                        <div class="col-4" style="margin-top: 10px;">
                            <p class="text-right">이메일 : </p>
                        </div>
                        <div class="col-4 input-group mb-1">
                            <input type="text" class="form-control" name="email" id="email" onkeyup="noSpaceForm(this);" onchange="noSpaceForm(this);">
                        </div>
                        <div class="col-4"></div>

                        <div class="col-4" style="margin-top: 10px;">
                            <p class="text-right">연락처 : </p>
                        </div>
                        <div class="col-4 input-group mb-1">
                            <input type="text" class="form-control" name="phone" id="phone" onkeyup="noSpaceForm(this);" onchange="noSpaceForm(this);">
                        </div>
                        <div class="col-4"></div>
                    
                        <div class="col-4" style="margin-top: 10px;"></div>
                        <div class="btn-group col-2">
                            <button type="reset" class="btn btn-dark btn-lg">초기화</button>
                        </div>
                        <div class="btn-group col-2">
                            <button type="button"  class="btn btn-dark btn-lg" onclick="fn_close();">확인하기</button>
                        </div>
                        <div class="col-4"></div>
                        
                    </div>

        </form>
        
        <script>
            function fn_close(){
                $('#inputTX').submit();
                // window.close();
            }
        </script>

        <!-- <script>
            $('#inputTX>input').on('change', function(){
                var userName1 = $('#userName').val();
                var email1 = $('#email').val();
                var phone1 = $('#phone').val();

                if(userName1 == '' || email1 != '' || phone1 != ''){
                    alert('빈칸을 채워주세요');
                } else if (email1 == ''){
                    alert('빈칸을 채워주세요');
                } else if (phone1 == ''){ 
                    alert('빈칸을 채워주세요');
                } else {
                    alert('확인되었습니다');
                }
            });
        </script> -->

        <script>

        function noSpaceForm(obj) 
            {             
                var str_space = /\s/;               // 공백 체크
                if(str_space.exec(obj.value)) 
                {     // 공백 체크
                    alert("해당 항목에는 공백을 사용할 수 없습니다.\n\n공백 제거됩니다.");
                    obj.focus();
                    obj.value = obj.value.replace(' ',''); // 공백제거
                    return false;
                }
            }
        </script>

	</div>	

</body>
</html>