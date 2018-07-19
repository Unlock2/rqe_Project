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
		
		
		$('.btn-example').click(function(){
	        var $href = $(this).attr('href');
	        layer_popup($href);
	    });
	    function layer_popup(el){

	        var $el = $(el);        //레이어의 id를 $el 변수에 저장
	        var isDim = $el.prev().hasClass('dimBg');   //dimmed 레이어를 감지하기 위한 boolean 변수

	        isDim ? $('.dim-layer').fadeIn() : $el.fadeIn();

	        var $elWidth = ~~($el.outerWidth()),
	            $elHeight = ~~($el.outerHeight()),
	            docWidth = $(document).width(),
	            docHeight = $(document).height();

	        // 화면의 중앙에 레이어를 띄운다.
	        if ($elHeight < docHeight || $elWidth < docWidth) {
	            $el.css({
	                marginTop: -$elHeight /2,
	                marginLeft: -$elWidth/2
	            })
	        } else {
	            $el.css({top: 0, left: 0});
	        }

	        $el.find('a.btn-layerClose').click(function(){
	            isDim ? $('.dim-layer').fadeOut() : $el.fadeOut(); // 닫기 버튼을 클릭하면 레이어가 닫힌다.
	            return false;
	        });

	        $('.layer .dimBg').click(function(){
	            $('.dim-layer').fadeOut();
	            return false;
	        });

	    }
		
// 		/* 게시글 제목 클릭 상세보기 */ 
// 		$("#datasheetlist tr").on('click',function(){ 
// 			var popUrl = "/sample/dataSheetListDetail?docnum="+$(this).attr('userid','bmtid');	//팝업창에 출력될 페이지 URL 
// 			var popOption = "width=100%, height=100%, resizable=no, scrollbars=yes, status=no;"; //팝업창 옵션(optoin) 
			
// 			window.open(popUrl,"",popOption); 
			
// 		}); 

		
	</script> 
	
</head>

<body>
	<div class="text-center">
			<h1>DataSheet</h1>
		</div>
			<a href="#layer2" class="btn-example">딤처리 팝업레이어 1</a>
				<div class="dim-layer"></div>
    			<div class="dimBg"></div>
    			<div id="layer2" class="pop-layer"></div>
        		<div class="pop-container"></div>
            	<div class="pop-conts"></div>
           	
         		<div class="btn-r">
                    <a href="#" class="btn-layerClose">Close</a>
                </div>
			
			<div class="container-fluid">
				<div class="row">
				<div class="table-responsive">
				<table id="datasheetlist" width="100%" class="table table-bordered table-hover">
				 <thead>
					<tr>
					 <th style="text-align:center"><pre>BMT_ID</pre></th>
					 <th style="text-align:center"><pre>구간 주행 상태</pre></th>
					 <th style="text-align:center"><pre>CP</pre></th>
					 <th style="text-align:center"><pre>출발지명</pre></th>
					 <th style="text-align:center"><pre>도착지명</pre></th>
					 <th style="text-align:center"><pre>예상 시간(분)</pre></th>
					 <th style="text-align:center"><pre>예상 거리(km)</pre></th>
					 <th style="text-align:center"><pre>예상 요금(원)</pre></th>
					 <th style="text-align:center"><pre>실제 소요 시간(분)</pre></th>
					 <th style="text-align:center"><pre>실제 소요 거리(km)</pre></th>
					 <th style="text-align:center"><pre>실제 소요 요금(원)</pre></th>
					 <th style="text-align:center"><pre>선/후착/동시도착</pre></th>
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