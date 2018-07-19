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
		$(document).ready(function(){
			 var StartTr = "";
				for(var i = 0; i < ${comprehensive}.length; i++){
					StartTr += "<tr>" +  
								"<td>" + ${comprehensive}[i].Userid + "</td> " + 
								"<td>" + ${comprehensive}[i].CP + "</td> " + 
								"<td>" + ${comprehensive}[i].evaluationSectionStatus + "</td> " + 
								"<td>" + ${comprehensive}[i].total_count + "</td> " + 
								"<td>" + ${comprehensive}[i].abnormal_count + "</td> " + 
								"<td>" + ${comprehensive}[i].normal_count + "</td> " + 
								"<td>" + ${comprehensive}[i].pathCostStatus + "</td> " + 
								"<td>" + ${comprehensive}[i].bmt_count + "</td>" +
								"<td>" + ${comprehensive}[i].sum_distance + "</td>" +
								"<td>" + ${comprehensive}[i].sum_charge + "</td>" +
								"<td>" + ${comprehensive}[i].sum_tm + "</td>" +
								"<td>" + ${comprehensive}[i].sub_distance + "</td>" +
								"<td>" + ${comprehensive}[i].ratio_distance + "</td>" +
								"<td>" + ${comprehensive}[i].sub_charge + "</td>" +
								"<td>" + ${comprehensive}[i].ratio_charge + "</td>" +
								"<td>" + ${comprehensive}[i].distanceGraph + "</td>" +
								"<td>" + ${comprehensive}[i].timeGraph + "</td>" +
								"<td>" + ${comprehensive}[i].chargeGraph + "</td>" +
							  "</tr>";
				}
				$("#body").html(StartTr); 
		}); 
	</script> 
	
</head>

<body>
	<div class="text-center">
			<h1>DataSheet</h1>
		</div>
			<div class="container-fluid">
				<div class="row">
				<div class="table-responsive">
				<table class="table table-bordered table-hover">
				 <thead>
					<tr>
					 <th style="text-align:center"><p>USER ID</p></th>
					 <th style="text-align:center">컨텐츠 이름</th>
					 <th style="text-align:center">평가 구간 현황</th>
					 <th style="text-align:center">전체 구간 건수</th>
					 <th style="text-align:center">제외 구간 건수</th>
					 <th style="text-align:center">정상 구간 건수</th>
					 <th style="text-align:center">경로 비용 현황</th>
					 <th style="text-align:center">대상 구간 건수</th>
					 <th style="text-align:center">총 경로 거리</th>
					 <th style="text-align:center">총 통행 요금</th>
					 <th style="text-align:center">총 통행 시간</th>
					 <th style="text-align:center">거리 차이(∆c)</th>
					 <th style="text-align:center">거리 차이 비율(∆c/cmin)</th>
					 <th style="text-align:center">통행료 차이 (∆c)</th>
					 <th style="text-align:center">통행료 차이 비율 (∆c/cmin)</th>
					 <th style="text-align:center">경로 거리 그래프 데이터</th>
					 <th style="text-align:center">통행 시간 그래프 데이터</th>
					 <th style="text-align:center">통행 요금 그래프 데이터</th>
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