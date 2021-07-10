<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<!-- Page Content start -->
<!-- <div id="content" class="p-4 p-md-5"> -->
<nav class="navbar navbar-expand-lg navbar-light bg-light">
	<div class="container-fluid" stlye="float:left;">

		<button type="button" id="sidebarCollapse" class="btn btn-primary">
			<i class="fa fa-bars"></i> <span class="sr-only">토글 버튼 위치(글씨출력
				x)</span>
		</button>

		<button class="btn btn-dark d-inline-block d-lg-none ml-auto"
			type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<i class="fa fa-bars"></i>
		</button>
		<!-- Page Content Header Start -->
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="nav navbar-nav">
				<!-- 현재보고있는 nav item은 calss active를 줄것. -->
				<nav aria-label="breadcrumb">
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a
							onClick="window.location.reload()">Pprk.Main()</a></li>
						<li class="breadcrumb-item active" aria-current="page">관리자-조회,
							추가, 수정</li>
						<li class="breadcrumb-item active" aria-current="page">학생,교직원
							수정</li>
					</ol>

				</nav>

				<!--               <li class="nav-item active">
                <a class="nav-link" href="#">Page Content Header menu -1</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">Page Content Header menu -2</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">Page Content Header menu -3</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">Page Content Header menu -4</a>
              </li>
            </ul> -->
		</div>
		<!-- Page Content Header end -->
	</div>
</nav>
<div class="d-flex justify-content-center">
	<div class="container">
		<div class="screen1"
			style="width: 100%; height: 100%; background-color:; padding-bottom: 40px;">
			<div class="container-fluid">
				<div class="row" style="text-align: center;">
					<div class="col-md-3">
						<img src="images/doge.png"
							style="width: 200px; height: 200px; margin-top: 5%;">
					</div>
			<div class="col-md-3">
							<div class="custom-file" style="width: 250px; margin-top: 20%; 
							padding-left: 10%;">
					<input type="file" class="custom-file-input" id="customFile">
					<!-- 파일첨부 -->
					<label class="custom-file-label" for="customFile">첨부 파일</label>
				</div>
				
					</div>
					<div class="col-md-3">
					<div class="input-group "
						style="margin-top: 20%; padding-left: 10%;">
						<div class="input-group-prepend">
							<span class="input-group-text" id="basic-addon3">이름</span>
						</div>
						<input type="text" class="form-control" value=123
							id="STUDENT_NUMBER" aria-describedby="basic-addon3">
					</div>
					</div>
					<div class="col-md-3">
						<div class="input-group "
						style="margin-top: 20%; padding-left: 10%;">
						<div class="input-group-prepend">
							<span class="input-group-text" id="basic-addon3">학번</span>
						</div>
						<input type="text" class="form-control" value=123
							id="STUDENT_NUMBER" aria-describedby="basic-addon3">
					</div>
					</div>
				</div>
				<div class="row" style="margin-top: 5%; text-align: center;">
					<div class="col-md-3">
						<select class="custom-select">
							<option>학부:외국어학부</option>
							<option>학부:건축학부</option>
							<option>학부:예체능부</option>
						</select>
					</div>
					<div class="col-md-3">
						<select class="custom-select">
							<option>학과:일어일문학</option>
							<option>학과:컴퓨터공학</option>
							<option>학과:기계공학</option>
						</select>
					</div>
					<div class="col-md-3">
						<select class="custom-select">
							<option>구분:대학생</option>
							<option>구분:교직원</option>
						</select>
					</div>
				</div>
				<div class="row" style="margin-top: 5%; text-align: center;">
					<div class="col-md-3">
						<select class="custom-select">
							<option>학적상태:재학</option>
							<option>학적상태:휴학</option>
							<option>학적상태:졸업</option>
						</select>
					</div>
					<div class="col-md-3">
						<input type="text" id="datePicker" class="form-control" >
					</div>
					<div class="col-md-6"></div>

				</div>
			</div>
		</div>

		<div class="screen2"
			style="width: 70%; height: 100%; float: left; background-color:; padding-top: 40px;">
			<div class="col text-center">
				<button href="#" class="btn btn-primary mr-5">수정</button>
				<button href="#" class="btn btn-primary">취소</button>
			</div>
		</div>
		<div class="screen3"
			style="width: 30%; height: auto%; float: right; background-color: #FF602A;">
			<h5 style="color: #ffffff;">정보 삭제의 경우 정보 보호법에 따라 지원하지 않습니다. 퇴직 ,
				졸업 후 5년간 보관후 자동삭제됩니다.</h5>
		</div>
	</div>
</div>
<script>
$(function(){
	$('#datepicker').datepicker({
		format: "yyyy-mm-dd",
		autoclose : true,
		daysOfWeekDisabled : [0,6],
		templates : {
	        leftArrow: '&laquo;',
	        rightArrow: '&raquo;'
	    },
		uiLibrary : 'bootstrap4'
	});
});
</script>
<script src="./js/toggleAction.js"></script>
<!-- </div> -->
<!-- Page Content end -->