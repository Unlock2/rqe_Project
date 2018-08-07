<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page session="false" %>
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
// 		$(document).ready(function(){
// 			 var StartTr = "";
// 				for(var i = 0; i < ${list}.length; i++){
// 					StartTr += "<tr>" +  
// 								"<td>" + ${list}[i].bmtid + "</td> " + 
// 								"<td>" + ${list}[i].state_condition + "</td>" +
// 								"<td>" + ${list}[i].cp + "</td>" +
// 								"<td>" + ${list}[i].startpoi + "</td>" +
// 								"<td>" + ${list}[i].endpoi + "</td>" +
// 								"<td>" + ${list}[i].est_time + "</td>" +
// 								"<td>" + ${list}[i].est_distance + "</td>" +
// 								"<td>" + ${list}[i].est_charge + "</td>" +
// 								"<td>" + ${list}[i].driver_tm + "</td>" +
// 								"<td>" + ${list}[i].arrive_distance + "</td>" +
// 								"<td>" + ${list}[i].arrive_charge + "</td>" +
// 								"<td>" + ${list}[i].score + "</td>" +
// 							  "</tr>";
// 				}
// 				$("#body").html(StartTr); 
// 		}); 
		
		
	</script> 
	
	 <style>
      #jb-container {
        width: 100%;
        margin: 0px auto;
        padding: 0px;
        border: 1px solid #bcbcbc;
      }
      #jb-header {
        padding: 20px;
        margin-bottom: 20px;
        border: 1px solid #bcbcbc;
      }
       #jb-footer1 {
        clear: both;
        padding: 20px;
        border: 1px solid #bcbcbc;
      }
      #jb-footer2 {
        clear: both;
        padding: 20px;
        border: 1px solid #bcbcbc;
      }
	 </style>
</head>

<body>
    <div id="jb-header">
       <h1 style="text-align:center">delay_tm.do</h1>
    </div>

		<div id="jb-footer1" class="container-fluid">
					<div class="row">
						<div class="table-responsive">
							<table class="table table-bordered table-hover">
								<thead bgcolor="darkgray">
									<tr bgcolor="gray">
										 <th style="text-align:center">도착 지연 시간 집계</th>
									</tr>
									<tr>
										 <th style="vertical-align:middle; text-align:center;" rowspan="3">평가 대상명</th>
										 <th style="text-align:center" colspan="7">정상 주행</th>
									</tr>
									<tr>
										<th style="vertical-align:middle; text-align:center;" rowspan="2">구간<br>(단위 : 개)</th>
										<th style="text-align:center">평균 지연 시간</th>
										<th style="text-align:center">최대 지연 시간</th>
										<th style="text-align:center">표준 편차</th>
										<th style="text-align:center">평균 지연율</th>
										<th style="text-align:center">최대 지연율</th>
										<th style="text-align:center">표준 편차</th>
									</tr>
									<tr>
										<th style="text-align:center">단위 : 분</th>
										<th style="text-align:center">단위 : 분</th>
										<th style="text-align:center">단위 : 분</th>
										<th style="text-align:center">단위 : %</th>
										<th style="text-align:center">단위 : %</th>
										<th style="text-align:center">단위 : %p</th>
										
									</tr>
								</thead>
		
									<tbody id="delay_tm" class="table-responsive" style="text-align:center">
								
									</tbody>
							</table>
						</div>
					</div>
				</div>
			
			<div id="jb-footer2" class="container-fluid">
					<div class="row">
						<div class="table-responsive">
							<table class="table table-bordered table-hover">
								<thead bgcolor="darkgray">
									<tr bgcolor="gray">
										 <th style="text-align:center">도착 예정 시간 오차</th>
									</tr>
									<tr>
										 <th style="vertical-align:middle; text-align:center;" rowspan="2">평가 대상</th>
										<th style="vertical-align:middle; text-align:center;" rowspan="2">구간<br>(단위 : 개)</th>
										<th style="vertical-align:middle; text-align:center;">도착 예정 시간<br>오차 평균</th>
										<th style="vertical-align:middle; text-align:center;">도착 예정 시간<br>오차 최대</th>
										<th style="vertical-align:middle; text-align:center;">도착 예정 시간<br>오차 표준 편차</th>
										<th style="vertical-align:middle; text-align:center;">도착 예정 시간<br>오차율 평균</th>
										<th style="vertical-align:middle; text-align:center;">도착 예정 시간<br>오차율 최대</th>
										<th style="vertical-align:middle; text-align:center;">도착 예정 시간<br>오차율<br>표준 편차</th>
									</tr>
									<tr>
										<th style="text-align:center">단위 : 분</th>
										<th style="text-align:center">단위 : 분</th>
										<th style="text-align:center">단위 : 분</th>
										<th style="text-align:center">단위 : %</th>
										<th style="text-align:center">단위 : %</th>
										<th style="text-align:center">단위 : %</th>
										
									</tr>
								</thead>
		
									<tbody id="eta" class="table-responsive" style="text-align:center">
								
									</tbody>
							</table>
						</div>
					</div>
				</div>
</body>
</html>