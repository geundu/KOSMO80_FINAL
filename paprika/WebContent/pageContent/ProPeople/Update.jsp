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
							href="http://localhost:9010/project/frameForm.jsp">Pprk.Main()</a></li>
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
						<div class="input-group mb-3" style="margin-top: 20%;">
							<input type="text" class="form-control"
								placeholder="사진은 350*470px이하 3:4 사이즈로 업로드"
								aria-label="Recipient's username"
								aria-describedby="button-addon2">
							<div class="input-group-append">
								<button class="btn btn-outline-secondary" type="button"
									id="button-addon2">업로드</button>
							</div>
						</div>
					</div>
					<div class="col-md-3">
						<input type="text" class="form-control" placeholder="한글 이름 : 박정호"
							aria-label="Username" aria-describedby="basic-addon1"
							style="margin-top: 20%;">
					</div>
					<div class="col-md-3">
						<input type="text" class="form-control"
							placeholder="학번 : 1232321321" aria-label="Class of"
							aria-describedby="basic-addon1" style="margin-top: 20%;">
					</div>
				</div>
				<div class="row" style="margin-top: 5%; text-align: center;">
					<div class="col-md-3">
						<select class="custom-select">
							<option>대학:인문사회대학</option>
							<option>대학:공과대학</option>
							<option>대학:자연과학대학</option>
						</select>
					</div>
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
						<input id="datepicker" width="276" />
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
	$('#datepicker').datepicker({
		uiLibrary : 'bootstrap4'
	});
</script>
<script src="https://unpkg.com/gijgo@1.9.13/js/gijgo.min.js"
	type="text/javascript"></script>
<link href="https://unpkg.com/gijgo@1.9.13/css/gijgo.min.css"
	rel="stylesheet" type="text/css" />
<script src="./js/toggleAction.js"></script>
<!-- </div> -->
<!-- Page Content end -->