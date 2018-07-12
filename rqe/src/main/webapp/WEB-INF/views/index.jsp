<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- 	UTF-8 선언 -->
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- 	Bordered Table 관련 추가 Source	 -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 	<header name = "Access-Control-Allow-Origin" value = "*" />  -->
	
<!-- 	jQuery Paging	 -->
	<script src="/first/js/paging.js"></script>

<!-- 	jQuery CDN -->
	<script  src="http://code.jquery.com/jquery-latest.min.js" charset="utf-8"></script>
	
<!-- 	Json/Jquery CDN -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-json/2.6.0/jquery.json.min.js"></script>

<!-- 	bootstrap CDN -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
		
		<style>
				#paging {
			        list-style-type:none;
			}
			    #paging li {      
			        margin:3px;
			        cursor:pointer;
			        float:left;
			        color: #666;
			        font-size: 1.1em;
			}
			    #paging li.selected {      
			        color: #0080ff;
			        font-weight:bold;
			}
			    #paging li:hover {      
			        color: #0080ff;
			}
	
		</style>	
</head>

	<script>
	
	$(document).ready(function(){
			console.log("document Start !!!!");
			var params = {
				"userid" : "user01",
				"start_date" : "2017-12-21",
				"end_date" : "2017-12-22",
				"rqcode" : "datasheet",
				"yugoinfo": "2017-12-21 07:40:00, 사고,공사,통제, 37.312173, 126.95424 // 2017-12-21 07:35:00, 사고,공사, 37.312173, 126.95424"
				
			};
			$.ajax({ 
					type: 'GET'
					, url: 'http://192.168.0.20:8080/web/datasheet'	
					, dataType: 'json'
					, data: params
				, success: function(data) { // 호출 성공
					 // 성공했을때 로직
					 var StartTr = "";
					for(var i = 0; i < data.datasheet.length; i++){
						StartTr += "<tr>" +  
									"<td>" + data.datasheet[i].bmtid + "</td> " + 
									"<td>" + data.datasheet[i].userid + "</td>" +
									"<td>" + data.datasheet[i].except_info + "</td>" +
									"<td>" + data.datasheet[i].cp + "</td>" +
									"<td>" + data.datasheet[i].carinfo + "</td>" +
									"<td>" + data.datasheet[i].requesttm + "</td>" +
									"<td>" + data.datasheet[i].starttm + "</td>" +
									"<td>" + data.datasheet[i].startpoi + "</td>" +
									"<td>" + data.datasheet[i].endpoi + "</td>" +
									"<td>" + data.datasheet[i].est_time + "</td>" +
									"<td>" + data.datasheet[i].est_distance + "</td>" +
									"<td>" + data.datasheet[i].est_charge + "</td>" +
									"<td>" + data.datasheet[i].real_req_time + "</td>" +
									"<td>" + data.datasheet[i].bmt_start_tm + "</td>" +
									"<td>" + data.datasheet[i].bmt_end_tm + "</td>" +
									"<td>" + data.datasheet[i].arrive_distance + "</td>" +
									"<td>" + data.datasheet[i].arrive_charge + "</td>" +
									"<td>" + data.datasheet[i].state_condition + "</td>" +
									"<td>" + data.datasheet[i].notice + "</td>" +
									"<td>" + data.datasheet[i].yugoinfo + "</td>"
								  "</tr>";
					}
					$("#body").html(StartTr); 
				} 
				, error:function(request,status,error){
					// 실패 했을때 로직
					alert('통신실패!!');
					console.log("request :: " + request);
					console.log("status :: " + status);
					console.log("error :: " + error);
				}
				
             });
		});
	</script>

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
					 <th style="text-align:center" width="5%"><p>BMT_ID</p></th>
					  <th style="text-align:center">User ID</th>	
					  <th style="text-align:center" width="4%">최종사용여부</th>
					  <th style="text-align:center" width="2%"><p>CP</p></th>	
					  <th style="text-align:center">차량<br>정보</th>	
					  <th style="text-align:center" width="5%">요청시간<br>(공지)</th>	
					  <th style="text-align:center" width="5%">출발시간<br>(공지)</th>
					  <th style="text-align:center" width="12%">출발지명<br>(공지)</th>
					  <th style="text-align:center" width="12%">도착지명<br>(공지)</th>
					  <th style="text-align:center" width="3%">예상<br>시간</th>
					  <th style="text-align:center" width="4%">예상<br>거리</th>	
					  <th style="text-align:center" width="4%">예상<br>요금</th>	
					  <th style="text-align:center" width="6%">실제<br>요청시간</th>
					  <th style="text-align:center" width="6%">실제<br>출발시간</th>
					  <th style="text-align:center" width="6%">실제<br>도착시간</th>
					  <th style="text-align:center" width="3%">주행<br>거리</th>
					  <th style="text-align:center" width="3%">소요<br>요금</th>
					  <th style="text-align:center" width="5%">구간주행<br>상태</th>
					  <th style="text-align:center" width="5%"><p>공지사항</p></th>
					  <th style="text-align:center" width="50%"><p>특이사항</p></th>
					</tr>
					  </thead>
					  <tbody id="body" class="text-center">
				  	  </tbody>
				</table>
				</div>
			</div>
			</div>
	
			
			<div id="log"></div>
			<!--현재는 페이징 영역 ID "paging" 으로 고정 -->
				<ul id="paging">
				</ul>
				
				<script>

				//pager객체 생성
				    var page = new pager();
				
				    //클릭했을때 사용할 콜백함수 지정. 
				    //여기서는 테스트용함수 지정.
				    //게시판 같은경우 리스트를 호출하는 함수 지정하면된다.
				    page.buttonClickCallback = listContent;
				    
				    //테스트용.
				    function listContent () {
				        //console.log(pageCurrent);
				        //alert(pageCurrent);        
				        
				        //Ajax 작업 (S)
				
				
				        //페이징 처리를 위해 총레코드수를 매개변수로 전달해야함.
				        page.renderpager(1001); 
				        
				        //Ajax 작업 (E)
				    }
				
				    //최초 로딩시 실행.
				    listContent();
				</script>
			
</body>
</html>