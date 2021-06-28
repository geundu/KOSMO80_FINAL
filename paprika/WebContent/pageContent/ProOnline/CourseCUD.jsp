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
						<li class="breadcrumb-item active" aria-current="page">관리자-e-Learning</li>
						<li class="breadcrumb-item active" aria-current="page">Dashboard</li>
						<li class="breadcrumb-item active" aria-current="page">강좌등록</li>
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
		<!--첫번째 메인 시작-->
		<div class="screen1"
			style="width: 100%; height: auto%; background-color: ;">
			<h3 style="text-align: center;">강좌 등록 페이지 입니다.</h3>
			<p>
			<div style="display: flex; justify-content: center;">
				<div class="col-md-3">
					<div class="input-group mb-3" style="margin-top: 5%;">
						<div class="input-group-prepend">
							<span class="input-group-text" id="basic-addon3">담당교수</span>
						</div>
						<input type="text" class="form-control" placeholder="강찬영"
							id="basic-url" aria-describedby="basic-addon3" disabled>
					</div>
				</div>
			</div>
			<!---->
			</p>
		</div>
		<!--첫번째 메인 끝-->
		<!--두번째 메인 프레임-->
		<div class="screen2"
			style="width: 100%; height: auto%; background-color: ;">
			<h1 class="mb-4"></h1>
			<p>
			<div style="display: flex; justify-content: center;">
				<div class="col-md-3">
					<div class="input-group mb-3" style="margin-top: 20%;">
						<div class="input-group-prepend">
							<span class="input-group-text" id="basic-addon3">강좌 제목</span>
						</div>
						<input type="text" class="form-control" placeholder="컴퓨터 개론"
							id="basic-url" aria-describedby="basic-addon3">
					</div>
				</div>
			</div>
			<!---->
			<div style="display: flex; justify-content: center;">
				<div class="col-md-3">
					<div class="input-group mb-3" style="margin-top: 20%;">
						<div class="input-group-prepend">
							<span class="input-group-text" id="basic-addon3">최대 수강인원</span>
						</div>
						<input type="text" class="form-control" placeholder="100"
							id="basic-url" aria-describedby="basic-addon3">
					</div>
				</div>
			</div>
			<!---->
			<div style="display: flex; justify-content: center;">
				<div class="col-md-5">
					<div class="input-group mb-5" style="margin-top: 20%;">
						<div class="input-group-prepend">
							<span class="input-group-text" id="basic-addon3">비고</span>
						</div>
						<input type="text" class="form-control"
							placeholder="컴퓨터에 대한 강의입니다." id="basic-url"
							aria-describedby="basic-addon3">
					</div>
				</div>
			</div>
			<!---->
			<div class="col text-center" style="text-align: center;">
				<button href="#" class="btn btn-primary mr-5">강좌 등록</button> 
				<button href="#" class="btn btn-primary">취소</button>
			</div>

			</p>
		</div>
	</div>
</div>
<!---->
<!-- Page Content end -->
</div>
</div>
<script src="./js/toggleAction.js"></script>
<!-- </div> -->
<!-- Page Content end -->