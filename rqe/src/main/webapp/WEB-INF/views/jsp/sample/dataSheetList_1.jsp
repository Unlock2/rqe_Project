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
			 var StartTr = "";
				for(var i = 0; i < ${list}.length; i++){
					StartTr += "<tr>" +  
								"<td>" + ${list}[i].bmtid + "</td> " + 
								"<td>" + ${list}[i].state_condition + "</td>" +
								"<td>" + ${list}[i].cp + "</td>" +
								"<td>" + ${list}[i].startpoi + "</td>" +
								"<td>" + ${list}[i].endpoi + "</td>" +
								"<td>" + ${list}[i].est_time + "</td>" +
								"<td>" + ${list}[i].est_distance + "</td>" +
								"<td>" + ${list}[i].est_charge + "</td>" +
								"<td>" + ${list}[i].driver_tm + "</td>" +
								"<td>" + ${list}[i].arrive_distance + "</td>" +
								"<td>" + ${list}[i].arrive_charge + "</td>" +
								"<td>" + ${list}[i].score + "</td>" +
							  "</tr>";
				}
				$("#body").html(StartTr); 
		}); 
	</script> 
	
</head>

<body>
<!--     <div id="jb-header"> -->
<!--        <h1 style="text-align:center">dataSheetList.do</h1> -->
<!--     </div> -->

<!-- 	<div class="text-center"> -->
<!-- 			<h1>DataSheet</h1> -->
<!-- 		</div> -->
			<div class="container-fluid">
				<div class="row">
				<div class="table-responsive">
				<table id="datasheetlist" width="100%" class="table table-bordered table-hover">
				 <thead bgcolor="darkgray">
					<tr>
					 <th style="text-align:center">BMT_ID</th>
					 <th style="text-align:center">구간 주행 상태</th>
					 <th style="text-align:center">CP</th>
					 <th style="text-align:center">출발지명</th>
					 <th style="text-align:center">도착지명</th>
					 <th style="text-align:center">예상 시간(분)</th>
					 <th style="text-align:center">예상 거리(km)</th>
					 <th style="text-align:center">예상 요금(원)</th>
					 <th style="text-align:center">실제 소요 시간(분)</th>
					 <th style="text-align:center">실제 소요 거리(km)</th>
					 <th style="text-align:center">실제 소요 요금(원)</th>
					 <th style="text-align:center">선/후착/동시도착</th>
					</tr>
					  </thead>
					  <tbody id="body" class="text-center">
				  	  </tbody>
				</table>
				
				</div>
			</div>
			</div>
		
			
</body>
</html>