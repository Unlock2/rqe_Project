<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page session="false" %>
<%@ page import="org.json.simple.JSONObject"%> 
<%@ page import="org.json.simple.JSONArray"%>
<%@page import="java.util.HashMap"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
	<head>
	<!-- 	UTF-8 선언 -->
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<!-- 	Bordered Table 관련 추가 Source	 -->
		<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- 	<header name = "Access-Control-Allow-Origin" value = "*" />  -->
		
	<!-- 	jQuery CDN -->
		<script  src="http://code.jquery.com/jquery-latest.min.js" charset="utf-8"></script>
		
	<!-- 	Json/Jquery CDN -->
		<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-json/2.6.0/jquery.json.min.js"></script>
	
	<!-- 	bootstrap CDN -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		 
		 <script type="text/javascript">
				$(document).ready(function(){
					var yugoinfo = ${detail}.yugoinfo;
					var Split = yugoinfo.split('//');
					var data = "";
					for(var i=0; i < Split.length; i++){
	// 					data += document.write('<p>' + Split[i] + '</p>');
	
						data += '<p>' + Split[i] + '</p>';
					}
					
					$("#yugoinfo").html(data);		
				});
		</script> 
		
	</head>
	
	<body>
		 <div id="jb-header">
	       <h1 style="text-align:center">dataSheetListDetail.do</h1>
	     </div>
	
		 <div class="text-center">
				<h1> Detail </h1>
		 </div>
				<div id="detailList" class="container-fluid">
					<div class="row">
					<div class="table-responsive">
					<table class="table table-bordered table-hover">
						 <thead bgcolor="darkgray">
							<tr>
								 <th style="text-align:center">BMT_ID</th>
								 <th style="text-align:center">USER ID</th>
								 <th style="text-align:center">최종 사용 여부</th>
								 <th style="text-align:center">CP</th>
								 <th style="text-align:center">차량정보</th>
								 <th style="text-align:center">공지사항</th>
								 <th style="text-align:center">요청시간(공지)</th>
								 <th style="text-align:center">출발시간(공지)</th>
								 <th style="text-align:center">출발지명(공지)</th>
								 <th style="text-align:center">도착지명(공지)</th>
								 </tr>
						 </thead>
							<tbody>
								<tr>   
 									<td style="text-align:center">${detail.bmtid}</td> <!-- <label id="bmtid"></label> -->
									<td style="text-align:center">${detail.userid}</td>  
									<td style="text-align:center">${detail.except_info}</td>  
									<td style="text-align:center">${detail.cp}</td>  
									<td style="text-align:center">${detail.carinfo}</td>  
									<td style="text-align:center">${detail.notice}</td>  
									<td style="text-align:center">${detail.requesttm}</td>  
									<td style="text-align:center">${detail.starttm}</td>  
									<td style="text-align:center">${detail.startpoi}</td>  
									<td style="text-align:center">${detail.endpoi}</td>  
<%-- 									<td style="text-align:center">${detail.bmtid}</td>   --%>
<%-- 									<td style="text-align:center">${detail.userid}</td>   --%>
<%-- 									<td style="text-align:center">${detail.except_info}</td>   --%>
<%-- 									<td style="text-align:center">${detail.cp}</td>   --%>
<%-- 									<td style="text-align:center">${detail.carinfo}</td>   --%>
<%-- 									<td style="text-align:center">${detail.notice}</td>   --%>
<%-- 									<td style="text-align:center">${detail.requesttm}</td>   --%>
<%-- 									<td style="text-align:center">${detail.starttm}</td>   --%>
<%-- 									<td style="text-align:center">${detail.startpoi}</td>   --%>
<%-- 									<td style="text-align:center">${detail.endpoi}</td>   --%>
								</tr>
							</tbody>
						  <thead bgcolor="darkgray">
								 <tr>
									 <th style="text-align:center">실제요청시간</th>
									 <th style="text-align:center">예상소요시간(분)</th>
									 <th style="text-align:center">예상소요거리(km)</th>
									 <th style="text-align:center">예상소요요금(원)</th>
									 <th style="text-align:center">실제출발시간</th>
									 <th style="text-align:center">실제도착시간</th>
									 <th style="text-align:center">주행거리</th>
									 <th style="text-align:center">소요요금</th>
									 <th style="text-align:center">구간주행상태</th>
									 <th style="text-align:center">선/후착</th>
								</tr>
						  </thead>
							 <tbody>
								<tr>   
									<td style="text-align:center">${detail.real_req_time}</td>  
									<td style="text-align:center">${detail.est_time}</td>  
									<td style="text-align:center">${detail.est_distance}</td>  
									<td style="text-align:center">${detail.est_charge}</td>  
									<td style="text-align:center">${detail.bmt_start_tm}</td>  
									<td style="text-align:center">${detail.bmt_end_tm}</td>  
									<td style="text-align:center">${detail.arrive_distance}</td>  
									<td style="text-align:center">${detail.arrive_charge}</td>  
									<td style="text-align:center">${detail.state_condition}</td>  
									<td style="text-align:center">${detail.score}</td>
								</tr>
							 </tbody>
						   <thead bgcolor="darkgray">
								<tr>
									<th colspan="10" style="text-align:center">특이사항</th>
								</tr>
						   </thead>
							
								<tr>
									<td id="yugoinfo" colspan="10" class="text-left"></td> <!--${detail.yugoinfo} -->
									
								</tr>
							 <tbody id="body" class="text-center">
						  	 </tbody>
						</table>
						
					</div>
					</div>
				</div>
				
	</body>
</html>