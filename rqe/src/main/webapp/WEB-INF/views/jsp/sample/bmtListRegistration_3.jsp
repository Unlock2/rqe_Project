<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">
 <head>
  <meta http-equiv="content-type" content="text/html; charset=utf-8" />
  <title>Welcome to RQE System (Route Quality Evaluation)</title>
  <link rel="stylesheet" type="text/css" href="../css/import.css" />
  <script type="text/javascript" src="../js/jquery-1.7.1.min.js"></script>
  <script type="text/javascript" src="../js/jquery-ui-1.9.2.custom.min.js"></script>
  <script type="text/javascript" src="../js/style.js"></script>
 </head>

 <body>
  <!-- #wrap -->
  <div id="wrap">
	<!-- #header -->
	<div id="header">
		<a href="./home.do"><img src=../images/common/logo.gif style="padding-top: 10px; padding-left: 10px;" /></a>
		<ul class="util">
			<li class="name"><strong>홍길동</strong>님</li>
			<li><a href="#none"><img src="../images/common/util_logout.gif" alt="" /></a></li>
		</ul>
		<!-- 현제 강조된 페이지에 a class="active" 삽입해 주세요 -->
		<ul id="gnb" class="gnb">
			<li><a href="./home.do"><img src="../images/common/gnb_1.gif" alt="" /></a></li>
			<li><a href="./bmtListRegistration_1.do" class="active"><img src="../images/common/gnb_2.gif" alt="" /></a></li>
			<li><a href="./synthesisData_1.do"><img src="../images/common/gnb_3.gif" alt="" /></a></li>
			<li><a href="./detailsData_1.do"><img src="../images/common/gnb_4.gif" alt="" /></a></li>
			<li><a href="./system_1.do"><img src="../images/common/gnb_5.gif" alt="" /></a></li>
		</ul>
	</div>
	<!-- /#header -->

	<hr />

	<!-- #container -->
	<div id="container" class="clearFix">
		<!-- 현제 강조된 페이지에 a class="active" 삽입해 주세요 2뎁스 3뎁스 까지 들어 갑니다. -->
		<!-- #snbArea -->
		<div id="snbArea">
			<h2><img src="../images/snb/h2_work.gif" alt style="width: 140px; height: 80px; padding-bottom: 0px;" /></h2>
			<ul class="snb">
				<li><a href="./bmtListRegistration_1.do">BMT LIST 이력 조회</a></li>
				<li><a href="./bmtListRegistration_2.do">사전 경로 탐색</a></li>
				<li><a href="./bmtListRegistration_3.do" class="active">등록 이력 조회</a></li>
			</ul>
		</div>
		<!-- /#snbArea -->
		<!-- #contentsArea -->
		<div id="contentsArea">
			<!-- .titContents -->
			<div class="titContents">
				<h2>등록 이력 조회</h2>
				<p>Home > BMT LIST 사전등록 > <strong>등록 이력 조회</strong></p>
			</div>
			<!-- /.titContents -->
			<!-- .contents -->
			<div class="contents">
				<!-- .state -->
				<div class="state">
					<p><strong>조회일자</strong> : 2015.03.01 ~2015.03.02</p>
					<ul class="list">
						<li><strong>센터진입 총차량건수</strong> : 00건</li>
						<li><strong>작업중 차량 건수</strong> : 00건</li>
						<li><strong>대기중 차량 건수</strong> : 00건</li>
					</ul>
				</div>
				<!-- /.state -->
				<!-- .graArea -->
				<div class="graArea mgb20">
					<img src="../images/board/img_gra_1.gif" width="100%" height="auto" alt="" />
				</div>
				<!-- /.graArea -->
				<!-- .boardListStyle -->
				<table cellspacing="0" width="100%" border="0" class="boardListStyle">
					<!-- <colgroup>
						<col width="" />
					</colgroup> -->
					<thead>
						<tr>
							<th>NO</th>
							<th>배차일시</th>
							<th>차량번호</th>
							<th>장비유형</th>
							<th>진입일시</th>
							<th>상태</th>
							<th>대기시간</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>000</td>
							<td>15.05.01 20:00</td>
							<td>07 거 5216</td>
							<td>범용</td>
							<td>15.03.01 00:05:01</td>
							<td>작업</td>
							<td>00분</td>
						</tr>
						<tr>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr>
						<tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr>
						<tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr>
						<tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr>
						<tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr>
						<tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr>
						<tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr>
						<tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr>
					</tbody>
				</table>
				<!-- /.boardListStyle -->
				<!-- .paging -->
				<ul class="paging">
					<li class="btn"><a href="#none"><img src="../images/board/btn_first.gif"alt="처음" /></a></li>
					<li class="btn"><a href="#none"><img src="../images/board/btn_prev.gif"alt="이전" /></a></li>
					<li class="first"><strong>1</strong></li>
					<li><a href="#none">2</a></li>
					<li><a href="#none">3</a></li>
					<li class="last"><a href="#none">4</a></li>
					<li class="btn"><a href="#none"><img src="../images/board/btn_next.gif"alt="다음" /></a></li>
					<li class="btn"><a href="#none"><img src="../images/board/btn_last.gif"alt="마지막" /></a></li>
				</ul>
				<!-- /.paging -->
			</div>
			<!-- /.contents -->
		</div>
		<!-- /#contentsArea -->
	</div>
	<!-- /#container -->

	<hr />

	<!-- #footer -->
	<div id="footer">
		COPYRIGHT ⓒ ALL RIGHTS RESERVED.
	</div>
	<!-- /#footer -->
  </div>
  <!-- /#wrap -->

  <script type="text/javascript">
	//<![CDATA[
	// date picker
	$(".date").datepicker({
		changeMonth: true,
		changeYear: true,
		yearRange: '2013:2018',
		showOn: "button",
		buttonImage: "../images/board/btn_date.gif",
		buttonImageOnly: true,
		 buttonText: "날짜선택",
		inline: true,
		duration: 300,
		showAnim: "slideDown"
	});
	$.datepicker.regional['ko'] = {
		closeText: '닫기',
		prevText: '이전달',
		nextText: '다음달',
		currentText: '오늘',
		monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
		monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
		dayNames: ['일요일','월요일','화요일','수요일','목요일','금요일','토요일'],
		dayNamesShort: ['일','월','화','수','목','금','토'],
		dayNamesMin: ['일','월','화','수','목','금','토'],
		dateFormat: 'yy-mm-dd', firstDay: 0,
		isRTL: false};
	$.datepicker.setDefaults($.datepicker.regional['ko']);
	//]]>
  </script>
 </body>
</html>
