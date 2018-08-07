<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">
<%@ page import="org.json.simple.JSONObject"%> 
<%@ page import="org.json.simple.JSONArray"%>
<%@page import="java.util.HashMap"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>


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
			<li><a href="./synthesisData_1.do" class="active"><img src="../images/common/gnb_3.gif" alt="" /></a></li>
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
			<h2><img src="../images/snb/h2_system.gif" alt="" /></h2>
			<ul class="snb">
				<li><a href="./synthesisData_1.do" class="active">DataSheet</a></li>
				<li><a href="./synthesisData_2.do" style=" height: 60px;"> 건수 / 거리 / 요금 /<br> 시간 집계</a></li>
				<li><a href="./synthesisData_3.do" style=" height: 60px;">평가 구간 현황 및<br> 선후착 집계</a></li>
				<li><a href="./synthesisData_4.do" style=" height: 60px;">도착 지연 시간 및<br> 오차 집계</a></li>
			</ul>
		</div>
		<!-- /#snbArea -->
		<!-- #contentsArea -->
	<div id="contentsArea" style="margin-left: 140px;">
			<!-- .titContents -->
			<div class="titContents">
				<h2>DataSheet</h2>
				<p>Home > 종합 데이터 > <strong>DataSheet</strong></p>
			</div>
			<!-- /.titContents -->
			<!-- .contents -->
			<div class="contents">
				<!-- .search -->
				<div class="search">
<!-- 					<span class="pd first">완료여부</span> -->
<!-- 					<select> -->
<!-- 						<option>완료</option> -->
<!-- 						<option>미완료</option> -->
<!-- 					</select> -->
<!-- 					<span class="pd">장애유형</span> -->
<!-- 					<select> -->
<!-- 						<option>적재불량</option> -->
<!-- 						<option>장애물검지</option> -->
<!-- 						<option>비상정지</option> -->
<!-- 						<option>기타</option> -->
<!-- 					</select> -->
					<span class="pd">시작 날짜</span>
					<input type="text" class="text date" />
					
					<span class="pd">종료 날짜</span>
					<input type="text" class="text date" />
					<a href="#none" class="btnSearch"><img src="../images/board/btn_search.gif" alt="" /></a>
				</div>
				<!-- /.search -->
				<!-- .state -->
				<!-- .boardListStyle -->
				<table cellspacing="0" width="100%" border="0" class="boardListStyle">
					<!-- <colgroup>
						<col width="" />
					</colgroup> -->
					<thead>
						<tr>
							 <th>BMT_ID</th>
							 <th>구간 주행 상태</th>
							 <th>CP</th>
							 <th>출발지명</th>
							 <th>도착지명</th>
							 <th>예상 시간(분)</th>
							 <th>예상 거리(km)</th>
							 <th>예상 요금(원)</th>
							 <th>실제 소요 시간(분)</th>
							 <th>실제 소요 거리(km)</th>
							 <th>실제 소요 요금(원)</th>
							 <th>선/후착/동시도착</th>
						</tr>
					</thead>
					<tbody id="dataSheetListbody">
						<c:forEach items="${list}" var="item">
								<tr>
								<td>${item.bmtid}</td>
								<td>${item.state_condition}</td>
								<td>${item.cp}</td>
								<td>${item.startpoi}</td>
								<td>${item.endpoi}</td>
								<td>${item.est_time}</td>
								<td>${item.est_distance}</td>
								<td>${item.est_charge}</td>
								<td>${item.driver_tm}</td>
								<td>${item.arrive_distance}</td>
								<td>${item.arrive_charge}</td>
								<td>${item.score}</td>
								</tr> 
						</c:forEach>
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

  
 </body>
</html>
