<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CSS</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
        integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
        integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
        crossorigin="anonymous"></script>

	
	<link rel="stylesheet" href="/baseball/resources/css/ticketing/matching.css" />
		
	<script src="/baseball/resources/js/ticketing/Matching.js"></script>
	
	
</head>

<%@ include file="/views/common/header.jsp" %>

    <div class="container border">
        <header class="row border">
            <div class="col-3"></div>
            <div class="col-6 mx-auto border">                
            </div>
            <div class="col-3"></div>
        </header>
        <div class="row">
            <aside class="col-2 border aside">

            </aside>
            <section class="col-8 border">
                <div class="row">
                    <div class="col">
                        <br>
                        <img src="https://i.ytimg.com/vi/C5s05SV3SJA/maxresdefault.jpg" width="100%" alt="두산과 NC의 대결">
                        <br>
                    </div>
                </div>
                <div class="row">
                    <div class="col border">
                        <h2 style="text-align: center">두산 [BEARS]</h2>
                        <br />
                        <p>정부는 예산에 변경을 가할 필요가 있을 때에는 추가경정예산안을 편성하여 국회에 제출할 수 있다. 헌법재판소에서 법률의 위헌결정, 탄핵의 결정, 정당해산의 결정 또는
                            헌법소원에 관한
                            인용결정을 할 때에는 재판관 6인 이상의 찬성이 있어야 한다.</p>

                        <br> <br>
                        <input type="button" id="btn1" value="자세히 보러가기">
                        <!-- 해당하는 버튼 을 누르면 구단에 관련된 홈페이지로 넘어 갈 수 있는게 최상-->
                        <br> <br>
                    </div>
                    <div class="col border">
                        <h2 style="text-align: center">NC [Dinos]</h2>
                        <br />
                        <p>정부는 예산에 변경을 가할 필요가 있을 때에는 추가경정예산안을 편성하여 국회에 제출할 수 있다. 헌법재판소에서 법률의 위헌결정, 탄핵의 결정, 정당해산의 결정 또는
                            헌법소원에 관한
                            인용결정을 할 때에는 재판관 6인 이상의 찬성이 있어야 한다.</p>

                        <br> <br>
                        <input type="button" id="btn2" value="자세히 보러가기">
                        <!-- 해당하는 버튼 을 누르면 구단에 관련된 홈페이지로 넘어 갈 수 있는게 최상-->
                        <br> <br>
                    </div>
                </div>
            </section>
            <aside class="col-2 border aside">

            </aside>
        </div>
        <br>
        <div class="row border">
            <div class="row mx-auto text-center  border">
                <div class="col">
                    <h2 class="">경 기 장 &nbsp; 좌 석 안 내 </h2>
                </div>
            </div>
            <div class="row mx-auto text-center  border">
                <div class="col  border">
                    <br> <br>
                    <img src="https://img1.daumcdn.net/thumb/R720x0.q80/?scode=mtistory2&fname=http%3A%2F%2Fcfile6.uf.tistory.com%2Fimage%2F21356A4853272D9B1476B4"
                        alt="구장 이미지" width="100%">
                    <br> <br> <br>
                    <p style="font-size: small"><b>- 좌석을 선택하세요 -</b></p>
                </div>
                <div class="col">
                    <div class="row mx-auto text-center border">
                        <h2 class="mx-auto text-center"> 좌석 뷰 </h2>

                        <div class="view1">
                            <img src="https://t1.daumcdn.net/cfile/tistory/27666446534E045317" alt="좌석[정면]" width="94%">
                        </div>
                    </div>
                    <br>
                    <div class="row border">
                        <div class="col">
                            <div class="view2">
                                <img src="https://image.chosun.com/sitedata/image/201903/22/2019032201082_0.jpg"
                                    alt="좌석[좌측]" width="100%" height="150px">
                            </div>

                        </div>
                        <div class="col">
                            <div class="view3">
                                <img src="https://t1.daumcdn.net/cfile/blog/23284A4E553EF72B14?original" alt="좌석[우측]"
                                    width="100%" height="150px">
                            </div>

                        </div>
                    </div>
                    <br>


                    <div>
                        <input type="button" class="btn3" value="구매하러가기">
                        <input type="button" class="btn4" value="좌석리뷰보기">
                    </div>
                    <br>
                </div>
            </div>
        </div>
     
    </div>
<br /><br /><br /><br />
<br /><br />
<br /><br />
<%@ include file="/views/common/footer.jsp" %>

</html>