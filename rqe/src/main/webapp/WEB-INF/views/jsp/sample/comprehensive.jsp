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
	<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
	
	<script type="text/javascript">
		
		//구글차트 총 경로 거리 
	 	 google.charts.load("current", {packages:["corechart"]});
	     google.charts.setOnLoadCallback(drawChart1);
     
	     function drawChart1() {
	    	 
	    	 var distanceData = ${Comprehensive_distanceGraph};
	    	 var inputData = [['CP', 'sum_Distance']];
	    	 
	    	 for(var i = 0; i < distanceData.length; i++){
	    		 inputData.push([distanceData[i].cp, distanceData[i].sum_distance]);
	    	 }
	    		 
	    	 var data = google.visualization.arrayToDataTable(inputData);
// 	    	 data.addcolumn('string', 'CP');
// 	    	 data.addcolumn('')
	    	 
	
	       var options = {
	         title: '총 경로 거리 (단위 : km)',
	         is3D: true,
	       };
	
	       var chart = new google.visualization.PieChart(document.getElementById('totaldistancechart'));
	       chart.draw(data, options);
	       
	     }
	    // 구글차트 총 통행 요금
	    google.charts.load("current", {packages:["corechart"]});
	    google.charts.setOnLoadCallback(drawChart2);
	     
 		function drawChart2() {
			 var moneyData = ${Comprehensive_chargeGraph};
			 var inputData = [['CP','sum_Charge']];
			 
			 for(var i =0; i < moneyData.length; i++){
				 inputData.push([moneyData[i].cp,moneyData[i].sum_charge]);
			 }
			 
	    	 var data = google.visualization.arrayToDataTable(inputData);
	    		 
	    		 
	       var options = {
	         title: '총 통행 요금 (단위 : 원)',
	         is3D: true,
	       };
	
	       var chart = new google.visualization.PieChart(document.getElementById('totalmoneychart'));
	       chart.draw(data, options);
	       
	     }
 		
 		// 구글차트 총 통행 시간
	    google.charts.load("current", {packages:["corechart"]});
	    google.charts.setOnLoadCallback(drawChart3);   
 		
 		function drawChart3() {
	    	var timeData = ${Comprehensive_timeGraph};
 			var inputData = [['CP','sum_Time']];
 			
 			for (var i =0; i < timeData.length; i++){
 				inputData.push([timeData[i].cp,timeData[i].sum_tm]);
 			}
 			var data = google.visualization.arrayToDataTable(inputData);
	
	       var options = {
	         title: '총 통행 시간 (단위 : 분)',
	         is3D: true,
	       };
	
	       var chart = new google.visualization.PieChart(document.getElementById('totaltimechart'));
	       chart.draw(data, options);
	     }
 		
		$(document).ready(function(){
			var StartTr = "";
			for(var i = 0; i < ${Comprehensive_evaluationSectionStatus}.length; i++){
				StartTr += "<tr>" +  
							"<td style='text-align:center'>" + ${Comprehensive_evaluationSectionStatus}[i].cp + "</td> " +
							"<td style='text-align:right'>" + ${Comprehensive_evaluationSectionStatus}[i].normal_count + "</td> " +
							"<td style='text-align:right'>" + ${Comprehensive_evaluationSectionStatus}[i].abnormal_count + "</td> " +
							"<td style='text-align:right'>" + ${Comprehensive_evaluationSectionStatus}[i].total_count + "</td> " +
						  "</tr>";
			}
			$("#testResult").html(StartTr); 
		});
		
		$(document).ready(function(){
			 var StartTr = "";
				for(var i = 0; i < ${Comprehensive_pathCostStatus}.length; i++){
					StartTr += "<tr>" +  
								"<td style='text-align:center'>" + ${Comprehensive_pathCostStatus}[i].cp + "</td> " +
								"<td style='text-align:right'>" + ${Comprehensive_pathCostStatus}[i].bmt_count + "</td> " +
								"<td style='text-align:right'>" + ${Comprehensive_pathCostStatus}[i].sum_distance + "</td> " +
								"<td style='text-align:right'>" + ${Comprehensive_pathCostStatus}[i].sum_charge + "</td> " +
								"<td style='text-align:right'>" + ${Comprehensive_pathCostStatus}[i].sum_tm + "</td> " +
								"<td style='text-align:right'>" + ${Comprehensive_pathCostStatus}[i].sum_distance + " km"  + "</td> " +
								"<td style='text-align:right'>" + "+ " + ${Comprehensive_pathCostStatus}[i].sub_distance + " km"  + "</td> " +
								"<td style='text-align:right'>" + ${Comprehensive_pathCostStatus}[i].ratio_distance + " %" + "</td> " +
								"<td style='text-align:right'>" + ${Comprehensive_pathCostStatus}[i].sum_charge + " 원" + "</td> " +
								"<td style='text-align:right'>" + "+ " + ${Comprehensive_pathCostStatus}[i].sub_charge + " 원" + "</td> " +
								"<td style='text-align:right'>" + ${Comprehensive_pathCostStatus}[i].ratio_charge + " %" + "</td> " +
							  "</tr>";
				}
				$("#moneyResult").html(StartTr); 
		}); 
 		
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
      #totaldistancechart {
        width: 33.3%;
        padding: 0px;
        margin-bottom: 20px;
        float: left;
        border: 1px solid #bcbcbc;
      }
       #totalmoneychart  {
        width: 33.3%;
        padding: 0px;
        margin-bottom: 20px;
        float: left;
        border: 1px solid #bcbcbc;
      }#totaltimechart {
        width: 33.3%;
        padding: 0px;
        margin-bottom: 20px;
        float: left;
        border: 1px solid #bcbcbc;
      }
      #jb-footer1 {
        clear: both;
        padding: 20px;
        border: 1px solid #bcbcbc;
      }
      #jb-footer2 {
        clear: both;
        padding: 4px;
        border: 1px solid #bcbcbc;
      }
    </style>
	
</head>
	
	<body>	
	 	<div id="jb-container" >
   	  		 <div id="jb-header">
    	    	<h1 style="text-align:center">comprehensive.do</h1>
       		 </div>
     
      			<div id="totaldistancechart" class="many">
		
      			</div>

      			<div id="totalmoneychart" class="many">
       		
			    </div>
    
      			<div id="totaltimechart" class="many">
    			
    			</div>

      			<div id="jb-footer1" class="container-fluid">
					<div class="row">
						<div class="table-responsive">
							<table class="table table-bordered table-hover">
								<thead bgcolor="darkgray">
									<tr bgcolor="gray">
										 <th style="text-align:center">평가 구간 현황</th>
									</tr>
									<tr>
										 <th style="vertical-align:middle; text-align:center;" rowspan="2">평가 대상명</th>
										 <th style="text-align:center">정상 주행</th>
										 <th style="text-align:center">기타(경로이탈 등)</th>
										 <th style="text-align:center">총 구간</th>
									</tr>
									<tr>
										<th style="text-align:center">단위 : 개</th>
										<th style="text-align:center">단위 : 개</th>
										<th style="text-align:center">단위 : 개</th>
									</tr>
									
								</thead>
		
									<tbody id="testResult" class="table-responsive" style="text-align:center">
								
									</tbody>
							</table>
						</div>
					</div>
				</div>
		
		
		<div id="jb-footer2" class="container-fluid">
			<div class="table-responsive">
				<table class="table table-bordered table-hover">
					<thead bgcolor="darkgray">
						<tr bgcolor="gray">
					 		<th style="text-align:center">경로 비용 현황</th>
						</tr>
						<tr>
							 <th style="vertical-align:middle; text-align:center;" rowspan="2">평가 대상명</th>
							 <th style="text-align:center">대상 구간</th>
							 <th style="text-align:center">총 경로 거리</th>
							 <th style="text-align:center">총 통행 요금</th>
							 <th style="text-align:center">총 통행 시간</th>
							 <th style="text-align:center" colspan="3">총 통행 거리</th>
							 <th style="text-align:center" colspan="3">총 통행 요금</th>
						</tr>
						
						<tr>
							<th style="text-align:center">단위 : 개</th>
							<th style="text-align:center">단위 : km</th>
							<th style="text-align:center">단위 : 원</th>
							<th style="text-align:center">단위 : 분</th>
							<th style="text-align:center">총계(Σ)</th>
							<th style="text-align:center">차이(∆C)</th>
							<th style="text-align:center">차이(∆C/Cmin)</th>
							<th style="text-align:center">총계(Σ)</th>
							<th style="text-align:center">차이(∆C)</th>
							<th style="text-align:center">차이(∆C/cmin)</th>
						</tr>
					</thead>			
					
						<tbody id="moneyResult" class="table-responsive" style="text-align:center">
	
						</tbody>
				</table>
		      </div>
    	</div>
   	</div>
	</body>
</html>