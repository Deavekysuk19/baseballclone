<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 부트스트랩 전용 CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <!-- 부트스트랩 전용 JS -->
    <script src="https://code.jquery.com/jquery-latest.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>	
    
    <style>
        body {
            background-color: #ada0b4;
            text-align: center;
        }
        .form-group {
            width: 300px;
            height: auto;
        }
        .input-group {
            width: 300px;
            height: auto;
        }
        .dropdown-toggle {
            width: 300px;
            height: auto;
        }
    </style>
    <title>야구야 놀자 임시 홈페이지</title>
</head>
<body>
    
    <h1>야구야 놀자에 오신것을 환영합니다. 페이지 버튼들</h1>
    <!-- 로그인 속성 -->
    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#loginFormBtnGo">
        로그인</button>
        <!-- 회원가입 속성 -->
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#newSignBtnGo">
        회원가입</button>
        <button type="button" class="btn btn-primary" data-toggle="modal">
        </button>

    
    <div class="container">

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
                                        <a class="nav-link" href="#"><s>개인정보처리방침</s></a>
                                        </li>
                                    </ul>
                                    </div>
                                </nav>
                    
                                <div class="badge badge-primary text-wrap" style="width: 450px; height: 50px; font-size: 35px;">
                                    야구야 놀자 로그인
                                </div><hr>                        
                    
                                <div class="row" id="loginForm1">
                                    <div class="col">
                                        <div class="input-group mb-3 mx-auto">            
                                            <img src="../../resources/images/user26.png">&nbsp;&nbsp;&nbsp;
                                            <input type="text" class="form-control" id="userId"  placeholder="아이디" maxlength="50" required>
                                        </div><br>
                    
                                        <div class="input-group mb-3 mx-auto">
                                            <img src="../../resources/images/lock26.png">&nbsp;&nbsp;&nbsp;
                                            <input type="text" class="form-control" id="passwd1"  placeholder="비밀번호" maxlength="0" required>
                                        </div>
                                    </div>
                                </div>
                    
                                <!-- 로그인 버튼부분 -->
                                <div id="loginForm2">
                                    <p>
                                        <input type="submit" class="btn btn-info" value="로그인" id="loginBtn" name="loginBtn">
                                    </p>
                                </div>
                    
                                <div class="card" style="display: inline-block; vertical-align: middle;">
                                    <a href="#">
                                        <button type="button" class="btn btn-light">홈으로</button>
                                    </a>            
                                </div>
                                <div class="card" style="display: inline-block; vertical-align: middle;">
                                    <a href="#">
                                        <button type="button" class="btn btn-light">고객센터</button>
                                    </a>            
                            </div>  
                        </div>

                      <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>          
                      </div>
                      
                </div>
            </div>
    </div>
    </div>


    <!-- ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ -->


    <div class="container">    
        
        <!-- 회원가입속성 -->
        
        <div class="modal fade" id="newSignBtnGo" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                <h3 class="modal-title" id="exampleModalLabel"><b>야구야 놀자 회원가입</b></h3>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                </div>
                <div class="modal-body">


            <!-- 가입 시작 -->


            <div class="mx-auto form-group">
                <input type="email" class="form-control" id="userId" name="userId" maxlength="50" placeholder="* 아이디">                              
            </div>

            <div class="mx-auto form-group">
                <input type="password" class="form-control" id="passwd1" name="passwd1" maxlength="50" placeholder="* 비밀번호">
            </div>
    
            <div class="mx-auto form-group">                
                <input type="password" class="form-control" id="passwd2" name="passwd2" maxlength="50" placeholder="* 비밀번호 재입력">
            </div>

            <div class="mx-auto form-group input-group">
                <div class="mx-auto input-group-prepend">
                  <div class="mx-auto input-group-text">
                    <div>
                        <label>성별</label>                        
                        <input type="radio" id="gender" name="gender" placeholder="남">남성&nbsp;&nbsp;
                        <input type="radio" id="gender" name="gender" placeholder="여">여성&nbsp;&nbsp;
                    </div>
                  </div>
                </div>                
              </div>   

            <div class="mx-auto form-group">                
                <input type="text" class="form-control" id="age" name="age" placeholder="나이">
            </div>
    
            <div class="mx-auto form-group">                
                <input type="text" class="form-control" id="phone" name="phone" placeholder="*연락처 -없이 입력">
            </div>
            
            <div class="mx-auto form-group">                
                <input type="text" class="form-control" id="zipCode" name="zipCode" placeholder="우편번호">
            </div>
            <div class="mx-auto input-group mb-3">
                <input type="text" class="form-control" id="address1" name="address1" placeholder="주소">
                <div class="input-group-append" onclick="addressSearchBtn();">
                  <button class="btn btn-outline-secondary" type="button" id="addressSearchBtn" name="addressSearchBtn">검색</button>
                </div>
              </div>
            <div class="mx-auto form-group">                
                <input type="text" class="form-control" id="address2" name="address2" placeholder="상세 주소">
            </div>
            
            <div class="mx-auto form-group">
            <div class="mx-auto input-group flex-nowrap">
                <div class="input-group-prepend">
                  <span class="input-group-text" id="addon-wrapping">@</span>
                </div>                
                <input type="text" class="form-control" id="email" name="email" placeholder="* 이메일">
            </div>    
            </div>        

            <div class="mx-auto form-group form-check">
                <input type="checkbox" class="form-check-input" id="marketingChk" name="marketingChk" checked>
                <label class="form-check-label"><b>마케팅 정보 수신 (선택)</b></label>
            </div>

            <div class="mx-auto form-group">
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
                        ② “회사”가 제공하는 “서비스”의 범위는 “사이트”에서 “판매회원”과 “고객”이 상품을 원활하게 거래할 수 있도록 하는 것에 한정되며, “회사”는 ”판매회원”이 “사이트”에서 판매하는 상품에 관하여 일체의 책임을 지지 않습니다.</textarea>           
                </div>
            </div>

        </div>

        <div class="mx-auto">            
            <button type="submit" class="btn btn-primary">회원가입 완료</button><br><br>
            <a href="#">
                <button type="submit" class="btn btn-primary">뒤로</button>
            </a>
        </div>


        <!-- 가입 끝 -->



        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>          
        </div>
      </div>
    </div>
  </div>
</div>

  


</body>
</html>