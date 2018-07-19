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
			for(var i = 0; i < ${detail}.length; i++){
					StartTr += "<tr>" +    
								"<td>" + ${detail}[i].bmtid + "</td> " + 
								"<td>" + ${detail}[i].userid + "</td> " + 
								"<td>" + ${detail}[i].except_info + "</td> " + 
								"<td>" + ${detail}[i].cp + "</td>" +
								"<td>" + ${detail}[i].carinfo + "</td>" +
								"<td>" + ${detail}[i].notice + "</td>" +
								"<td>" + ${detail}[i].requesttm + "</td>" +
								"<td>" + ${detail}[i].starttm + "</td>" +
								"<td>" + ${detail}[i].startpoi + "</td>" +
								"<td>" + ${detail}[i].endpoi + "</td>" +
								"<td>" + ${detail}[i].est_time + "</td>" +
								"<td>" + ${detail}[i].est_distance + "</td>" +
								"<td>" + ${detail}[i].est_charge + "</td>" +
								"<td>" + ${detail}[i].real_req_time + "</td>" +
								"<td>" + ${detail}[i].bmt_start_tm + "</td>" +
								"<td>" + ${detail}[i].bmt_end_tm + "</td>" +
								"<td>" + ${detail}[i].arrive_distance + "</td>" +
								"<td>" + ${detail}[i].arrive_charge + "</td>" +
								"<td>" + ${detail}[i].state_condition + "</td>" +
								"<td>" + ${detail}[i].score + "</td>" +
							  "</tr>";
		}
				$("#body").html(StartTr);
 		}); 
	</script> 
	
</head>

<body>
	<div class="text-center">
			<h1> Detail </h1>
		</div>
			<div class="container-fluid">
				<div class="row">
				<div class="table-responsive">
				<table class="table table-bordered table-hover">
				 <thead>
					<tr>
					 <th style="text-align:center"><pre>BMT_ID </pre></th>
					 <th style="text-align:center"><pre>USER ID</pre></th>
					 <th style="text-align:center"><pre> 최종 사용 여부</pre></th>
					 <th style="text-align:center"><pre>CP</pre></th>
					 <th style="text-align:center"><pre>차량정보</pre></th>
					 <th style="text-align:center"><pre>공지사항</pre></th>
					 <th style="text-align:center"><pre>요청시간(공지)</pre></th>
					 <th style="text-align:center"><pre>출발시간(공지)</pre></th>
					 <th style="text-align:center"><pre>출발지명(공지)</pre></th>
					 <th style="text-align:center"><pre>도착지명(공지)</pre></th>
					 <th style="text-align:center"><pre>예상시간(분)</pre></th>
					 <th style="text-align:center"><pre>예상거리(km)</pre></th>
					 <th style="text-align:center"><pre>예상요금(원)</pre></th>
					 <th style="text-align:center"><pre>실제요청시간</pre></th>
					 <th style="text-align:center"><pre>실제출발시간</pre></th>
					 <th style="text-align:center"><pre>실제도착시간</pre></th>
					 <th style="text-align:center"><pre>주행거리</pre></th>
					 <th style="text-align:center"><pre>소요요금</pre></th>
					 <th style="text-align:center"><pre>구간주행상태</pre></th>
					 <th style="text-align:center"><pre>선/후착</pre></th>
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