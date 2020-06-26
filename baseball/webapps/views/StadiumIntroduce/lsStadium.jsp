<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
     	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
 		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
  		  crossorigin="anonymous">  		  
  		  
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="/baseball/resources/assets/img/favicon.ico" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v5.13.0/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="/baseball/resources/css/styles.css" rel="stylesheet" />
        <link href="/baseball/resources/css/LSstyles.css" rel="stylesheet" />
        <script src="/baseball/resources/js/bootstrap.min.js">
        <%@ include file="/views/common/header.jsp" %>
    </head>
    
		
		 <!-- Navigation-->
        <!--
        <nav class="navbar navbar-expand-lg bg-secondary text-uppercase fixed-top" id="mainNav">
            <div class="container">
                <a class="navbar-brand js-scroll-trigger" href="#page-top">인천SK 행복드림구장</a>
	    <button class="navbar-toggler navbar-toggler-right text-uppercase font-weight-bold bg-primary text-white rounded" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">Menu <i class="fas fa-bars"></i></button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="#portfolio">구장 소개</a></li>
                        <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="#about">길찾기</a></li>
                        <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="#contact">편의시설</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        -->
<div id="page-top">
        <div style="position: fixed; right: 20px; bottom: 100px;">
	<div class="container">
                <a class="navbar-brand js-scroll-trigger" href="#page-top" style="font-size: 50px;">Top</a><br>
	    <button class="navbar-toggler navbar-toggler-right text-uppercase font-weight-bold bg-primary text-white rounded" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">Menu <i class="fas fa-bars"></i></button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="#portfolio">구장 소개</a></li>
                        <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="#about">길찾기</a></li>
                        <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="#contact">편의시설</a></li>
                    </ul>
                </div>
            </div>

        </div>


        <!-- Masthead-->
        <header class="masthead bg-primary text-white text-center">
            <div class="container d-flex align-items-center flex-column">
                <!-- Masthead Avatar Image--><img class="masthead-avatar mb-5" src="/baseball/resources/assets/img/ls/ls.png" alt="" /><!-- Masthead Heading-->
                <h1 class="masthead-heading text-uppercase mb-0">롯데 자이언츠</h1>
                <!-- Icon Divider-->
                <div class="divider-custom divider-light">
                    <div class="divider-custom-line"></div>
                    <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                    <div class="divider-custom-line"></div>
                </div>
                <!-- Masthead Subheading-->
                <p class="masthead-subheading font-weight-light mb-0">사직 야구장</p>
            </div>
        </header>


        <!-- 구장소개 Section-->
        <section class="page-section" id="portfolio">
            <div class="container">
                <!-- About Section Heading-->
                <h2 class="page-section-heading text-center text-uppercase text-secondary mb-0">구장소개</h2>
                <!-- Icon Divider-->
                <div class="divider-custom">
                    <div class="divider-custom-line"></div>
                    <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                    <div class="divider-custom-line"></div>
                </div>
	   <img class="SKstadium" src="/baseball/resources/assets/img/ls/lsstadium.png" style="margin-left: auto; margin-right: auto; display: block" alt="구장 이미지 준비중입니다." /><br><br><br>
                <!-- About Section Content-->
                <div class="row">
                    <div class="col-lg-4 ml-auto"><p class="lead">대한민국 부산광역시 동래구 사직동에 있는 야구장으로 1985년 10월에 완공되었으며 24,500석의 관람석이 있다. 구장 크기는 좌·우 펜스까지 95m, 중앙 펜스까지 118m이고, 펜스 높이가 펜스 상단 철망을 포함해서 4.8m다. 외형은 일본 요코하마 스타디움과 비슷하다.</p></div>
                    <div class="col-lg-4 mr-auto"><p class="lead">본래는 야구는 물론 축구나 럭비 등 다양한 종목의 경기가 함께 열릴 수 있는 다용도 종합경기장으로 지어졌다. 그래서 내야 관중석은 가변식이었으나, 지금은 야구 경기만 치르고 있어 내야석을 이동할 일은 없다.</p></div>
                </div>
            </div>
        </section>
        


        <!-- 오시는 길 Section-->
        <section class="page-section bg-primary text-white mb-0" id="about">
            <div class="container">
                <!-- About Section Heading-->
                <h2 class="page-section-heading text-center text-uppercase text-white">오시는 길</h2>
                <!-- Icon Divider-->
                <div class="divider-custom divider-light">
                    <div class="divider-custom-line"></div>
                    <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                    <div class="divider-custom-line"></div>
                </div>
                <!-- About Section Content-->
                <div class="row">
                    <div class="col-lg-4 ml-auto"><p class="lead"> 
		버스 안내<br>
		* 버스 : 10, 44, 50, 57, 80, 111, 131, 189, 1002(심야) <br />
		* 마을버스 : 17 <br /><br />
		자가용 안내 <br />
		* 경부고속도로 이용시 : 경부고속도로 - 구서I.C - 송월타올삼거리(우회전) - 사직야구장 <br />
		* 남해고속도로 이용시 : 남해고속도로 - 북부산진입 - 제2낙동교 - 만덕터널 - 반도보라아파트 - 사직야구장 <br />
		* 공항 이용시 : 구포대교방향 - 만덕터널 - 반도보라아파트 - 사직야구장(사직운동장) <br />
		</p>
	        </div>
                    <div class="col-lg-4 mr-auto"><p class="lead">
		지하철 안내<br>
		* 사직역 : 부산 3호선 사직역 1번 출구로 나와 아시아드대로를 따라 앞쪽으로 약 125m 직진합니다.
		이동 후 삼거리가 나오는데 우측에 있는 사직로로 방향을 틀어 자이언츠파크 앞 횡단보도까지 약 386m 직진합니다. <br />
		횡단보도를 건넌 후 우측방향으로 약 50m 직진하면 좌측에 부산사직종합운동장 입구가 있습니다. 
		* 종합운동장역 : 부산 3호선 종합운동장역(빅토리움) 11번 출구로 나와 아시아드대로를 따라 앞쪽으로 약 395m 직진합니다.
		이동 후 종합운동장 사거리가 나오는데 좌측으로 방향을 틀어 세계로병원 앞 횡단보도까지 약 174m 직진합니다.
		횡단보도를 건넌 후 우측방향으로 약 168m 직진하면 삼거리가 나옵니다.
		삼거리에서 좌측방향으로 틀어 약 217m 직진하면 좌측에 부산사직종합운동장 입구가 있습니다. 
		</p>
	        </div>
                </div>
                <!-- About Section Button-->
                <div class="text-center mt-4">
                    <a class="btn btn-xl btn-outline-light" href="https://map.naver.com/v5/search/사직%2B야구장?c=14366823.1760394,4190449.2952034,16,0,0,0,dh" target=”_blank”><i class="fas fa-download mr-2"></i>지도보기!!!</a>
                </div>
            </div>
        </section>
        


        <!-- 편의시설 Section-->
        <section class="page-section portfolio" id="contact">
            <div class="container">
                <!-- Portfolio Section Heading-->
                <h2 class="page-section-heading text-center text-uppercase text-secondary mb-0">이모저모</h2>
                <!-- Icon Divider-->
                <div class="divider-custom">
                    <div class="divider-custom-line"></div>
                    <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                    <div class="divider-custom-line"></div>
                </div>
                <!-- Portfolio Grid Items-->
                <div class="row">
                    <!-- Portfolio Item 1-->
                    <div class="col-md-6 col-lg-4 mb-5">
                        <div class="portfolio-item mx-auto" data-toggle="modal" data-target="#portfolioModal1">
                            <div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                                <div class="portfolio-item-caption-content text-center text-white"><i class="fas fa-plus fa-3x"></i></div>
                            </div>
                            <img class="img-fluid" src="/baseball/resources/assets/img/ls/mus.png" alt="업로드 실패" />
                        </div>
                    </div>
                    <!-- Portfolio Item 2-->
                    <div class="col-md-6 col-lg-4 mb-5">
                        <div class="portfolio-item mx-auto" data-toggle="modal" data-target="#portfolioModal2">
                            <div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                                <div class="portfolio-item-caption-content text-center text-white"><i class="fas fa-plus fa-3x"></i></div>
                            </div>
                            <img class="img-fluid" src="/baseball/resources/assets/img/ls/statue.jpg" alt="" />
                        </div>
                    </div>
                    <!-- Portfolio Item 3-->
                    <div class="col-md-6 col-lg-4 mb-5">
                        <div class="portfolio-item mx-auto" data-toggle="modal" data-target="#portfolioModal3">
                            <div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                                <div class="portfolio-item-caption-content text-center text-white"><i class="fas fa-plus fa-3x"></i></div>
                            </div>
                            <img class="img-fluid" src="/baseball/resources/assets/img/ls/beat.png" alt="" />
                        </div>
                    </div>
                    <!-- Portfolio Item 4-->
                    <div class="col-md-6 col-lg-4 mb-5 mb-lg-0">
                        <div class="portfolio-item mx-auto" data-toggle="modal" data-target="#portfolioModal4">
                            <div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                                <div class="portfolio-item-caption-content text-center text-white"><i class="fas fa-plus fa-3x"></i></div>
                            </div>
                            <img class="img-fluid" src="/baseball/resources/assets/img/ls/first.jpg" alt="" />
                        </div>
                    </div>
                    <!-- Portfolio Item 5-->
                    <div class="col-md-6 col-lg-4 mb-5 mb-md-0">
                        <div class="portfolio-item mx-auto" data-toggle="modal" data-target="#portfolioModal5">
                            <div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                                <div class="portfolio-item-caption-content text-center text-white"><i class="fas fa-plus fa-3x"></i></div>
                            </div>
                            <img class="img-fluid" src="/baseball/resources/assets/img/ls/ma.jpg" alt="" />
                        </div>
                    </div>
                    <!-- Portfolio Item 6-->
                    <div class="col-md-6 col-lg-4">
                        <div class="portfolio-item mx-auto" data-toggle="modal" data-target="#portfolioModal6">
                            <div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                                <div class="portfolio-item-caption-content text-center text-white"><i class="fas fa-plus fa-3x"></i></div>
                            </div>
                            <img class="img-fluid" src="/baseball/resources/assets/img/ls/event.png" alt="" />
                        </div>
                    </div>
                </div>
            </div>
        </section>


        <!-- Portfolio Modals--><!-- Portfolio Modal 1-->
        <div class="portfolio-modal modal fade" id="portfolioModal1" tabindex="-1" role="dialog" aria-labelledby="portfolioModal1Label" aria-hidden="true">
            <div class="modal-dialog modal-xl" role="document">
                <div class="modal-content">
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true"><i class="fas fa-times"></i></span>
                    </button>
                    <div class="modal-body text-center">
                        <div class="container">
                            <div class="row justify-content-center">
                                <div class="col-lg-8">
                                    <!-- Portfolio Modal - Title-->
                                    <h2 class="portfolio-modal-title text-secondary text-uppercase mb-0" id="portfolioModal1Label">롯데 자이언츠 박물관</h2>
                                    <!-- Icon Divider-->
                                    <div class="divider-custom">
                                        <div class="divider-custom-line"></div>
                                        <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                                        <div class="divider-custom-line"></div>
                                    </div>
                                    <!-- Portfolio Modal - Image--><img class="img-fluid rounded mb-5" src="/baseball/resources/assets/img/ls/mus.png" alt="" /><!-- Portfolio Modal - Text-->
                                    <p class="mb-5">한국프로야구 원년 창단멤버인 롯데자이언츠의 역사를 고스란히 담은 “자이언츠 야구 박물관”은 2009년도 시즌 개막에 맞춰 오픈하였습니다. 
사직구장 2층에 위치한 “자이언츠 야구 박물관”은 총 면적 496㎡(약 150평)로 50여명이 여유롭게 감상할 수 있는 공간이며 총 400여점이 전시되어 롯데자이언츠 역사를 총망라하고 있습니다.
주요 구성으로는 자이언츠의 영웅, 우승/준우승, 역사관, 용품관, 체험관으로 나뉘어 있습니다.</p>
                                    <button class="btn btn-primary" data-dismiss="modal"><i class="fas fa-times fa-fw"></i>Close Window</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Portfolio Modal 2-->
        <div class="portfolio-modal modal fade" id="portfolioModal2" tabindex="-1" role="dialog" aria-labelledby="portfolioModal2Label" aria-hidden="true">
            <div class="modal-dialog modal-xl" role="document">
                <div class="modal-content">
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true"><i class="fas fa-times"></i></span>
                    </button>
                    <div class="modal-body text-center">
                        <div class="container">
                            <div class="row justify-content-center">
                                <div class="col-lg-8">
                                    <!-- Portfolio Modal - Title-->
                                    <h2 class="portfolio-modal-title text-secondary text-uppercase mb-0" id="portfolioModal2Label">최동원 동상</h2>
                                    <!-- Icon Divider-->
                                    <div class="divider-custom">
                                        <div class="divider-custom-line"></div>
                                        <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                                        <div class="divider-custom-line"></div>
                                    </div>
                                    <!-- Portfolio Modal - Image--><img class="img-fluid rounded mb-5" src="/baseball/resources/assets/img/ls/statue.jpg" alt="" /><!-- Portfolio Modal - Text-->
                                    <p class="mb-5">사직 야구장 본부석 출입구 인근에 최동원 선수 동상이 있다. 2013년 들어 최동원의 이 경기장에 롯데 감독으로 금의환향하고 싶다는 꿈을 추모하기 위해 동상 제작 모금을 했고  2013년 9월 들어 동상이 공개, 정식 제막식은 9월 14일에 열렸다. 최동원 선수 모친 김정자 여사가 종종 아들을 보러 방문하는 것으로 알려졌다.</p>
                                    <button class="btn btn-primary" data-dismiss="modal"><i class="fas fa-times fa-fw"></i>Close Window</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Portfolio Modal 3-->
        <div class="portfolio-modal modal fade" id="portfolioModal3" tabindex="-1" role="dialog" aria-labelledby="portfolioModal3Label" aria-hidden="true">
            <div class="modal-dialog modal-xl" role="document">
                <div class="modal-content">
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true"><i class="fas fa-times"></i></span>
                    </button>
                    <div class="modal-body text-center">
                        <div class="container">
                            <div class="row justify-content-center">
                                <div class="col-lg-8">
                                    <!-- Portfolio Modal - Title-->
                                    <h2 class="portfolio-modal-title text-secondary text-uppercase mb-0" id="portfolioModal3Label">사건사고</h2>
                                    <!-- Icon Divider-->
                                    <div class="divider-custom">
                                        <div class="divider-custom-line"></div>
                                        <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                                        <div class="divider-custom-line"></div>
                                    </div>
                                    <!-- Portfolio Modal - Image--><img class="img-fluid rounded mb-5" src="/baseball/resources/assets/img/ls/beat.png" alt="" /><!-- Portfolio Modal - Text-->
                                    <p class="mb-5">2006년 부산 사진구장 무서운아저씨들이 난동을 부려서 용감한 시민들이 맞서는 동영상이 인터넷에 돌아다닌다. 이외에도 발암물질인 석면이 그라운드에서 검출된 사건, 위조 입장권 사건, 꼴리검 사건, 관중 간 집단폭행 사건, 20,000호 홈런볼 쟁탈전 등 다양한 사건 사고가 있었다.</p>
                                    <button class="btn btn-primary" data-dismiss="modal"><i class="fas fa-times fa-fw"></i>Close Window</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Portfolio Modal 4-->
        <div class="portfolio-modal modal fade" id="portfolioModal4" tabindex="-1" role="dialog" aria-labelledby="portfolioModal4Label" aria-hidden="true">
            <div class="modal-dialog modal-xl" role="document">
                <div class="modal-content">
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true"><i class="fas fa-times"></i></span>
                    </button>
                    <div class="modal-body text-center">
                        <div class="container">
                            <div class="row justify-content-center">
                                <div class="col-lg-8">
                                    <!-- Portfolio Modal - Title-->
                                    <h2 class="portfolio-modal-title text-secondary text-uppercase mb-0" id="portfolioModal4Label">첫 장외 홈런</h2>
                                    <!-- Icon Divider-->
                                    <div class="divider-custom">
                                        <div class="divider-custom-line"></div>
                                        <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                                        <div class="divider-custom-line"></div>
                                    </div>
                                    <!-- Portfolio Modal - Image--><img class="img-fluid rounded mb-5" src="/baseball/resources/assets/img/ls/first.jpg" alt="" /><!-- Portfolio Modal - Text-->
                                    <p class="mb-5"> 이대호가 2007년 4월 21일 현대 유니콘스 정민태를 상대로 기록한 사직 야구장 첫 장외 홈런을 기념하는 동판이 당시 낙하지점에 있다.</p>
                                    <button class="btn btn-primary" data-dismiss="modal"><i class="fas fa-times fa-fw"></i>Close Window</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Portfolio Modal 5-->
        <div class="portfolio-modal modal fade" id="portfolioModal5" tabindex="-1" role="dialog" aria-labelledby="portfolioModal5Label" aria-hidden="true">
            <div class="modal-dialog modal-xl" role="document">
                <div class="modal-content">
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true"><i class="fas fa-times"></i></span>
                    </button>
                    <div class="modal-body text-center">
                        <div class="container">
                            <div class="row justify-content-center">
                                <div class="col-lg-8">
                                    <!-- Portfolio Modal - Title-->
                                    <h2 class="portfolio-modal-title text-secondary text-uppercase mb-0" id="portfolioModal5Label">독특한 문화</h2>
                                    <!-- Icon Divider-->
                                    <div class="divider-custom">
                                        <div class="divider-custom-line"></div>
                                        <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                                        <div class="divider-custom-line"></div>
                                    </div>
                                    <!-- Portfolio Modal - Image--><img class="img-fluid rounded mb-5" src="/baseball/resources/assets/img/ls/ma.jpg" alt="" /><!-- Portfolio Modal - Text-->
                                    <p class="mb-5">아주라 - 관중석으로 날아온 야구공을 잡으면 어린이에게 주는 것. 단, 파울볼에만 해당되며 홈런볼은 예외이다. 하지만 처음 취지와 다르게 파울볼을 강제로 어린이에게 주는 것이 되어버렸고 최근 롯데 팬들조차 사라져야할 악습이라며 말이 굉장히 많다. 현재 거의 사라진 상태이다. <br />
주황 봉다리 - 참고로 봉지 응원은 현대 유니콘스가 먼저 했다. 2016년 삼성과의 클래식 시리즈에 한해서 주황색이 아닌 파란색 봉다리로 응원했는데 이는 삼성의 팀 색깔이 파란색이기 때문에 특별히 이벤트 취지에 맞게 바꾼 것이다. 2017~2018 시즌을 기점으로 부산의 상징 동백꽃과 롯데그룹 CI와의 통일성을 위해 붉은색으로 바뀌었다. 또한 같은 연고 농구단에서도 KTF 매직윙스 시절에 봉다리 응원을 펼친 적이 있었다. <br />
신문지 응원 - 영화 위험한 상견례에서 최초로 신문지 응원하는 모습을 표현했다. 응원도구가 없어 아무거나 주워서 흔든게 하필 찢어진 신문지 였다는 설정. 최근에는 찢은 신문지를 본따 만든 응원도구가 등장했다. 2008년 무려 8년 만에 포스트시즌에 진출했는데 신문지 응원은 팬들의 목청으로만 응원 소리를 내야 했기 때문에 큰 응원 소리를 쉽게 내기 위해 구단에서 막대 풍선으로 응원하기를 권장했다. 그 이후 신문지 대신 응원 막대 풍선을 가져오는 팬이 늘었고 2012년을 전후로 신문지 응원은 완벽하게 사장되었다. <br /></p>
                                    <button class="btn btn-primary" data-dismiss="modal"><i class="fas fa-times fa-fw"></i>Close Window</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
		<!-- Portfolio Modal 6-->
        <div class="portfolio-modal modal fade" id="portfolioModal6" tabindex="-1" role="dialog" aria-labelledby="portfolioModal6Label" aria-hidden="true">
            <div class="modal-dialog modal-xl" role="document">
                <div class="modal-content">
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true"><i class="fas fa-times"></i></span>
                    </button>
                    <div class="modal-body text-center">
                        <div class="container">
                            <div class="row justify-content-center">
                                <div class="col-lg-8">
                                    <!-- Portfolio Modal - Title-->
                                    <h2 class="portfolio-modal-title text-secondary text-uppercase mb-0" id="portfolioModal6Label">이벤트</h2>
                                    <!-- Icon Divider-->
                                    <div class="divider-custom">
                                        <div class="divider-custom-line"></div>
                                        <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                                        <div class="divider-custom-line"></div>
                                    </div>
                                    <!-- Portfolio Modal - Image--><img class="img-fluid rounded mb-5" src="/baseball/resources/assets/img/ls/event.png" alt="" /><!-- Portfolio Modal - Text-->
                                    <p class="mb-5">2020년 코로나 사태로 사회적 거리두기 캠페인을 실행 중이다. 비록 무관중으로 경기가 진행되는 초유의 사태지만 팬들의 마음을  최대한 달래고자 온라인으로 유니폼 구매시 추첨을 통해 친필 사인을 해당 유니폼에 적어서 전달 해주는 이벤트를 열었다.</p>
                                    <button class="btn btn-primary" data-dismiss="modal"><i class="fas fa-times fa-fw"></i>Close Window</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        </div>


        <!-- Bootstrap core JS-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.bundle.min.js"></script>
        <!-- Third party plugin JS-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>
        <!-- Contact form JS-->
        <script src="/baseball/resources/assets/mail/jqBootstrapValidation.js"></script>
        <script src="/baseball/resources/assets/mail/contact_me.js"></script>
        <!-- Core theme JS-->
        <script src="/baseball/resources/js/scripts.js"></script>
        
        <%@ include file="../common/footer.jsp" %>
        

</html>
