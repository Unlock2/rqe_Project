<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">
 <head>
  <meta http-equiv="content-type" content="text/html; charset=utf-8" />
  <title>Welcome to RQE System (Route Quality Evaluation)</title>
  <link rel="stylesheet" type="text/css" href="./css/import.css" />
  <script type="text/javascript" src="./js/jquery-1.7.1.min.js"></script>
  <script type="text/javascript" src="./js/style.js"></script>
  <script type="text/javascript">
	$(function(){
		$('#login .text').focusin(function(){
			$(this).addClass('active');
		}).focusout(function(){
			$(this).removeClass('active');
		});
	});
  </script>
 </head>

 <body style="background:#dce1e9 url(./images/login/bg_body.gif) center 0 no-repeat;">
	<!-- #login -->
	<div id="login">
		<ul>
			<li><label for="userId">ID</label> <input type="text" id="userId" class="text" /></li>
			<li><label for="userPw">PASSWORD</label> <input type="password" id="userPw" class="text" /></li>
			<li class="btn"><a href="../first/sample/home.do"><img src="./images/login/btn_login.gif" alt="로그인" /></a></li>
			<li style="padding:7px 0 0 302px"><a href="#layerPopup_1" class="btnLayer">관리자 등록</a></li>
		</ul>
	</div>
	<!-- /#login -->

  <!-- 관리자 등록 -->
  <div id="layerPopup_1" class="layerPopup" style="width:400px;">
	<div class="tit">
		<h3>관리자 등록</h3>
		<div><a href="#none" class="btnLayerClose"><img src="./images/board/btn_layer_close.gif" width="40px" height="40px" alt="" /></a></div>
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
					<th>아이디</th>
					<td><input type="text"class="text" style="width:90%" /></td>
				</tr>
				<tr>
					<th>비밀번호</th>
					<td><input type="password"class="text" style="width:90%" /></td>
				</tr>
				<tr>
					<th>비밀번호확인</th>
					<td><input type="password"class="text" style="width:90%" /></td>
				</tr>
				<tr>
					<th>이름</th>
					<td><input type="text"class="text" style="width:90%" /></td>
				</tr>
				<tr>
					<th>회사명</th>
					<td><input type="text"class="text" style="width:90%" /></td>
				</tr>
				<tr>
					<th>부서명</th>
					<td><input type="text"class="text" style="width:90%" /></td>
				</tr>
				<tr>
					<th>직급명</th>
					<td><input type="text"class="text" style="width:90%" /></td>
				</tr>
				<tr>
					<th>연락처</th>
					<td><input type="text"class="text" style="width:90%" /></td>
				</tr>
				<tr>
					<th>이메일주소</th>
					<td><input type="text"class="text" style="width:90%" /></td>
				</tr>
			</tbody>
		</table>
		<!-- /.boardViewStyle -->
		<div class="btn">
			<a href="#none" class="active btnLayerClose">등록</a>
			<a href="#none" class="btnLayerClose">취소</a>
		</div>
	</div>
  </div>
  <!-- /관리자 등록 -->
 </body>
</html>
