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
			<li><a href="./bmtListRegistration_1.do"><img src="../images/common/gnb_2.gif" alt="" /></a></li>
			<li><a href="./synthesisData_1.do"><img src="../images/common/gnb_3.gif" alt="" /></a></li>
			<li><a href="./detailsData_1.do" class="active"><img src="../images/common/gnb_4.gif" alt="" /></a></li>
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
			<h2><img src="../images/snb/h2_statistics.gif" alt="" /></h2>
			<ul class="snb">
				<li><a href="./detailsData_1.do">경로 거리</a></li>
				<li><a href="./detailsData_2.do">통행 요금</a></li>
				<li><a href="./detailsData_3.do" style=" height: 60px;">선/후착 및 도착<br>지연 시간</a></li>
				<li><a href="./detailsData_4.do" style=" height: 60px;" class="active">도착 예정 시간 오차<br> 및 오차율</a></li>
				<li><a href="./detailsData_5.do" style=" height: 60px;">BMT ID 기준 경로<br> 지도 분석</a></li>
				<li><a href="./detailsData_6.do" style=" height: 60px;">BMT ID 기준<br> 특이사항</a></li>
			</ul>
		</div>
		<!-- /#snbArea -->
		<!-- #contentsArea -->
		<div id="contentsArea">
			<!-- .titContents -->
			<div class="titContents">
				<h2>도착 예정 시간 오차 및 오차율</h2>
				<p>Home > 상세 데이터 > <strong>도착 예정 시간 오차 및 오차율</strong></p>
			</div>
			<!-- /.titContents -->
			<!-- .contents -->
			<div class="contents">
				<!-- .search -->
				<div class="search">
					<span class="pd">조회범위</span>
					<input type="text" class="text date" />
					~
					<input type="text" class="text date" /> &nbsp;&nbsp;1달 이내 조회가능
					<a href="#none" class="btnSearch"><img src="../images/board/btn_search.gif" alt="" /></a>
				</div>
				<!-- /.search -->
				<!-- .state -->
				<div class="state">
					<p><strong>조회범위</strong> : 2015.03.01 ~2015.04.01</p>
				</div>
				<!-- /.state -->
				<div class="clearFix mgb20">
					<div class="floatLeft graArea" style="width:468px; height:223px">
						<img src="../images/board/img_gra_2.gif" width="100%" height="100%" alt="" />
					</div>
					<div class="floatRight" style="width:308px">
						<!-- .boardListStyle -->
						<table cellspacing="0" width="100%" border="0" class="boardListStyle">
							<colgroup>
								<col width="50%" />
								<col width="" />
							</colgroup>
							<thead>
								<tr>
									<th>구분</th>
									<th>건수</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>총 배차</td>
									<td>100</td>
								</tr>
								<tr>
									<td>범용</td>
									<td></td>
								</tr>
								<tr>
									<td>전용</td>
									<td></td>
								</tr>
								<tr>
									<td>윙바디</td>
									<td></td>
								</tr>
								<tr>
									<td>대기</td>
									<td></td>
								</tr>
								<tr class="total">
									<td>완료건수</td>
									<td>95</td>
								</tr>
							</tbody>
						</table>
						<!-- /.boardListStyle -->
					</div>
				</div>
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
							<th>도크ID</th>
							<th>장비</th>
							<th>도착지</th>
							<th>하역<br />소요시간</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>000</td>
							<td>15.05.01 20:00</td>
							<td>07 거 5216</td>
							<td>A0001</td>
							<td>범용</td>
							<td>수도권</td>
							<td>2분30초</td>
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
  <!-- #layerPopup -->
  <div id="layerPopup" class="layerPopup" style="width:500px;">
	<div class="tit">
		<h3>비상정지 명령 사유</h3>
		<div><a href="#none" class="btnLayerClsoe"><img src="../images/board/btn_layer_close.gif" width="40px" height="40px" alt="" /></a></div>
	</div>
	<div class="cont">
		<!-- .boardViewStyle -->
		<table cellspacing="0" width="100%" border="0" class="boardViewStyle">
			<colgroup>
				<col width="35%" />
				<col width="*" />
			</colgroup>
			<tbody>
				<tr>
					<th>구분</th>
					<th>입력값</th>
				</tr>
				<tr>
					<th>배차일시</th>
					<td>15.05.01 20:00</td>
				</tr>
				<tr>
					<th>할당도크</th>
					<td>A0001</td>
				</tr>
				<tr>
					<th>비상정지명령시간</th>
					<td>15.05.01 20:00</td>
				</tr>
				<tr>
					<th>비상정지명령사유</th>
					<td><textarea cols="0" rows="0" style="width:95%; height:50px"></textarea></td>
				</tr>
			</tbody>
		</table>
		<!-- /.boardViewStyle -->
		<div class="btn">
			<a href="#none" class="active">등록</a>
			<a href="#none" class="btnLayerClsoe">취소</a>
		</div>
	</div>
  </div>
  <!-- /#layerPopup -->
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
