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
			<li><a href="./detailsData_1.do"><img src="../images/common/gnb_4.gif" alt="" /></a></li>
			<li><a href="./system_1.do" class="active"><img src="../images/common/gnb_5.gif" alt="" /></a></li>
		</ul>
	</div>
	<!-- /#header -->

	<hr />

	<!-- #container -->
	<div id="container" class="clearFix">
		<!-- 현제 강조된 페이지에 a class="active" 삽입해 주세요 2뎁스 3뎁스 까지 들어 갑니다. -->
		<!-- #snbArea -->
		<div id="snbArea">
			<h2><img src="../images/snb/h2_system.gif" alt="" /></h2>
			<ul class="snb">
				<li><a href="./system_1.do">사용자 관리</a></li>
				<li><a href="./system_2.do" class="active">차량 관리</a></li>
<!-- 				<li><a href="./system_3.html">도크관리</a></li> -->
<!-- 				<li><a href="./system_4.html" class="active">장비관리</a></li> -->
			</ul>
		</div>
		<!-- /#snbArea -->
		<!-- #contentsArea -->
		<div id="contentsArea"style="width: 90%;">
			<!-- .titContents -->
			<div class="titContents">
				<h2>차량 관리</h2>
				<p>Home > 시스템 관리 > <strong>차량 관리</strong></p>
			</div>
			<!-- /.titContents -->
			<!-- .contents -->
			<div class="contents">
				<!-- .search -->
				<div class="search">
					<span class="pd first">검색</span>
					<select>
						<option>장비유형</option>
						<option>듀얼</option>
					</select>
					<select>
						<option>범용</option>
						<option>전용</option>
						<option>윙바디</option>
					</select>
					<a href="#none" class="btnSearch"><img src="../images/board/btn_search.gif" alt="" /></a>
					<div class="floatRight"><a href="#layerPopup_1" class="btnLayer"><img src="../images/board/btn_regist_2.gif" alt="" /></a></div>
				</div>
				<!-- /.search -->
				<!-- .boardListStyle -->
				<table cellspacing="0" width="100%" border="0" class="boardListStyle borderTrClick">
					<!-- <colgroup>
						<col width="" />
					</colgroup> -->
					<thead>
						<tr>
							<th>NO</th>
							<th>장비ID</th>
							<th>장비번호</th>
							<th>장비유형</th>
							<th>듀얼여부</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>000</td>
							<td>D0001</td>
							<td>EQ-0001</td>
							<td>범용</td>
							<td>듀얼</td>
						</tr>
						<tr>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr><td></td><td></td><td></td><td></td><td></td></tr>
						<tr><td></td><td></td><td></td><td></td><td></td></tr>
						<tr><td></td><td></td><td></td><td></td><td></td></tr>
						<tr><td></td><td></td><td></td><td></td><td></td></tr>
						<tr><td></td><td></td><td></td><td></td><td></td></tr>
						<tr><td></td><td></td><td></td><td></td><td></td></tr>
						<tr><td></td><td></td><td></td><td></td><td></td></tr>
						<tr><td></td><td></td><td></td><td></td><td></td></tr>
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

  <hr />

  <!-- 장비정보 등록 -->
  <div id="layerPopup_1" class="layerPopup" style="width:400px;">
	<div class="tit">
		<h3>장비정보 등록</h3>
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
					<th>장비ID</th>
					<td>A0009</td>
				</tr>
				<tr>
					<th>장비번호</th>
					<td><input type="text" class="text" /></td>
				</tr>
				<tr>
					<th>장비유형</th>
					<td>
						<select>
							<option>범용</option>
							<option>전용</option>
							<option>윙바디</option>
						</select>
					</td>
				</tr>
				<tr>
					<th>듀얼</th>
					<td>
						<select>
							<option>듀얼</option>
							<option>싱글</option>
						</select>
					</td>
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
  <!-- /장비정보 등록 -->
  <!-- 장비정보 수정 -->
  <div id="layerPopupInfo" class="layerPopup" style="width:400px;">
	<div class="tit">
		<h3>장비정보 수정</h3>
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
					<th>장비ID</th>
					<td>A0009</td>
				</tr>
				<tr>
					<th>장비번호</th>
					<td><input type="text" class="text" /></td>
				</tr>
				<tr>
					<th>장비유형</th>
					<td>
						<select>
							<option>범용</option>
							<option>전용</option>
							<option>윙바디</option>
						</select>
					</td>
				</tr>
				<tr>
					<th>듀얼</th>
					<td>
						<select>
							<option>듀얼</option>
							<option>싱글</option>
						</select>
					</td>
				</tr>
			</tbody>
		</table>
		<!-- /.boardViewStyle -->
		<div class="btn">
			<a href="#none" class="active btnLayerClsoe">수정</a>
			<a href="#alert" class="del btnLayerClsoe btnLayer">삭제</a>
			<a href="#none" class="btnLayerClsoe">취소</a>
		</div>
	</div>
  </div>
  <!-- /장비정보 수정 -->
  <!-- #alert 삭제 -->
  <div id="alert" class="layerPopup alert" style="width:400px;">
	<div class="tit">
		<h3>장비정보 삭제</h3>
		<div><a href="#none" class="btnLayerClsoe"><img src="../images/board/btn_layer_close.gif" width="40px" height="40px" alt="" /></a></div>
	</div>
	<div class="cont">
		<p class="txt">장비번호 EQ-0001 정보를 삭제하시겠습니까?</p>
		<div class="btn">
			<a href="#none" class="del btnLayerClsoe">삭제</a>
			<a href="#layerPopupInfo" class="btnLayerClsoe btnLayer">취소</a>
		</div>
	</div>
  </div>
  <!-- /#alert 삭제 -->

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
