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
				<li><a href="./bmtListRegistration_1.do" class="active">BMT LIST 이력 조회</a></li>
				<li><a href="./bmtListRegistration_2.do">사전 경로 탐색</a></li>
				<li><a href="./bmtListRegistration_3.do">등록 이력 조회</a></li>
			</ul>
		</div>
		<!-- /#snbArea -->
		<!-- #contentsArea -->
		<div id="contentsArea">
			<!-- .titContents -->
			<div class="titContents">
				<h2>BMT LIST 이력 조회</h2>
				<p>Home > BMT LIST 사전등록 > <strong>BMT LIST 이력 조회</strong></p>
			</div>
			<!-- /.titContents -->
			<!-- .contents -->
			<div class="contents">
				<!-- .search -->
				<div class="search">
					<span class="pd first">장비</span>
					<select>
						<option>전체</option>
						<option>범용</option>
						<option>전용</option>
						<option>윙바디</option>
					</select>
					<span class="pd">작업상태</span>
					<select>
						<option>전체</option>
						<option>대기</option>
						<option>시작</option>
						<option>접안</option>
						<option>하역</option>
						<option>완료</option>
						<option>장애</option>
					</select>
					<span class="pd">조회범위</span>
					<input type="text" class="text date" />
					~
					<input type="text" class="text date" />
					<a href="#none" class="btnSearch"><img src="../images/board/btn_search.gif" alt="" /></a>
				</div>
				<!-- /.search -->
				<!-- .state -->
				<div class="state">
					<p><strong>조회기간</strong> : 2015.03.01 ~2015.03.02</p>
					<ul class="list">
						<li><strong>장비</strong> : 전체</li>
						<li><strong>작업상태</strong> : 전체</li>
					</ul>
				</div>
				<!-- /.state -->
				<!-- .boardListStyle -->
				<table cellspacing="0" width="100%" border="0" class="boardListStyle">
					<!-- <colgroup>
						<col width="" />
					</colgroup> -->
					<thead>
						<tr>
							<th>NO</th>
							<th>배차일시</th>
							<th>할당도크</th>
							<th>장비</th>
							<th>차량번호</th>
							<th>도착지</th>
							<th>센터 진입시간</th>
							<th>작업 상태</th>
							<th>작업 시작시간</th>
							<th>작업 완료시간</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>000</td>
							<td>15.05.01 20:00</td>
							<td>A0001</td>
							<td>범용</td>
							<td>07 거 5216</td>
							<td>수도권</td>
							<td>15.03.01 13:10</td>
							<td class="work">
								<span class="red"></span><span class="blue"></span><span></span><span></span>
							</td>
							<td>15.03.01 13:10</td>
							<td>15.03.01 13:10</td>
						</tr>
						<tr>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr>
						<tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr>
						<tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr>
						<tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr>
						<tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr>
						<tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr>
						<tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr>
						<tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr>
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
