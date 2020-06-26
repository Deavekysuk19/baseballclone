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
        <link href="/baseball/resources/css/KTstyles.css" rel="stylesheet" />
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
                <!-- Masthead Avatar Image--><img class="masthead-avatar mb-5" src="/baseball/resources/assets/img/kt/kt.png" alt="" /><!-- Masthead Heading-->
                <h1 class="masthead-heading text-uppercase mb-0">KT 위즈</h1>
                <!-- Icon Divider-->
                <div class="divider-custom divider-light">
                    <div class="divider-custom-line"></div>
                    <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                    <div class="divider-custom-line"></div>
                </div>
                <!-- Masthead Subheading-->
                <p class="masthead-subheading font-weight-light mb-0">수원 KT위즈파크</p>
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
	   <img class="SKstadium" src="/baseball/resources/assets/img/kt/ktstadium.png" style="margin-left: auto; margin-right: auto; display: block" alt="구장 이미지 준비중입니다." /><br><br><br>
                <!-- About Section Content-->
                <div class="row">
                    <div class="col-lg-4 ml-auto"><p class="lead">정식명칭은 수원종합운동장 (부속)야구장이다. kt wiz가 프로야구 1군 무대에 진입하면서 해당 이름이 확정되었고, kt wiz 구단에서 공식적으로 사용하는 약칭은 '위팍'이다. kt에서 수원시와 계약을 맺을 때 25년간 무상 구장 사용권을 확약받았고, 그 과정에서 명명권도 사용할 수 있는 권리를 얻으며 위즈 파크라는 이름이 붙었다. </p></div>
                    <div class="col-lg-4 mr-auto"><p class="lead">KT라는 통신사의 위상에 맞게 스마트한 구장 시설이 특징으로 다양한 모바일 기기를 활용하여 입장등록, 실시간 주차정보, 지정석 찾기 등 다른 경기장에서 경험하지 못한 스마트한 컨텐츠를 이용할수 있다. 외에도 최적의 경기 환경 조성을 위해 야구장의 온도 습도 조명을 자동 조절하는 기능이 있어 팬들이 경기에 더욱 집중이 가능하도록 환경을 제공한다.</p></div>
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
		정류장 안내<br>
		- 일반버스 25, 25-2, 27, 36, 55, 62-1, 99, 99-2, 300-1, 310, 777번<br>
		- 직행버스 2007, 3000, 7770번<br>
		- 좌석버스 300, 900번 <br><br>
		지하철 안내<br>
		화서역 하차 (택시로 10분)<br>
		· 37, 39번 버스이용 수성중 사거리 하차 후 도보 3분<br>
		· 55분 버스이용 종합운동장 하차 수원역하차 (택시로 20분)<br>
		· 1번, 5번, 8번 버스이용 수성중 사거리 하차 후 도보 3분
		</p>
	        </div>
                    <div class="col-lg-4 mr-auto"><p class="lead">
		주차 안내<br>
		- 수원종합운동장 (수원 kt wiz park 포함) 주차장은 프로야구 경기일에만 주차예약제가 시행됩니다. <br />
		- 미예약 차량 주차 불가 : 사전 예약차량만 주차 가능 <br />
		- 통제시간 : 경기시간 2시간 전부터 <br />
		<div class="text-center mt-4">
                    <a class="btn btn-xl btn-outline-light" href="https://suwonparkingbaseball.or.kr:410/resvIndex.htm" target=”_blank”><i class=""></i>예약바로가기</a>
                </div>
		</p>
	        </div>
                </div>
                <!-- About Section Button-->
                <div class="text-center mt-4">
                    <a class="btn btn-xl btn-outline-light" href="https://map.naver.com/v5/entry/place/13491582?c=14138342.1427670,4481139.8924755,16,0,0,0,dh" target=”_blank”><i class="fas fa-download mr-2"></i>지도보기!!!</a>
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
                            <img class="img-fluid" src="/baseball/resources/assets/img/kt/vs.jpg" alt="업로드 실패" />
                        </div>
                    </div>
                    <!-- Portfolio Item 2-->
                    <div class="col-md-6 col-lg-4 mb-5">
                        <div class="portfolio-item mx-auto" data-toggle="modal" data-target="#portfolioModal2">
                            <div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                                <div class="portfolio-item-caption-content text-center text-white"><i class="fas fa-plus fa-3x"></i></div>
                            </div>
                            <img class="img-fluid" src="/baseball/resources/assets/img/kt/smart.png" alt="" />
                        </div>
                    </div>
                    <!-- Portfolio Item 3-->
                    <div class="col-md-6 col-lg-4 mb-5">
                        <div class="portfolio-item mx-auto" data-toggle="modal" data-target="#portfolioModal3">
                            <div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                                <div class="portfolio-item-caption-content text-center text-white"><i class="fas fa-plus fa-3x"></i></div>
                            </div>
                            <img class="img-fluid" src="/baseball/resources/assets/img/kt/water.png" alt="" />
                        </div>
                    </div>
                    <!-- Portfolio Item 4-->
                    <div class="col-md-6 col-lg-4 mb-5 mb-lg-0">
                        <div class="portfolio-item mx-auto" data-toggle="modal" data-target="#portfolioModal4">
                            <div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                                <div class="portfolio-item-caption-content text-center text-white"><i class="fas fa-plus fa-3x"></i></div>
                            </div>
                            <img class="img-fluid" src="/baseball/resources/assets/img/kt/break.jpg" alt="" />
                        </div>
                    </div>
                    <!-- Portfolio Item 5-->
                    <div class="col-md-6 col-lg-4 mb-5 mb-md-0">
                        <div class="portfolio-item mx-auto" data-toggle="modal" data-target="#portfolioModal5">
                            <div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                                <div class="portfolio-item-caption-content text-center text-white"><i class="fas fa-plus fa-3x"></i></div>
                            </div>
                            <img class="img-fluid" src="/baseball/resources/assets/img/kt/enter.png" alt="" />
                        </div>
                    </div>
                    <!-- Portfolio Item 6-->
                    <div class="col-md-6 col-lg-4">
                        <div class="portfolio-item mx-auto" data-toggle="modal" data-target="#portfolioModal6">
                            <div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                                <div class="portfolio-item-caption-content text-center text-white"><i class="fas fa-plus fa-3x"></i></div>
                            </div>
                            <img class="img-fluid" src="/baseball/resources/assets/img/kt/eat.png" alt="" />
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
                                    <h2 class="portfolio-modal-title text-secondary text-uppercase mb-0" id="portfolioModal1Label">라이벌전</h2>
                                    <!-- Icon Divider-->
                                    <div class="divider-custom">
                                        <div class="divider-custom-line"></div>
                                        <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                                        <div class="divider-custom-line"></div>
                                    </div>
                                    <!-- Portfolio Modal - Image--><img class="img-fluid rounded mb-5" src="/baseball/resources/assets/img/kt/vs.jpg" alt="" /><!-- Portfolio Modal - Text-->
                                    <p class="mb-5">1군 참가가 얼마 되지 않았는데도 벌써부터 라이벌이 생겼다. 삼성, SK만 만나면 매경기 접전이다. 물론 삼성 팬들과 SK 팬들에겐 하위권 팀에게도 발목이 잡혀서 복장이 터질 일이지만.

삼성 라이온즈에게는 첫해에는 3승 13패로 뼈도 못추렸지만 2년차부터 에서 내리 8승 8패를 거두며 비록 시즌 성적은 삼성보다는 못했지만 삼성만 만나면 박빙인 삼성의 라이벌로 등극했다. SK하고도 매년 7승9패를 기록하면서 역대 1군 상대전적 중에서 SK를 가장 많이 이겼다. 2017시즌까지 3년간 21승 27패. 유일하게 kt가 특정 팀 상대로 20승 이상을 해본 팀이 SK 와이번스가 유일했을 정도다. </p>
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
                                    <h2 class="portfolio-modal-title text-secondary text-uppercase mb-0" id="portfolioModal2Label">스마트 구장</h2>
                                    <!-- Icon Divider-->
                                    <div class="divider-custom">
                                        <div class="divider-custom-line"></div>
                                        <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                                        <div class="divider-custom-line"></div>
                                    </div>
                                    <!-- Portfolio Modal - Image--><img class="img-fluid rounded mb-5" src="/baseball/resources/assets/img/kt/smart.png" alt="" /><!-- Portfolio Modal - Text-->
                                    <p class="mb-5">최적의 경기 환경 조성 <br />
야구장의 온도와 습도, 조명을 자동 조절할 수 있는 유비쿼터스 센서 네트워크 시스템(USN)을 도입하여 선수단과 팬들에게 경기에 더욱 집중할 수 있는 최적의 경기 환경을 제공합니다.<br />
스마트한 구장 시설<br />
구장 내 무선 인터넷(WIFI) 설치 등 ICT 인프라 확충을 통해 다양한 모바일 기기를 활용하여 입장 등록, 실시간 주차 정보, 지정석 찾기, 음식 주문 등 다른 경기장에서 경험하지 못했던 스마트한 콘텐츠를 이용하실 수 있습니다.<br />
다양한 관람층을 위한 복합 문화공간<br />
익사이팅석, 프랜들리서, 커플석, 패밀리석, 장애인석 등 다양한 관람층을 고려하여 완벽한 관람시설을 제공하고, 각종 센서와 모바일 기기가 설치된 체험존 등을 제공하여 경기 관람 뿐 아니라 오락, 레저, 교육의 복합 문화공간을 선보입니다.</p>
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
                                    <h2 class="portfolio-modal-title text-secondary text-uppercase mb-0" id="portfolioModal3Label">워터 페스티벌</h2>
                                    <!-- Icon Divider-->
                                    <div class="divider-custom">
                                        <div class="divider-custom-line"></div>
                                        <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                                        <div class="divider-custom-line"></div>
                                    </div>
                                    <!-- Portfolio Modal - Image--><img class="img-fluid rounded mb-5" src="/baseball/resources/assets/img/kt/water.png" alt="" /><!-- Portfolio Modal - Text-->
                                    <p class="mb-5">2015년 시즌 중반부터 3루 측 익사이팅 존 앞 파울존에 대형 방수포가 개방되어 존재하고있다. 그리고 그해 여름부터 워터 페스티벌을 개최하고 있다. 반응이 좋자 2016년에는 규모를 더 키워서 진행했고, 다른 구단들에서도 워터 페스티벌을 벤치마킹한 다양한 이벤트들을 진행하고 있다. 
2017년에는 경기당 약 8~10톤 상당의 살수차가 동원될만큼 규모가 커지고 있고, 그 축제 기간에만 입는 특수 유니폼도 생겼다. 타팀팬들마저 자신의 팀 경기를 버리면서까지 오는만큼 한번 와보기를 추천한다. 아예 워터슬라이드까지 만들었다.
2018년부터는 아예 1루 내야에서는 물을 맞을 수 있게 되었으며, 1루쪽 외야에서도 위치에 따라 물을 맞는 것이 가능하다.</p>
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
                                    <h2 class="portfolio-modal-title text-secondary text-uppercase mb-0" id="portfolioModal4Label">전광판 파손</h2>
                                    <!-- Icon Divider-->
                                    <div class="divider-custom">
                                        <div class="divider-custom-line"></div>
                                        <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                                        <div class="divider-custom-line"></div>
                                    </div>
                                    <!-- Portfolio Modal - Image--><img class="img-fluid rounded mb-5" src="/baseball/resources/assets/img/kt/break.jpg" alt="" /><!-- Portfolio Modal - Text-->
                                    <p class="mb-5">2015년 올스타전 전야 행사였던 홈런 레이스에서 NC 다이노스의 에릭 테임즈가 친 볼로 위즈파크의 전광판이 파손되는 일이 발생했다. 정통으로 맞는 바람에 전광판의 단자가 깨졌다. 전광판만 맞지 않았다면 장외였을 엄청난 비거리의 홈런이였다. 그 덕인지 테임즈는 준우승을 했지만 홈런레이스 최대 비거리 상을 수상했다. 이외에도 2018시즌 도중, 임병욱이 친 홈런으로 단자가 잠시 나갔다 돌아온 적이 있다.</p>
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
                                    <h2 class="portfolio-modal-title text-secondary text-uppercase mb-0" id="portfolioModal5Label">즐길거리</h2>
                                    <!-- Icon Divider-->
                                    <div class="divider-custom">
                                        <div class="divider-custom-line"></div>
                                        <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                                        <div class="divider-custom-line"></div>
                                    </div>
                                    <!-- Portfolio Modal - Image--><img class="img-fluid rounded mb-5" src="/baseball/resources/assets/img/kt/enter.png" alt="" /><!-- Portfolio Modal - Text-->
                                    <p class="mb-5">수원KT위즈파크 안에 위치하고 있는 이사만루 스크린 야구장이다. 영업시간은 매일 10:30 ~ 02:00까지이다. 게임 설정이 다양하며 특징으로는 게임을 즐기면서 구장내 진행되고 있는 경기를 직관할 수 있다는 점이다.</p>
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
                                    <h2 class="portfolio-modal-title text-secondary text-uppercase mb-0" id="portfolioModal6Label">먹거리</h2>
                                    <!-- Icon Divider-->
                                    <div class="divider-custom">
                                        <div class="divider-custom-line"></div>
                                        <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                                        <div class="divider-custom-line"></div>
                                    </div>
                                    <!-- Portfolio Modal - Image--><img class="img-fluid rounded mb-5" src="/baseball/resources/assets/img/kt/eat.png" alt="" /><!-- Portfolio Modal - Text-->
                                    <p class="mb-5">경기장 내부에는 다른 구장들보다 먹거리가 풍부한 편이다. 돡뚜기떼 레이드 1순위. 수원의 유명 지역 치킨집인 진미통닭이 대기업들을 따돌리고 입점하기도 했으며 보영만두와 길푸드핫도그, 마돈나등도 입점해있는데 밖에서 먹는 맛과 똑같다. 특히 마돈나의 신메뉴 큐브스테이크는 방문객들에게 인기가 엄청 많다. 경기장을 찾은 팬들의 반응도 긍정적인 편. 문제는 대기시간이 너무 길다. 거기다 시범경기 개장 당일날에는 매점에 비치된 음식의 양이 턱없이 부족해서 30분간 줄서서 기다렸는데 못먹는 사례도 속출했다. 정규시즌 들어서도 별로 개선되지 않는 문제점. 그래서 2019 시즌에 진미통닭/보영만두 옆 전용 키오스크에 BC카드로 QR결제시 자리까지 무료배달 해주고 10% 청구할인과 결제시 500원 플러스할인까지 해주는 서비스가 생겼다.</p>
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
