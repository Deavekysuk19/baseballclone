<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="ko">
<head><title>야구야 놀자!</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta http-equiv="X-UA-Compatible" content="IE=edge, Chrome" />
<meta name="title" content="KBO" />
<meta name="author" content="스포츠투아이" />
<meta name="keywords" content="KBO, 한국야구위원회, 프로야구, KBO 리그, 퓨처스리그, 프로야구순위, 프로야구 일정" />
<meta name="viewport" content="width=1200" />
<meta property="og:type" content="website" />
<meta property="og:title" content="KBO 홈페이지" />
<meta property="og:description" content="KBO, 한국야구위원회, 프로야구, KBO 리그, 퓨처스리그, 프로야구순위, 프로야구 일정" />
<meta property="og:image" content="//lgcxydabfbch3774324.cdn.ntruss.com/KBO_IMAGE/KBOHome/resources/images/common/open_graph_kbo.png" />
<meta property="og:url" content="//www.koreabaseball.com/" />
<script src="/baseball/resources/js/jquery-2.2.4.js"></script>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

	<link rel="shortcut icon" type="image/x-icon" href="//lgcxydabfbch3774324.cdn.ntruss.com/KBO_IMAGE/KBOHome/resources/images/common/favicon.ico" />
	<link rel="stylesheet" type="text/css" href="//lgcxydabfbch3774324.cdn.ntruss.com/KBO_IMAGE/KBOHome/resources/min/css/reset.min.css?version=20200603" />
	<link rel="stylesheet" type="text/css" href="//lgcxydabfbch3774324.cdn.ntruss.com/KBO_IMAGE/KBOHome/resources/min/css/layout.min.css?version=20200603" />
	<link rel="stylesheet" type="text/css" href="//lgcxydabfbch3774324.cdn.ntruss.com/KBO_IMAGE/KBOHome/resources/min/css/contents.min.css?version=20200603" />

	<script type="text/javascript" charset="utf-8" src="//lgcxydabfbch3774324.cdn.ntruss.com/KBO_IMAGE/KBOHome/resources/min/js/jquery-1.12.4.min.js?version=20200602"></script>
    <script type="text/javascript" charset="utf-8" src="//lgcxydabfbch3774324.cdn.ntruss.com/KBO_IMAGE/KBOHome/resources/min/js/jquery-migrate-1.1.1.min.js?version=20200602"></script>
    <script type="text/javascript" charset="utf-8" src="//lgcxydabfbch3774324.cdn.ntruss.com/KBO_IMAGE/KBOHome/resources/min/js/jquery-ui.min.js?version=20200602"></script>
	<script type="text/javascript" charset="utf-8" src="//lgcxydabfbch3774324.cdn.ntruss.com/KBO_IMAGE/KBOHome/resources/min/js/jquery.bxslider.min.js?version=20200602"></script>
    <script type="text/javascript" charset="utf-8" src="//lgcxydabfbch3774324.cdn.ntruss.com/KBO_IMAGE/KBOHome/resources/min/js/jquery.ui.datepicker-ko.min.js?version=20200602"></script>
    <script type="text/javascript" charset="utf-8" src="//lgcxydabfbch3774324.cdn.ntruss.com/KBO_IMAGE/KBOHome/resources/min/js/S2i.Common-1.0.1.min.js?version=20200602"></script>
    <script type="text/javascript" charset="utf-8" src="//lgcxydabfbch3774324.cdn.ntruss.com/KBO_IMAGE/KBOHome/resources/min/js/S2i.Paging-1.0.8.min.js?version=20200602"></script>
	<script type="text/javascript" charset="utf-8" src="//lgcxydabfbch3774324.cdn.ntruss.com/KBO_IMAGE/KBOHome/resources/min/js/common.min.js?version=20200602"></script>
    <script type="text/javascript" charset="utf-8" src="//lgcxydabfbch3774324.cdn.ntruss.com/KBO_IMAGE/KBOHome/resources/min/js/S2i.MakeTable-1.0.3.min.js?version=20200602"></script>
    <script type="text/javascript" charset="utf-8" src="//lgcxydabfbch3774324.cdn.ntruss.com/KBO_IMAGE/KBOHome/resources/min/js/bTogether.min.js?version=20200602"></script>
    
	<!—[if lt IE 9]>
		<script src="//lgcxydabfbch3774324.cdn.ntruss.com/KBO_IMAGE/KBOHome/resources/min/js/html5shiv.min.js?version=20200602"></script>
	<![endif]—>
    <script type="text/javascript">
        (function (i, s, o, g, r, a, m) {
            i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
                (i[r].q = i[r].q || []).push(arguments)
            }, i[r].l = 1 * new Date(); a = s.createElement(o),
                m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
        })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');

        ga('create', 'UA-15700655-14', 'auto');
        ga('send', 'pageview');
    </script>
    
    <link type="text/css" rel="stylesheet" href="//lgcxydabfbch3774324.cdn.ntruss.com/KBO_IMAGE/KBOHome/resources/min/css/common_old.min.css?version=20200603"/>
    <link rel="stylesheet" type="text/css" href="//lgcxydabfbch3774324.cdn.ntruss.com/KBO_IMAGE/KBOHome/resources/min/css/sub.min.css?version=20200603" />
    
    <link type="text/css" rel="stylesheet" href="//lgcxydabfbch3774324.cdn.ntruss.com/KBO_IMAGE/KBOHome/resources/min/css/teamrank.min.css"/>
	
	<%@ include file="/views/common/header.jsp" %>

</head>
<body>
    <form method="post" action="./TeamRank.aspx" id="mainForm">
<div class="aspNetHidden">
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__LASTFOCUS" id="__LASTFOCUS" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="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PHRoIHNjb3BlPSJjb2wiPuuhr+uNsDxiciAvPijsirkt7YyoLeustCk8L3RoPjx0aCBzY29wZT0iY29sIj5LVDxiciAvPijsirkt7YyoLeustCk8L3RoPjx0aCBzY29wZT0iY29sIj5TSzxiciAvPijsirkt7YyoLeustCk8L3RoPjx0aCBzY29wZT0iY29sIj7tlZztmZQ8YnIgLz4o7Iq5Le2MqC3rrLQpPC90aD48dGggc2NvcGU9ImNvbCI+7ZWp6rOEPC90aD48L3RyPmQCBQ8WAh8ABYkQPHRyPjx0ZCB0aXRsZT0i7YyA66qFIj5OQzwvdGQ+PHRkPuKWoDwvdGQ+PHRkPjEtMS0wPC90ZD48dGQ+Mi0xLTA8L3RkPjx0ZD4zLTAtMDwvdGQ+PHRkPjAtMC0wPC90ZD48dGQ+NC0yLTA8L3RkPjx0ZD4wLTAtMDwvdGQ+PHRkPjMtMC0wPC90ZD48dGQ+NS0xLTA8L3RkPjx0ZD4yLTEtMDwvdGQ+PHRkIHRpdGxlPSLtlanqs4QiPjIwLTYtMDwvdGQ+PC90cj48dHI+PHRkIHRpdGxlPSLtjIDrqoUiPkxHPC90ZD48dGQ+MS0xLTA8L3RkPjx0ZD7ilqA8L3RkPjx0ZD4xLTItMDwvdGQ+PHRkPjItMS0wPC90ZD48dGQ+Mi0xLTA8L3RkPjx0ZD4zLTMtMDwvdGQ+PHRkPjAtMC0wPC90ZD48dGQ+Mi0xLTA8L3RkPjx0ZD4zLTAtMDwvdGQ+PHRkPjMtMC0wPC90ZD48dGQgdGl0bGU9Iu2VqeqzhCI+MTctOS0wPC90ZD48L3RyPjx0cj48dGQgdGl0bGU9Iu2MgOuqhSI+65GQ7IKwPC90ZD48dGQ+MS0yLTA8L3RkPjx0ZD4yLTEtMDwvdGQ+PHRkPuKWoDwvdGQ+PHRkPjAtMC0wPC90ZD48dGQ+Mi0xLTA8L3RkPjx0ZD4yLTEtMDwvdGQ+PHRkPjQtMi0wPC90ZD48dGQ+My0yLTA8L3RkPjx0ZD4yLTEtMDwvdGQ+PHRkPjAtMC0wPC90ZD48dGQgdGl0bGU9Iu2VqeqzhCI+MTYtMTAtMDwvdGQ+PC90cj48dHI+PHRkIHRpdGxlPSLtjIDrqoUiPu2CpOybgDwvdGQ+PHRkPjAtMy0wPC90ZD48dGQ+MS0yLTA8L3RkPjx0ZD4wLTAtMDwvdGQ+PHRkPuKWoDwvdGQ+PHRkPjItMS0wPC90ZD48dGQ+MS0yLTA8L3RkPjx0ZD4xLTItMDwvdGQ+PHRkPjItMS0wPC90ZD48dGQ+Mi0xLTA8L3RkPjx0ZD42LTAtMDwvdGQ+PHRkIHRpdGxlPSLtlanqs4QiPjE1LTEyLTA8L3RkPjwvdHI+PHRyPjx0ZCB0aXRsZT0i7YyA66qFIj5LSUE8L3RkPjx0ZD4wLTAtMDwvdGQ+PHRkPjEtMi0wPC90ZD48dGQ+MS0yLTA8L3RkPjx0ZD4xLTItMDwvdGQ+PHRkPuKWoDwvdGQ+PHRkPjEtMi0wPC90ZD48dGQ+Ni0wLTA8L3RkPjx0ZD4xLTItMDwvdGQ+PHRkPjItMS0wPC90ZD48dGQ+Mi0xLTA8L3RkPjx0ZCB0aXRsZT0i7ZWp6rOEIj4xNS0xMi0wPC90ZD48L3RyPjx0cj48dGQgdGl0bGU9Iu2MgOuqhSI+7IK87ISxPC90ZD48dGQ+Mi00LTA8L3RkPjx0ZD4zLTMtMDwvdGQ+PHRkPjEtMi0wPC90ZD48dGQ+Mi0xLTA8L3RkPjx0ZD4yLTEtMDwvdGQ+PHRkPuKWoDwvdGQ+PHRkPjItMS0wPC90ZD48dGQ+MC0zLTA8L3RkPjx0ZD4wLTAtMDwvdGQ+PHRkPjAtMC0wPC90ZD48dGQgdGl0bGU9Iu2VqeqzhCI+MTItMTUtMDwvdGQ+PC90cj48dHI+PHRkIHRpdGxlPSLtjIDrqoUiPuuhr+uNsDwvdGQ+PHRkPjAtMC0wPC90ZD48dGQ+MC0wLTA8L3RkPjx0ZD4yLTQtMDwvdGQ+PHRkPjItMS0wPC90ZD48dGQ+MC02LTA8L3RkPjx0ZD4xLTItMDwvdGQ+PHRkPuKWoDwvdGQ+PHRkPjMtMC0wPC90ZD48dGQ+Mi0wLTA8L3RkPjx0ZD4xLTItMDwvdGQ+PHRkIHRpdGxlPSLtlanqs4QiPjExLTE1LTA8L3RkPjwvdHI+PHRyPjx0ZCB0aXRsZT0i7YyA66qFIj5LVDwvdGQ+PHRkPjAtMy0wPC90ZD48dGQ+MS0yLTA8L3RkPjx0ZD4yLTMtMDwvdGQ+PHRkPjEtMi0wPC90ZD48dGQ+Mi0xLTA8L3RkPjx0ZD4zLTAtMDwvdGQ+PHRkPjAtMy0wPC90ZD48dGQ+4pagPC90ZD48dGQ+MC0wLTA8L3RkPjx0ZD4yLTEtMDwvdGQ+PHRkIHRpdGxlPSLtlanqs4QiPjExLTE1LTA8L3RkPjwvdHI+PHRyPjx0ZCB0aXRsZT0i7YyA66qFIj5TSzwvdGQ+PHRkPjEtNS0wPC90ZD48dGQ+MC0zLTA8L3RkPjx0ZD4xLTItMDwvdGQ+PHRkPjEtMi0wPC90ZD48dGQ+MS0yLTA8L3RkPjx0ZD4wLTAtMDwvdGQ+PHRkPjAtMi0wPC90ZD48dGQ+MC0wLTA8L3RkPjx0ZD7ilqA8L3RkPjx0ZD40LTItMDwvdGQ+PHRkIHRpdGxlPSLtlanqs4QiPjgtMTgtMDwvdGQ+PC90cj48dHI+PHRkIHRpdGxlPSLtjIDrqoUiPu2VnO2ZlDwvdGQ+PHRkPjEtMi0wPC90ZD48dGQ+MC0zLTA8L3RkPjx0ZD4wLTAtMDwvdGQ+PHRkPjAtNi0wPC90ZD48dGQ+MS0yLTA8L3RkPjx0ZD4wLTAtMDwvdGQ+PHRkPjItMS0wPC90ZD48dGQ+MS0yLTA8L3RkPjx0ZD4yLTQtMDwvdGQ+PHRkPuKWoDwvdGQ+PHRkIHRpdGxlPSLtlanqs4QiPjctMjAtMDwvdGQ+PC90cj5kGAEFHl9fQ29udHJvbHNSZXF1aXJlUG9zdEJhY2tLZXlfXxYCBUBjdGwwMCRjdGwwMCRjdGwwMCRjcGhDb250ZW50cyRjcGhDb250ZW50cyRjcGhDb250ZW50cyRidG5QcmVEYXRlBUFjdGwwMCRjdGwwMCRjdGwwMCRjcGhDb250ZW50cyRjcGhDb250ZW50cyRjcGhDb250ZW50cyRidG5OZXh0RGF0ZfwYqLdknsEgrCNwWhYMJ+0miuIOGa2X4JAGsSqznQbR" />
</div>

<script type="text/javascript">
//<![CDATA[
var theForm = document.forms['mainForm'];
if (!theForm) {
    theForm = document.mainForm;
}
function __doPostBack(eventTarget, eventArgument) {
    if (!theForm.onsubmit || (theForm.onsubmit() != false)) {
        theForm.__EVENTTARGET.value = eventTarget;
        theForm.__EVENTARGUMENT.value = eventArgument;
        theForm.submit();
    }
}
//]]>
</script>


<script src="/WebResource.axd?d=PHjscMelH67yviXkMxBmAtMsyrcMF7Maou2s8HPugRoLTnu1T-HaBtMOXbnof2jKeNDCStNzVfdZx5xTWXz5_AmL3WHQMYzBvTdCnir0KCA1&amp;t=637103670965614113" type="text/javascript"></script>


<script src="/ScriptResource.axd?d=n-n-w8IaAGbzsuxzp-eBZon0hRp7syvVHVWhaSTLYIYXbiuPSbAOM4MrhxwFknAFnLcj_CvloNLuWPIoiZzLZAQRLIqV8BKadDFRFpzWfdHP2X8LoGiq_tD3V30iGmRtcM6JpIRrCFbUojWDI1FNFk6S9T-MCiiRZeEDHDkGaqHqbbhuhX2BowmVKC54I5Eo0&amp;t=ffffffffecf19baa" type="text/javascript"></script>
<script type="text/javascript">
//<![CDATA[
if (typeof(Sys) === 'undefined') throw new Error('ASP.NET Ajax 클라이언트 쪽 프레임워크를 로드하지 못했습니다.');
//]]>
</script>

<script src="/ScriptResource.axd?d=6QRitqrGsXi6Ij6fGLCyFerh1Kn2AN1sSsFhtxfY_fWldOidEOw4jNNEKZz-Q427ZzE749w9KPM0Sy6Ts-Pw8iTyLKoVGDnpomEk1QQDpxMbv_oA5Lk-oevBqLAWVOlpbJEjlI7O7ADv3C5CnEEAH1yyMa0ZsE0CS9S0fRu2UpNSiQ5JOEAxTEybHO-_CFw50&amp;t=ffffffffecf19baa" type="text/javascript"></script>
<div class="aspNetHidden">

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="93092036" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEdADOxR5LqcQHdF0zLOnashrHmlEwcu7CwxNIMjgoCNV+DoBAiipVFK+fCGA3mzDvEl0/sjxNag5fxtp9v/XJH+KxyFp7a/Svk45RiYA1mxXjsDB+TfTTMaOtRqJ8C6DsygaaxLaMa2xk+JcCXKcu0zWKSTPC0LCl3EVa596Vdd5E0RBJeSK4t87D8ElDy52WQ4q5/+l7TuhQZMGKb70J7xdLSIpcF2qQZfhKUTgdHxcOjwPhv8mNfKy0Mo6WSFvZiNUaed/oAPVECaJ/WNCpISEMBkRyHYmVvJcdI/+E3+IS+0GgGF7bFVQPCqErkemcSjpYqPoz/qMQZZMBZybo6qTvlFEsxRj0CyNcnNz2ZlCm8G2tWHy/7v6MH/OXtwjNHTrKgiwFp55vGqHE3W5mFsIFPxYHM16BLxM+iSOFYgmINa5Ua/BvHqc0QmdKs5cyRsKXDAZwGml3N5rvi4VW7QqgvwSQh+1TUoB4OtNEpraO9nzKcmVGf3irAve0vKMdIyhiKRL8EQsgTIg0du8Tv9QP8SbqB3S24yZR/rP2wgMHlQYJA7UUV/9oCONOZ+B8IEKw00cQk2yzTgR0bCJGPJdgIYagQFDJgkcyKyJ5AFR7CuoecCfNjXWYl+SA+f5zwpZT7UepHOGUqA4KOaxM1sBqVpvik/niWlo+8mML/0QaYSV30EfLjHaMWbyA6SkPyQ1bK86ZOezzn2RMs7IXQaYXkXMQwy0n8c924FwSNSPGcsrQzJbx3g9XmIEmJiklH5P6Q6hBhwaVczKCxuQJ/ofZCUn+zWv2OFEf0Z3NywbGck75xk3B22YMgM21ASyTvrud20TZRRkOAw27jHRXDylONTSO5rQq9K87+Ld1CxRSRBVf6opj/rbZjs1f8SVEjVYkJHLntrNoANtnl/f+KX0/8MuebeyxSN0y5FRoeQZc76zTc8jNWrTBHiYW/LANNSszwV+Kpy98HWsqsGgURcHeODASKDry0S/0KJj3AC9g55Jg1LVqjPJ/YcXQaadyvtN0e0OpQfhxR5FmU2jfEHnpqudJzl0Wf8UfWpVglIIeUF9Pt0jRYdx6XWmuPQRL7p6CvKVWb9yUGclFki7HthgPZA3+qvkm6si7BqWNLLLs8kA==" />
</div>
	    <!-- wrap -->
	    <div id="wrap">
		    
		    <hr />
		    
    
<section id="container">
	<div class="wrapping container-wrap">			
		<aside>
			<h3>순위</h3>
			<ul id="snb">
				<li><a href="/TeamRank/TeamRank.aspx" id="lnb01">팀순위</a></li>
			    <li><a href="/baseball/views/baseballClub/rankGraph.jsp" id="lnb02">팀별 순위변동 그래프</a></li>
			</ul>
			
		</aside>
		
<script type="text/javascript">
//<![CDATA[
Sys.WebForms.PageRequestManager._initialize('ctl00$ctl00$ctl00$cphContents$cphContents$cphContents$ScriptManager', 'mainForm', ['tctl00$ctl00$ctl00$cphContents$cphContents$cphContents$udpRecord','cphContents_cphContents_cphContents_udpRecord'], ['ctl00$ctl00$ctl00$cphContents$cphContents$cphContents$btnCalendarSelect','cphContents_cphContents_cphContents_btnCalendarSelect','ctl00$ctl00$ctl00$cphContents$cphContents$cphContents$btnPreDate','cphContents_cphContents_cphContents_btnPreDate','ctl00$ctl00$ctl00$cphContents$cphContents$cphContents$btnNextDate','cphContents_cphContents_cphContents_btnNextDate','ctl00$ctl00$ctl00$cphContents$cphContents$cphContents$ddlYear','cphContents_cphContents_cphContents_ddlYear'], [], 90, 'ctl00$ctl00$ctl00');
//]]>
</script>


<div id="contents">
    <div class="location">
	</div>
	<h4 class="tit-page">팀순위</h4>

    <!-- 서브컨텐츠 영역 -->
	<div id="cphContents_cphContents_cphContents_udpRecord">
	
		<div class="yeardate">
			<span class="date_prev"><input type="image" name="ctl00$ctl00$ctl00$cphContents$cphContents$cphContents$btnPreDate" id="cphContents_cphContents_cphContents_btnPreDate" src="//lgcxydabfbch3774324.cdn.ntruss.com/KBO_IMAGE/KBOHome/resources/images/common/date_prev.jpg" alt="이전날짜" /></span>
			<span class="date"><span id="cphContents_cphContents_cphContents_lblSearchDateTitle">2020.06.05(금)</span></span>
			<span><input name="ctl00$ctl00$ctl00$cphContents$cphContents$cphContents$txtCanlendar" type="text" id="cphContents_cphContents_cphContents_txtCanlendar" class="calendar blind02" /></span>
			<span class="date_next"><input type="image" name="ctl00$ctl00$ctl00$cphContents$cphContents$cphContents$btnNextDate" id="cphContents_cphContents_cphContents_btnNextDate" src="//lgcxydabfbch3774324.cdn.ntruss.com/KBO_IMAGE/KBOHome/resources/images/common/date_next.jpg" alt="다음날짜" /></span>
		</div>

		<div class="compare mb25">
		<label>2020</label>
		<!-- <option value="2019">2019</option>
		<option value="2018">2018</option>
		<option value="2017">2017</option>
		<option value="2016">2016</option>
		<option value="2015">2015</option>
		<option value="2014">2014</option>
		<option value="2013">2013</option>
		<option value="2012">2012</option>
		<option value="2011">2011</option>
		<option value="2010">2010</option>
		<option value="2009">2009</option>
		<option value="2008">2008</option>
		<option value="2007">2007</option>
		<option value="2006">2006</option>
		<option value="2005">2005</option>
		<option value="2004">2004</option>
		<option value="2003">2003</option>
		<option value="2002">2002</option>
		<option value="2001">2001</option>
		<option value="2000">2000</option>
		<option value="1999">1999</option>
		<option value="1998">1998</option>
		<option value="1997">1997</option>
		<option value="1996">1996</option>
		<option value="1995">1995</option>
		<option value="1994">1994</option>
		<option value="1993">1993</option>
		<option value="1992">1992</option>
		<option value="1991">1991</option>
		<option value="1990">1990</option>
		<option value="1989">1989</option>
		<option value="1988">1988</option>
		<option value="1987">1987</option>
		<option value="1986">1986</option>
		<option value="1985">1985</option>
		<option value="1984">1984</option>
		<option value="1983">1983</option>
		<option value="1982">1982</option> -->

	</select>
			<span class="exp2"><strong>&nbsp;년&nbsp;<span class="color_01">06</span>월<span class="color_01">05</span>일</strong> (2020년 06월04일 기준)</span>
			
		</div>

		
		<table summary="순위, 팀명,승,패,무,승률,승차,최근10경기,연속,홈,방문" class="tData">
			<colgroup>
				<col width="60" />
				<col width="75" />
                <col width="51" />
				<col width="40" />
				<col width="40" />
				<col width="40" />
				<col width="60" />
				<col width="60" />
				<col width="90" />
				<col width="50" />
				<col width="60" />
				<col width="60" />
			</colgroup>
			<thead>
			<tr>
				<th>순위</th>
				<th>팀명</th>
                <th>경기</th>
				<th>승</th>
				<th>패</th>
				<th>무</th>
				<th>승률</th>
				<th>게임차</th>
				<th>최근10경기</th>
				<th>연속</th>
				<th>홈</th>
				<th>어웨이</th>
			</tr>
			</thead>
			<tbody>
				
					<tr>
						<td>1</td>
						<td>NC</td>
                        <td>0</td>
						<td>0</td>
						<td>0</td>
						<td>0</td>
						<td>0.000</td>
						<td>0</td>
						<td>0승0무0패</td>
						<td>0승</td>
						<td>0-0-0</td>
						<td>0-0-0</td>
					</tr>
				
					<tr>
						<td>1</td>
						<td>LG</td>
                        <td>0</td>
						<td>0</td>
						<td>0</td>
						<td>0</td>
						<td>0.000</td>
						<td>0</td>
						<td>0승0무0패</td>
						<td>0승</td>
						<td>0-0-0</td>
						<td>0-0-0</td>
					</tr>
				
					<tr>
						<td>1</td>
						<td>두산</td>
                        <td>0</td>
						<td>0</td>
						<td>0</td>
						<td>0</td>
						<td>0.000</td>
						<td>0</td>
						<td>0승0무0패</td>
						<td>0승</td>
						<td>0-0-0</td>
						<td>0-0-0</td>
					</tr>
				
					<tr>
						<td>1</td>
						<td>키움</td>
                        <td>0</td>
						<td>0</td>
						<td>0</td>
						<td>0</td>
						<td>0.000</td>
						<td>0</td>
						<td>0승0무0패</td>
						<td>0승</td>
						<td>0-0-0</td>
						<td>0-0-0</td>
					</tr>
				
					<tr>
						<td>1</td>
						<td>KIA</td>
                        <td>0</td>
						<td>0</td>
						<td>0</td>
						<td>0</td>
						<td>0.000</td>
						<td>0</td>
						<td>0승0무0패</td>
						<td>0승</td>
						<td>0-0-0</td>
						<td>0-0-0</td>
					</tr>
				
					<tr>
						<td>1</td>
						<td>삼성</td>
                        <td>0</td>
						<td>0</td>
						<td>0</td>
						<td>0</td>
						<td>0.000</td>
						<td>0</td>
						<td>0승0무0패</td>
						<td>0승</td>
						<td>0-0-0</td>
						<td>0-0-0</td>
					</tr>
				
					<tr>
						<td>1</td>
						<td>KT</td>
                        <td>0</td>
						<td>0</td>
						<td>0</td>
						<td>0</td>
						<td>0.000</td>
						<td>0</td>
						<td>0승0무0패</td>
						<td>0승</td>
						<td>0-0-0</td>
						<td>0-0-0</td>
					</tr>
				
					<tr>
						<td>1</td>
						<td>롯데</td>
                        <td>0</td>
						<td>0</td>
						<td>0</td>
						<td>0</td>
						<td>0.000</td>
						<td>0</td>
						<td>0승0무0패</td>
						<td>0승</td>
						<td>0-0-0</td>
						<td>0-0-0</td>
					</tr>
				
					<tr>
						<td>1</td>
						<td>SK</td>
                        <td>0</td>
						<td>0</td>
						<td>0</td>
						<td>0</td>
						<td>0.000</td>
						<td>0</td>
						<td>0승0무0패</td>
						<td>0승</td>
						<td>0-0-0</td>
						<td>0-0-0</td>
					</tr>
				
					<tr>
						<td>1</td>
						<td>한화</td>
                        <td>0</td>
						<td>0</td>
						<td>0</td>
						<td>0</td>
						<td>0.000</td>
						<td>0</td>
						<td>0승0무0패</td>
						<td>0승</td>
						<td>0-0-0</td>
						<td>0-0-0</td>
					</tr>
				
			</tbody>
		</table>

		

        <div id="cphContents_cphContents_cphContents_pnlVsTeam">
		
		<div class="winalose mb20"><span class="bul_history">팀간 승패표</span><span class="stand"><span id="cphContents_cphContents_cphContents_lblSearchDate">2020년 06월 04일 기준</span></span></div>
            <table summary="팀간승패표" class="tData">
            <colgroup>
	            <col width="auto;"/>
            </colgroup>
            <thead>
	            <tr><th scope="col" style="width:35px">팀명</th><th scope="col">NC<br />(승-패-무)</th><th scope="col">LG<br />(승-패-무)</th><th scope="col">두산<br />(승-패-무)</th><th scope="col">키움<br />(승-패-무)</th><th scope="col">KIA<br />(승-패-무)</th><th scope="col">삼성<br />(승-패-무)</th><th scope="col">롯데<br />(승-패-무)</th><th scope="col">KT<br />(승-패-무)</th><th scope="col">SK<br />(승-패-무)</th><th scope="col">한화<br />(승-패-무)</th><th scope="col">합계</th></tr>
            </thead>
            <tbody>
	            <tr><td title="팀명">NC</td><td>■</td><td>0-0-0</td><td>0-0-0</td><td>0-0-0</td><td>0-0-0</td><td>0-0-0</td><td>0-0-0</td><td>0-0-0</td><td>0-0-0</td><td>0-0-0</td><td title="합계">0-0-0</td></tr><tr><td title="팀명">LG</td><td>0-0-0</td><td>■</td><td>0-0-0</td><td>0-0-0</td><td>0-0-0</td><td>0-0-0</td><td>0-0-0</td><td>0-0-0</td><td>0-0-0</td><td>0-0-0</td><td title="합계">0-0-0</td></tr><tr><td title="팀명">두산</td><td>0-0-0</td><td>0-0-0</td><td>■</td><td>0-0-0</td><td>0-0-0</td><td>0-0-0</td><td>0-0-0</td><td>0-0-0</td><td>0-0-0</td><td>0-0-0</td><td title="합계">0-0-0</td></tr><tr><td title="팀명">키움</td><td>0-0-0</td><td>0-0-0</td><td>0-0-0</td><td>■</td><td>0-0-0</td><td>0-0-0</td><td>0-0-0</td><td>0-0-0</td><td>0-0-0</td><td>0-0-0</td><td title="합계">0-0-0</td></tr><tr><td title="팀명">KIA</td><td>0-0-0</td><td>0-0-0</td><td>0-0-0</td><td>0-0-0</td><td>■</td><td>0-0-0</td><td>0-0-0</td><td>0-0-0</td><td>0-0-0</td><td>0-0-0</td><td title="합계">0-0-0</td></tr><tr><td title="팀명">삼성</td><td>0-0-0</td><td>0-0-0</td><td>0-0-0</td><td>0-0-0</td><td>0-0-0</td><td>■</td><td>0-0-0</td><td>0-0-0</td><td>0-0-0</td><td>0-0-0</td><td title="합계">0-0-0</td></tr><tr><td title="팀명">롯데</td><td>0-0-0</td><td>0-0-0</td><td>0-0-0</td><td>0-0-0</td><td>0-0-0</td><td>0-0-0</td><td>■</td><td>0-0-0</td><td>0-0-0</td><td>0-0-0</td><td title="합계">0-0-0</td></tr><tr><td title="팀명">KT</td><td>0-0-0</td><td>0-0-0</td><td>0-0-0</td><td>0-0-0</td><td>0-0-0</td><td>0-0-0</td><td>0-0-0</td><td>■</td><td>0-0-0</td><td>0-0-0</td><td title="합계">0-0-0</td></tr><tr><td title="팀명">SK</td><td>0-0-0</td><td>0-0-0</td><td>0-0-0</td><td>0-0-0</td><td>0-0-0</td><td>0-0-0</td><td>0-0-0</td><td>0-0-0</td><td>■</td><td>0-0-0</td><td title="합계">0-0-0</td></tr><tr><td title="팀명">한화</td><td>0-0-0</td><td>0-0-0</td><td>0-0-0</td><td>0-0-0</td><td>0-0-0</td><td>0-0-0</td><td>0-0-0</td><td>0-0-0</td><td>0-0-0</td><td>■</td><td title="합계">0-0-0</td></tr>
            </tbody>
        </table>
        
	</div>
		<input type="hidden" name="ctl00$ctl00$ctl00$cphContents$cphContents$cphContents$hfSearchYear" id="cphContents_cphContents_cphContents_hfSearchYear" value="2020" />
		<input type="hidden" name="ctl00$ctl00$ctl00$cphContents$cphContents$cphContents$hfSearchDate" id="cphContents_cphContents_cphContents_hfSearchDate" value="20200605" />
		<input type="hidden" name="ctl00$ctl00$ctl00$cphContents$cphContents$cphContents$hfSearchSeries" id="cphContents_cphContents_cphContents_hfSearchSeries" value="0" />
		<input type="submit" name="ctl00$ctl00$ctl00$cphContents$cphContents$cphContents$btnCalendarSelect" value="" id="cphContents_cphContents_cphContents_btnCalendarSelect" style="display:none;" />
		
</div>
</div>

	</div>
</section>

<%@ include file="/views/common/footer.jsp" %>
		   
	    </div>
	    <!-- // wrap -->
    </form>
    
    

    
    
    
<script type="text/javascript">
    currentLnb("01");
    var request = Sys.WebForms.PageRequestManager.getInstance();
    request.add_pageLoaded(PageLoadedHandler);

    function PageLoadedHandler(sender, args) {
        $(".tData th:first-child, .tData td:first-child").css("border-left", "0");
        $(".tData th:last-child,.tData td:last-child").css("border-right", "0");

        $(function () {
            $(".calendar").datepicker({
                showOn: "button",
                buttonImage: "//lgcxydabfbch3774324.cdn.ntruss.com/KBO_IMAGE/KBOHome/resources/images/common/calendar.jpg",
                buttonImageOnly: true,
                buttonText: "Select date",
                dateFormat: 'yymmdd',
                defaultDate: $("#cphContents_cphContents_cphContents_hfSearchDate").val(),
                maxDate: 'today',
                beforeShow: function (textbox, instance) {
                    instance.dpDiv.css({
                        marginTop: '23px',
                        marginLeft: '-163px'
                    });
                    setTimeout(function () {
                        $('#ui-datepicker-div').css({ 'z-index': 9999 });
                    })
                },
                onSelect: function (selectedDate) {
                    $("#cphContents_cphContents_cphContents_hfSearchDate").val(selectedDate);
                    __doPostBack('ctl00$ctl00$ctl00$cphContents$cphContents$cphContents$btnCalendarSelect','')
                }
            });
        });
    }
    </script>



    <script type="text/javascript">
        $(document).ready(function () {
            // 선수 검색
            $(document).on("click", "#btnTopPlayerSearch", function (e) {
                getPlayerSearch();
                e.preventDefault();
            });

            // 선수 검색 엔터
            $(document).on("keypress", "#txtTopPlayerWord", function (e) {
                if (event.keyCode == 13) {
                    getPlayerSearch();
                    e.preventDefault();
                }
            });

            //// 선수 검색 마우스 아웃
            //$("body").click(function (e) {
            //    var container = $("#player_search_area");

            //    if (container.css("display") == "block") {
            //        if (!container.has(e.target).length) {
            //            container.hide();
            //        }
            //    }
            //});
        });

        // 선수 검색
        function getPlayerSearch() {
            if ($("#txtTopPlayerWord").val() == "") {
                alert("선수명은 필수 입니다.");
                $("#txtTopPlayerWord").focus();
                return false;
            } else {
                //var searchWord = encodeURI($("#txtTopPlayerWord").val());

                //if (searchWord != "") {
                //    location.href = "/Player/Search.aspx?searchWord=" + searchWord;
                //}
                var request = $.ajax({
                    type: "post"
                    , url: "/ws/Controls.asmx/GetSearchPlayer"
                    , dataType: "json"
                    , data: {
                        name: $("#txtTopPlayerWord").val()
                    }
                    , error: ajaxFailed
                    , async: true
                });

                request.done(function (data) {
                    if (data.code == "100") {
                        var container = $(".search-result");
                        container.children().remove();

                        container.hide();

                        if (data.now.length > 0 || data.retire.length > 0) {
                            // 2017-05-22 yeeun, 홍지희 사원 요청, 결과가 1명일 경우 바로 페이지 연결
                            if (data.now.length + data.retire.length == 1) {
                                var link = "";

                                if (data.now.length == 1) {
                                    link = data.now[0]["P_LINK"];
                                } else {
                                    link = data.retire[0]["P_LINK"];
                                }

                                location.href = link;
                            } else {
                                if (data.now.length > 0) {
                                    container.append($("<h4>등록 선수</h4>"));

                                    var div = $("<div class='active' />");
                                    div.children().remove();

                                    setPlayerDiv(data.now, div, true);

                                    container.append(div);
                                }

                                if (data.retire.length > 0) {
                                    container.append($("<h4>역대 선수</h4>"));

                                    var div = $("<div class='retire'/>");
                                    div.children().remove();

                                    setPlayerDiv(data.retire, div, false);

                                    container.append(div);
                                }

                                //container.append($(String.format("<p><a href='/Player/Search.aspx?searchWord={0}''>'{0}' 검색결과 모두 보기</a></p>", $("#txtTopPlayerWord").val())));
                                container.append($("<p><a href='/Player/Search.aspx?searchWord=" + $("#txtTopPlayerWord").val() + "''>'" + $("#txtTopPlayerWord").val() + "' 검색결과 모두 보기</a></p>"));
                                container.show();
                            }
                        } else {
                            container.append($("<p class='null'>검색 결과가 없습니다.</p>"));
                            container.show();
                        }
                    }
                });
            }
        }

        // 선수 검색 div 
        function setPlayerDiv(list, div, isActive) {
            $.each(list, function (index, player) {
                var aLink = $("<a />");
                aLink.attr("href", player["P_LINK"]);

                var dl = $("<dl />");
                var dt = $("<dt />");
                var backNo = "";

                if (isActive) {
                    //backNo = String.format("No.{0}", player["BACK_NO"]);
                    backNo = "No." + player["BACK_NO"];
                }

                //dt.text(String.format("{0} {1}", player["P_NM"], backNo));
                dt.text(player["P_NM"] + " " + backNo);
                dl.append(dt);

                var dd = $("<dd />");
                //dd.text(String.format("{0} {1}({2})", player["T_NM"], player["POS_NO"], player["P_TYPE"]));
                dd.text(player["T_NM"] + " " + player["POS_NO"] + "(" + player["P_TYPE"] + ")");
                dl.append(dd);

                var ddImg = $(String.format("<dd class='btn-arrow'><img src='{0}/resources/images/common/btn_arrow_search.png' alt='' /></dd>", "//lgcxydabfbch3774324.cdn.ntruss.com/KBO_IMAGE/KBOHome"));
                dl.append(ddImg);

                aLink.append(dl);
                div.append(aLink);
            });
        }
    </script>
</body>
</html>