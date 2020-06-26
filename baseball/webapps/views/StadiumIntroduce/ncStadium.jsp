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
        <link href="/baseball/resources/css/NCstyles.css" rel="stylesheet" />
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
                <!-- Masthead Avatar Image--><img class="masthead-avatar mb-5" src="/baseball/resources/assets/img/nc/nc.png" alt="" /><!-- Masthead Heading-->
                <h1 class="masthead-heading text-uppercase mb-0">NC다이노스</h1>
                <!-- Icon Divider-->
                <div class="divider-custom divider-light">
                    <div class="divider-custom-line"></div>
                    <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                    <div class="divider-custom-line"></div>
                </div>
                <!-- Masthead Subheading-->
                <p class="masthead-subheading font-weight-light mb-0">창원 NC파크</p>
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
	   <img class="SKstadium" src="/baseball/resources/assets/img/nc/ncstadium.png" style="margin-left: auto; margin-right: auto; display: block" alt="구장 이미지 준비중입니다." /><br><br><br>
                <!-- About Section Content-->
                <div class="row">
                    <div class="col-lg-4 ml-auto"><p class="lead">NC 다이노스의 새 둥지인 창원NC파크는 1982년 건립된 마산종합운동장을 철거 후 2019년 3월 18일 공식 개장했습니다. 창원NC파크의 관람석은 경기 관람에 최적의 각도로 설계해 쾌적하고 안전합니다. 그라운드에 최고로 접근한 내야석은 생생한 관전 시야를 제공합니다. 관중석 뒤 콘코스는 내외야를 한 바퀴 도는 동안 막힌 구간이 없이 개방감이 뛰어나며, 매장을 이용하는 동안에도 경기 상황을 놓치지 않도록 설계했습니다. 32개의 스카이박스와 프리미엄석은 창원NC파크를 최고의 비즈니스 장소이자 모임의 장소로 만들어줍니다. </p></div>
                    <div class="col-lg-4 mr-auto"><p class="lead">무장애 건축물 인증을 받은 창원NC파크의 완만한 경사로와 관람석 내 에스컬레이터는 장애인과 노약자, 가족 관람객 모두에게 편의를 제공합니다. 크고 선명한 주전광판과 보조전광판, 길이 200m로 국내 야구장 최장의 리본 전광판은 다양한 정보와 화려한 볼거리를 제공합니다. 최고 수준의 음향시설은 어느 좌석에서나 선명하고 동일한 음향을 즐길 수 있게 해주고, LED 야간조명은 따뜻한 실내조명과 어우러지며 야간경기의 묘미를 더해줍니다. 최고의 팬 친화적인 야구장인 창원NC파크는 찾아주신 팬들에게 야구의 즐거움과 색다른 팬 경험을 선물할 것입니다. </p></div>
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
		- 100번, 160번, 105번, 116번, 102번, 106번, 107번, 108번<br>
		- 109번, 112번, 163번, 164번, 703번, 704번, 760번, 762번, 801번, 860번<br><br>
		승용차 이용안내<br>
		- 남해고속도로 서마산IC 진출하여 마산종합운동장 방면 약 2.5km. 종합운동장 진입<br>
		</p>
	        </div>
                    <div class="col-lg-4 mr-auto"><p class="lead">
		주차장 개요<br>
		- 지하 주차장, 철골 주차장, 마산 야구장, 마산회원구청 주변 노상 주차장(홈플러스 마산점, 롯데마트 양덕점, 신세계백화점 마산점)으로 구성되어 있다. 경기 시작 1시간 전, 끝나고 1시간 후 까지만 무료 주차이고 나머지는 유료 주차
		</p>
	        </div>
                </div>
                <!-- About Section Button-->
                <div class="text-center mt-4">
                    <a class="btn btn-xl btn-outline-light" href="https://map.naver.com/v5/entry/place/36516872?c=14313276.6422976,4194159.4584360,15,0,0,0,dh" target=”_blank”><i class="fas fa-download mr-2"></i>지도보기!!!</a>
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
                            <img class="img-fluid" src="/baseball/resources/assets/img/nc/board.jpg" alt="업로드 실패" />
                        </div>
                    </div>
                    <!-- Portfolio Item 2-->
                    <div class="col-md-6 col-lg-4 mb-5">
                        <div class="portfolio-item mx-auto" data-toggle="modal" data-target="#portfolioModal2">
                            <div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                                <div class="portfolio-item-caption-content text-center text-white"><i class="fas fa-plus fa-3x"></i></div>
                            </div>
                            <img class="img-fluid" src="/baseball/resources/assets/img/nc/fpark.png" alt="" />
                        </div>
                    </div>
                    <!-- Portfolio Item 3-->
                    <div class="col-md-6 col-lg-4 mb-5">
                        <div class="portfolio-item mx-auto" data-toggle="modal" data-target="#portfolioModal3">
                            <div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                                <div class="portfolio-item-caption-content text-center text-white"><i class="fas fa-plus fa-3x"></i></div>
                            </div>
                            <img class="img-fluid" src="/baseball/resources/assets/img/nc/bus.png" alt="" />
                        </div>
                    </div>
                    <!-- Portfolio Item 4-->
                    <div class="col-md-6 col-lg-4 mb-5 mb-lg-0">
                        <div class="portfolio-item mx-auto" data-toggle="modal" data-target="#portfolioModal4">
                            <div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                                <div class="portfolio-item-caption-content text-center text-white"><i class="fas fa-plus fa-3x"></i></div>
                            </div>
                            <img class="img-fluid" src="/baseball/resources/assets/img/nc/noise.png" alt="" />
                        </div>
                    </div>
                    <!-- Portfolio Item 5-->
                    <div class="col-md-6 col-lg-4 mb-5 mb-md-0">
                        <div class="portfolio-item mx-auto" data-toggle="modal" data-target="#portfolioModal5">
                            <div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                                <div class="portfolio-item-caption-content text-center text-white"><i class="fas fa-plus fa-3x"></i></div>
                            </div>
                            <img class="img-fluid" src="/baseball/resources/assets/img/nc/sight.png" alt="" />
                        </div>
                    </div>
                    <!-- Portfolio Item 6-->
                    <div class="col-md-6 col-lg-4">
                        <div class="portfolio-item mx-auto" data-toggle="modal" data-target="#portfolioModal6">
                            <div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                                <div class="portfolio-item-caption-content text-center text-white"><i class="fas fa-plus fa-3x"></i></div>
                            </div>
                            <img class="img-fluid" src="/baseball/resources/assets/img/nc/store.png" alt="" />
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
                                    <h2 class="portfolio-modal-title text-secondary text-uppercase mb-0" id="portfolioModal1Label">전광판</h2>
                                    <!-- Icon Divider-->
                                    <div class="divider-custom">
                                        <div class="divider-custom-line"></div>
                                        <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                                        <div class="divider-custom-line"></div>
                                    </div>
                                    <!-- Portfolio Modal - Image--><img class="img-fluid rounded mb-5" src="/baseball/resources/assets/img/nc/board.jpg" alt="" /><!-- Portfolio Modal - Text-->
                                    <p class="mb-5">기본적으로 메이저리그식 전광판 표기를 지향하기때문에 KBO 리그의 타 야구장과 많은 차이가 있다. 메인 전광판에서는 타자 성적을 타율이 아닌 OPS만 보여주고 있다. 물론 상세 화면에서는 타율, 홈런, 타점, 출루율, 장타율 등 상세 스탯도 나온다. 대부분의 구장이 양 팀 모두의 타선을 계속 표시해준다면 창원 NC 파크의 전광판은 공격이 진행중인 팀의 타순만 표시해주며[20], 수비가 진행중인 팀은 DUE-UP이라고 하여 다음 타순부터 3명까지만 보여준다. 이외에 LOB(잔루수), 상황별 스텟과 같은 유용한 정보도 제공한다. 보조 전광판에서는 투수들은 구종과 구속, 체감구속과 회전수(RPM)까지 보여주고 있고 타자들은 타구가 인플레이 타구가 될 경우 발사각도와 타구속도, 비거리를 보여준다. </p>
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
                                    <h2 class="portfolio-modal-title text-secondary text-uppercase mb-0" id="portfolioModal2Label">주차문제</h2>
                                    <!-- Icon Divider-->
                                    <div class="divider-custom">
                                        <div class="divider-custom-line"></div>
                                        <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                                        <div class="divider-custom-line"></div>
                                    </div>
                                    <!-- Portfolio Modal - Image--><img class="img-fluid rounded mb-5" src="/baseball/resources/assets/img/nc/fpark.png" alt="" /><!-- Portfolio Modal - Text-->
                                    <p class="mb-5">새 구장 착공 전 마산 야구장의 주차가능면수는 1,207면이며, 신축 구장이 완공 이후에는 주차빌딩 694면 포함, 1,685면이다. 주차장이 수용 인원의 10%도 미치지 못하는 것이다. 여기서 한 가지 알아두어야 하는 사항이 있는데 주차면수의 파악은 주차선을 세는 것이고 실제로 이중주차를 많이 하기 때문에 주차가능대수는 훨씬 많다. 그럼에도 인근 지역 월 주차소요도 있다는 점을 감안하면 많이 부족하다,</p>
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
                                    <h2 class="portfolio-modal-title text-secondary text-uppercase mb-0" id="portfolioModal3Label">주말 홈경기 셔틀버스 운영</h2>
                                    <!-- Icon Divider-->
                                    <div class="divider-custom">
                                        <div class="divider-custom-line"></div>
                                        <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                                        <div class="divider-custom-line"></div>
                                    </div>
                                    <!-- Portfolio Modal - Image--><img class="img-fluid rounded mb-5" src="/baseball/resources/assets/img/nc/bus.png" alt="" /><!-- Portfolio Modal - Text-->
                                    <p class="mb-5">2019시즌 개막과 함께 주말 홈경기 셔틀버스를 운행하기 시작했다! 탑승 장소는 창원문성대학교 주차장, 봉암공단 주차장, 진해구 풍호공원 주차장, 홈플러스 김해점, 홈플러스 진주점이다. 구단 공식 홈페이지 링크를 참조, 시간을 잘 확인하자. 창원문성대 주차장 셔틀버스 임시노선은 시내버스 요금으로 유료 운영, 시외지역(김해, 진주) 셔틀버스는 티켓링크 내 승차권 구매 페이지에 접속해서 별도 구매 후 이용 가능하다.</p>
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
                                    <h2 class="portfolio-modal-title text-secondary text-uppercase mb-0" id="portfolioModal4Label">소음문제</h2>
                                    <!-- Icon Divider-->
                                    <div class="divider-custom">
                                        <div class="divider-custom-line"></div>
                                        <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                                        <div class="divider-custom-line"></div>
                                    </div>
                                    <!-- Portfolio Modal - Image--><img class="img-fluid rounded mb-5" src="/baseball/resources/assets/img/nc/noise.png" alt="" /><!-- Portfolio Modal - Text-->
                                    <p class="mb-5">기존 마산 야구장에 비해 주택가와 더 가깝다 보니 문제가 생길 수밖에 없다. 광주-기아 챔피언스 필드와 비슷한 문제를 가지고 있다. 또한 그라운드가 지하로 내려가며 내야 응원석에서 나오는 소음이 바로 마주보는 주택가로 향하게 구조되어 있어서 공청회에서도 문제가 되었다. 외야 건물이 소음 일부를 막는 챔필, 라팍과는 달리 주민들이 우려하는 중이다. 일단 설계상으론 빛공해랑 소음공해가 일어나지 않는다고 하는데 어떻게 될 지는 지켜볼 일. 이 때문인지 NC는 인근 창원 메트로시티와 양덕 코오롱하늘채, 산호동 거주 주민들을 대상으로 야구장 입장료를 할인해주고 있다</p>
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
                                    <h2 class="portfolio-modal-title text-secondary text-uppercase mb-0" id="portfolioModal5Label">생동감있는 시야</h2>
                                    <!-- Icon Divider-->
                                    <div class="divider-custom">
                                        <div class="divider-custom-line"></div>
                                        <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                                        <div class="divider-custom-line"></div>
                                    </div>
                                    <!-- Portfolio Modal - Image--><img class="img-fluid rounded mb-5" src="/baseball/resources/assets/img/nc/sight.png" alt="" /><!-- Portfolio Modal - Text-->
                                    <p class="mb-5"> 신축 야구장임에도 관중석의 첫 단 높이가 높았던 광주-기아 챔피언스 필드, 대구 삼성 라이온즈 파크와 달리 그라운드와 거의 동일하기 때문에 더욱 생동감 있는 관람이 가능하다.</p>
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
                                    <h2 class="portfolio-modal-title text-secondary text-uppercase mb-0" id="portfolioModal6Label">편의 시설</h2>
                                    <!-- Icon Divider-->
                                    <div class="divider-custom">
                                        <div class="divider-custom-line"></div>
                                        <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                                        <div class="divider-custom-line"></div>
                                    </div>
                                    <!-- Portfolio Modal - Image--><img class="img-fluid rounded mb-5" src="/baseball/resources/assets/img/nc/store.png" alt="" /><!-- Portfolio Modal - Text-->
                                    <p class="mb-5">11개의 편의 시설이 있으며 다른 구장과 비교해 숫자는 별로 없다고 느껴지지만 주변에 마트나 백화점이 있어 부족하다는 느낌은 없다.</p>
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
