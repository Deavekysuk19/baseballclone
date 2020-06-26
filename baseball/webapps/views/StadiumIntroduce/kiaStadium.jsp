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
        <link href="/baseball/resources/css/KIAstyles.css" rel="stylesheet" />
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
                <!-- Masthead Avatar Image--><img class="masthead-avatar mb-5" src="/baseball/resources/assets/img/kia/kia.jpg" alt="" /><!-- Masthead Heading-->
                <h1 class="masthead-heading text-uppercase mb-0">KIA타이거즈</h1>
                <!-- Icon Divider-->
                <div class="divider-custom divider-light">
                    <div class="divider-custom-line"></div>
                    <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                    <div class="divider-custom-line"></div>
                </div>
                <!-- Masthead Subheading-->
                <p class="masthead-subheading font-weight-light mb-0">광주-기아 챔피언스 필드</p>
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
	   <img class="SKstadium" src="/baseball/resources/assets/img/kia/kiastadium.jpg" style="margin-left: auto; margin-right: auto; display: block" alt="구장 이미지 준비중입니다." /><br><br><br>
                <!-- About Section Content-->
                <div class="row">
                    <div class="col-lg-4 ml-auto"><p class="lead">2014년 2월 28일에 완공된 1군 야구장. 무등경기장의 주 경기장으로, 무등 야구장 바로 옆에 있는 야구장이다. 2014 시즌부터 KIA 타이거즈의 홈 구장으로 사용하고 있다. 인천 SK행복드림구장 개장 이후 12년만에 선보인 1군 메인 구장이라 큰 관심을 받았던 야구장이다.</p></div>
                    <div class="col-lg-4 mr-auto"><p class="lead">대한민국 야구장 중에서는 최초의 개방형 야구장이라는 타이틀을 가지고 있으며, 실질적인 프로 전용 구장이다. 대한민국 프로스포츠 최초로 네이밍 라이츠를 기업에게 판매한 구장이다. 기아자동차가 이 구장 건설에 300억 원을 투자했고 그 금액에는 명칭 사용권 사용료도 포함되어 있다. </p></div>
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
		- 광주역 → 광주-기아 챔피언스필드(버스) : 풍암16, 일곡38, 운림51, 금남58, 임곡89, 첨단95, 송정98, 지원151 승차 → 광주-기아 챔피언스필드 정류소 하차<br>
		- 광주역 → 광주-기아 챔피언스필드(버스) : 금남 임곡89, 송정98, 지원151 광주역 정류소 승차 → 광주-기아 챔피언스필드 정류소 하차<br>
		- 광주역 → 광주-기아 챔피언스필드(택시) : 10 ~ 15분 소요<br>
		- 광천버스터미널 → 광주-기아 챔피언스필드(버스) : 풍암16 광천터미널 정류소 승차 → 광주-기아 챔피언스필드 정류소 하차 지원151 광천터미널 정류소 승차 → 광주-기아 챔피언스필드 정류소 하차 <br>
		- 광천버스터미널 → 광주-기아 챔피언스필드(택시) : 10 ~ 15분 소요<br>
		</p>
	        </div>
                    <div class="col-lg-4 mr-auto"><p class="lead">
		- 광주송정역 → 광주-기아 챔피언스필드(버스) : 금남 임곡89, 송정98, 지원151 광주역 정류소 승차 → 광주-기아 챔피언스필드 정류소 하차<br>
		- 광주송정역 → 광주-기아 챔피언스필드(지하철) <br>
		- 광주송정역 승차 → 농성역 하차, 택시 10분 소요 <br>
		- 광주송정역 승차 → 금남로 5가역 하차 후 6번 출구 앞 버스정류소에서 운림51 버스 승차 → 광주-기아 챔피언스필드 정류소 하차 <br>
		- 광주송정역 승차 → 쌍촌역 하차 후 4번 출구 앞 버스정류소에서(상무1동 주민센터 정류소) 송암47 버스 승차 → 광주-기아 챔피언스필드 정류소 하차 <br>
		- 광주송정역 → 광주-기아 챔피언스필드(택시) : 30분 소요
		
		</p>
	        </div>
                </div>
                <!-- About Section Button-->
                <div class="text-center mt-4">
                    <a class="btn btn-xl btn-outline-light" href="https://map.naver.com/v5/entry/place/34522301?c=14124688.5785895,4186616.0792071,15,0,0,0,dh" target=”_blank”><i class="fas fa-download mr-2"></i>지도보기!!!</a>
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
                            <img class="img-fluid" src="/baseball/resources/assets/img/kia/name.png" alt="업로드 실패" />
                        </div>
                    </div>
                    <!-- Portfolio Item 2-->
                    <div class="col-md-6 col-lg-4 mb-5">
                        <div class="portfolio-item mx-auto" data-toggle="modal" data-target="#portfolioModal2">
                            <div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                                <div class="portfolio-item-caption-content text-center text-white"><i class="fas fa-plus fa-3x"></i></div>
                            </div>
                            <img class="img-fluid" src="/baseball/resources/assets/img/kia/environ.png" alt="" />
                        </div>
                    </div>
                    <!-- Portfolio Item 3-->
                    <div class="col-md-6 col-lg-4 mb-5">
                        <div class="portfolio-item mx-auto" data-toggle="modal" data-target="#portfolioModal3">
                            <div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                                <div class="portfolio-item-caption-content text-center text-white"><i class="fas fa-plus fa-3x"></i></div>
                            </div>
                            <img class="img-fluid" src="/baseball/resources/assets/img/kia/friend.jpg" alt="" />
                        </div>
                    </div>
                    <!-- Portfolio Item 4-->
                    <div class="col-md-6 col-lg-4 mb-5 mb-lg-0">
                        <div class="portfolio-item mx-auto" data-toggle="modal" data-target="#portfolioModal4">
                            <div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                                <div class="portfolio-item-caption-content text-center text-white"><i class="fas fa-plus fa-3x"></i></div>
                            </div>
                            <img class="img-fluid" src="/baseball/resources/assets/img/kia/park.jpg" alt="" />
                        </div>
                    </div>
                    <!-- Portfolio Item 5-->
                    <div class="col-md-6 col-lg-4 mb-5 mb-md-0">
                        <div class="portfolio-item mx-auto" data-toggle="modal" data-target="#portfolioModal5">
                            <div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                                <div class="portfolio-item-caption-content text-center text-white"><i class="fas fa-plus fa-3x"></i></div>
                            </div>
                            <img class="img-fluid" src="/baseball/resources/assets/img/kia/player.png" alt="" />
                        </div>
                    </div>
                    <!-- Portfolio Item 6-->
                    <div class="col-md-6 col-lg-4">
                        <div class="portfolio-item mx-auto" data-toggle="modal" data-target="#portfolioModal6">
                            <div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                                <div class="portfolio-item-caption-content text-center text-white"><i class="fas fa-plus fa-3x"></i></div>
                            </div>
                            <img class="img-fluid" src="/baseball/resources/assets/img/kia/store.png" alt="" />
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
                                    <h2 class="portfolio-modal-title text-secondary text-uppercase mb-0" id="portfolioModal1Label">구장명칭</h2>
                                    <!-- Icon Divider-->
                                    <div class="divider-custom">
                                        <div class="divider-custom-line"></div>
                                        <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                                        <div class="divider-custom-line"></div>
                                    </div>
                                    <!-- Portfolio Modal - Image--><img class="img-fluid rounded mb-5" src="/baseball/resources/assets/img/kia/name.png" alt="" /><!-- Portfolio Modal - Text-->
                                    <p class="mb-5">구장 건설 협약 당시 KIA 타이거즈가 구장 명칭권을 가지고 있었고, 광주광역시와의 협약으로 '광주'와 '기아'가 반드시 들어가야 한다는 조항을 넣었다. 광주를 상징하는 구장임과 동시에 모기업인 기아자동차를 홍보하기 위해서 두 가지 이름을 다 집어넣다 보니 두 단어를 하이픈(-)으로 묶은 괴상한 조합이 완성된 것이다. </p>
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
                                    <h2 class="portfolio-modal-title text-secondary text-uppercase mb-0" id="portfolioModal2Label">자연친화적 구장</h2>
                                    <!-- Icon Divider-->
                                    <div class="divider-custom">
                                        <div class="divider-custom-line"></div>
                                        <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                                        <div class="divider-custom-line"></div>
                                    </div>
                                    <!-- Portfolio Modal - Image--><img class="img-fluid rounded mb-5" src="/baseball/resources/assets/img/kia/environ.png" alt="" /><!-- Portfolio Modal - Text-->
                                    <p class="mb-5"> '환경 친화적인 공원같은 개방형 야구장'을 표방하며 건설되었다. 그래서 외야가 심심하게 뚫려있는 구조로 지어졌고 구장 내/외로 녹지공간과 휴식공간을 많이 조성하는 등 개방성, 환경친화성을 염두하고 지은 요소가 곳곳에 많이 있다. 실제로 야구장 주변에 나무를 무려 5만 그루(!!)나 심는 등 녹지화에 신경을 많이 쓴 흔적이 있다. 추후 외야석을 확장할 때에도 3루 쪽 외야는 잔디석으로 그대로 남겨두어서 개방형 구장이라는 특징을 살릴 계획. 그래서 1루 쪽 외야에 외야석 확장을 대비한 구조가 마련되어 있다.</p>
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
                                    <h2 class="portfolio-modal-title text-secondary text-uppercase mb-0" id="portfolioModal3Label">정감가는 구장</h2>
                                    <!-- Icon Divider-->
                                    <div class="divider-custom">
                                        <div class="divider-custom-line"></div>
                                        <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                                        <div class="divider-custom-line"></div>
                                    </div>
                                    <!-- Portfolio Modal - Image--><img class="img-fluid rounded mb-5" src="/baseball/resources/assets/img/kia/friend.jpg" alt="" /><!-- Portfolio Modal - Text-->
                                    <p class="mb-5">외국의 사례를 벤치마킹하여 구장 건립비를 기부한 사람들의 이름을 바닥돌에 새기는 이벤트를 열어 시공을 했으며, 선수 전용 주차장을 만들어 선수 동선과 관중 동선을 분리하고 무등경기장 철거시 남겨두는 성화봉송대 하부에 야구박물관을 설치하는 등 내부시설을 그야말로 관중 및 선수 친화적 시설로 구비하게끔 설계하였다는 점 등이 눈에 띈다.</p>
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
                                    <h2 class="portfolio-modal-title text-secondary text-uppercase mb-0" id="portfolioModal4Label">주차문제</h2>
                                    <!-- Icon Divider-->
                                    <div class="divider-custom">
                                        <div class="divider-custom-line"></div>
                                        <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                                        <div class="divider-custom-line"></div>
                                    </div>
                                    <!-- Portfolio Modal - Image--><img class="img-fluid rounded mb-5" src="/baseball/resources/assets/img/kia/park.jpg" alt="" /><!-- Portfolio Modal - Text-->
                                    <p class="mb-5">무등 야구장을 홈구장으로 쓰던 시절에도 이 문제는 존재했지만 수용인원이 배 이상으로 불어난 광주-기아 챔피언스 필드로 옮겨지고 나서 이 문제가 더 심각해졌다. 챔피언스 필드를 지으면서 500대 가량밖에 수용할 수 없는 무등야구장의 주차 면수를 확대하기 위해서 지하주차장을 지었으나, 이를 합하여도 1100여대만 수용할 수밖에 없는 문제점이 있는데다 주변에 주차장을 마련할 수 있는 부지가 준비되지 않았다는 점에서 주차 및 교통문제가 가장 심각한 문제로 대두되었다. 이와 관련해서 광주천과 연결된 자전거도로를 새 야구장의 지하주차장과의 연계를 통해 자전거로의 접근 편의성을 높이고 농성역과의 셔틀버스를 상시 연계하여 자가용의 부담율을 줄이고 대중교통 및 친환경 교통수단의 이용률을 높일 계획도 강구했지만 대중교통 접근이 여전히 불편한 챔피언스 필드의 접근성 때문에 여전히 자가용의 이용 비중이 높은 편이었고 결국 처음 제기되었던 우려가 현실로 나타난 것. 인천 SK행복드림구장이 4500여대나 수용 가능한 지하주차장을 구비하고 있다는 것, 잠실 야구장도 2000면을 가지고 있다는 것과 비교하면 심각한 상황. 결국 이 문제를 두고 임동 주민들이 구단 사무실을 찾아서 항의를 하는 등 구단 및 시의 대책을 촉구하고 있다.</p>
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
                                    <h2 class="portfolio-modal-title text-secondary text-uppercase mb-0" id="portfolioModal5Label">평등한 구장</h2>
                                    <!-- Icon Divider-->
                                    <div class="divider-custom">
                                        <div class="divider-custom-line"></div>
                                        <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                                        <div class="divider-custom-line"></div>
                                    </div>
                                    <!-- Portfolio Modal - Image--><img class="img-fluid rounded mb-5" src="/baseball/resources/assets/img/kia/player.png" alt="" /><!-- Portfolio Modal - Text-->
                                    <p class="mb-5">전체적으로 봤을 때 딱 중간. 현재 프로야구 1,2군 구장 통틀어서 통산 파크팩터가 가장 균형 잡힌 곳이 챔피언스 필드다. 투타 양쪽의 밸런스가 고루 잡혀있기에 야구장으로썬 가장 이상적이라 할 수 있다. 투수와 타자가 동등하게 순수 실력으로 맞붙는 야구장 계의 개념맵이라 할 수 있겠다. 속어로 구장빨이라 불리우는 환경적 영향이란게 극히 미미하기 때문에 사실상 선수 본인의 원래 실력이 그대로 드러나는 구장이다.</p>
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
                                    <h2 class="portfolio-modal-title text-secondary text-uppercase mb-0" id="portfolioModal6Label">입주시설</h2>
                                    <!-- Icon Divider-->
                                    <div class="divider-custom">
                                        <div class="divider-custom-line"></div>
                                        <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                                        <div class="divider-custom-line"></div>
                                    </div>
                                    <!-- Portfolio Modal - Image--><img class="img-fluid rounded mb-5" src="/baseball/resources/assets/img/kia/store.png" alt="" /><!-- Portfolio Modal - Text-->
                                    <p class="mb-5">수익시설은 1/2층 수익시설 전용공간, 11개의 매점공간, 내야 양 끝의 클럽 라운지로 계획된 패밀리 레스토랑이다.

일단 편의점/매점으로 무등 야구장 때 처럼 MINISTOP이 들어왔었고, 카페테리아 형 음식점으로 BBQ치킨 프리미엄 카페, 피자점으로 임실치즈피자, 커피점과 패스트푸드점으로 엔제리너스 커피와 롯데리아 콤비가 들어왔다. 대신 기존 미니스톱이 떠난 무등 야구장 매점엔 CU가 들어오게 되었고 광주-기아 챔피언스 필드 외부 무등 야구장에도 족발과 샌드위치를 파는 매장이 들어섰다.

2017년부터는 입점 점포가 바뀌었는데, 미니스톱을 대체하는 신규 사업자로 이마트 이마트24가 선정되면서 방계 계열사인 신세계푸드와의 협업으로 챔피언스 필드 특화 서비스 등을 제공하게 되었고, 임실치즈피자는 파파존스로 사업자가 변경되고 롯데리아/엔제리너스 커피 대신 스무디킹이 들어오는 등 사업자 다변화가 있었다. 단 미니스톱은 별도 사업자로 입점했던 4층 3루측 클럽라운지 운영권을 계속 가지고 있어서 유지되었다.

스카이박스석이 있는 4층 1, 3루 양 끝에는 수익시설로 계획된 클럽라운지가 있는데, 1루 쪽은 퓨전일식집, 3루 쪽은 편의점이 함께 입주한 맥주 펍이 들어오게 되었다. 결국 1루쪽 클럽라운지는 챔스홀릭이 문닫고 파파이스 등을 포함한 푸드코트가 들어오게 되었다. 2018 시즌 기준으로 푸드코트 입점매장은 파파이스, 원할머니 보쌈, 7번가피자, 주스판매점, 펍으로 5개 업소가 있다.</p>
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
