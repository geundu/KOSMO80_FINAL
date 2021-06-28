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
						<li class="breadcrumb-item active" aria-current="page">강좌조회</li>
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
			style="width: 100%; height: auto%; background-color:;">
			<table class="table">
				<tbody class="">
					<!--버튼 선언 시작 -->
					<tr>
						<th scope="col" style="border-top: 0px;">
							<button type="button" class="btn btn-primary">피드백 확인</button>
						</th>
						<th scope="col" style="border-top: 0px;">
							<button type="button" class="btn btn-primary">시험관리</button>
						</th>
						<th scope="col" style="border-top: 0px;">
							<button type="button" class="btn btn-primary">강의자료 관리</button>
						</th>
					</tr>
				</tbody>
			</table>
			<h3>
				<div class="dropdown" style="text-align: center;">강의 조회</div>
			</h3>
			</p>
		</div>
		<!--두번째 화면 시작-->
		<div class="screen2"
			style="width: 100%; height: auto%; background-color: ;">
			<h1 class="mb-4"></h1>
			<p>
				<table class="table table-bordered">
				<thead class="thead-team"><tr>
				<tr class="table table-bordered ">
					<th scope="col" style="font-size: 1.2em;"">순번</th>
					<th scope="col" style="font-size: 1.2em;">강의제목</th>
					<th scope="col" style="font-size: 1.2em;">비고</th>
				</tr>
				</thead>
				<tbody class="table table-bordered ">
					<tr>
						<th scope="row">1</th>
						<td>오리엔테이션</td>
						<td>비고사항 없음</td>
					</tr>
					<tr>
						<th scope="row">2</th>
						<td>오리엔테이션</td>
						<td>비고사항 없음</td>
					</tr>
					<tr>
						<th scope="row">3</th>
						<td>오리엔테이션</td>
						<td>비고사항 없음</td>
					</tr>
					<tr>
						<th scope="row">4</th>
						<td>오리엔테이션</td>
						<td>비고사항 없음</td>
					</tr>
					<tr>
						<th scope="row">5</th>
						<td>오리엔테이션</td>
						<td>비고사항 없음</td>
					</tr>
					<tr>
						<th scope="row">6</th>
						<td>오리엔테이션</td>
						<td>비고사항 없음</td>
					</tr>
					<tr>
						<th scope="row">7</th>
						<td>오리엔테이션</td>
						<td>비고사항 없음</td>
					</tr>

				</tbody>
			
			</table>
			</p>
		</div>
	</div>
</div>
<script src="./js/toggleAction.js"></script>
<!-- </div> -->
<!-- Page Content end -->