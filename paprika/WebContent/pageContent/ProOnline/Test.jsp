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
						<li class="breadcrumb-item active" aria-current="page">시험관리</li>
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
			style="width: 100%; height: auto%; background-color: ;">
			<div style="text-align: center;">
				<h3>시험 리스트</h3>
			</div>
		</div>
		<div class="screen2"
			style="width: 100%; height: auto%; background-color: ;">
			<table class="table table-bordered">
				<thead class="thead-team">
					<tr style="font-size: 1.2em;">
						<th scope="col">순번</th>
						<th scope="col">강좌</th>
						<th scope="col">시험종류</th>
						<th scope="col">시험일자</th>
						<th scope="col">시험시간</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th scope="row">1</th>
						<td>일본어강좌</td>
						<td>중간고사</td>
						<td>210609</td>
						<td>월 1~3</td>
					</tr>
					<tr>
						<th scope="row">2</th>
						<td>일본어강좌</td>
						<td>중간고사</td>
						<td>210609</td>
						<td>월 1~3</td>
					</tr>
					<tr>
						<th scope="row">3</th>
						<td>일본어강좌</td>
						<td>중간고사</td>
						<td>210609</td>
						<td>월 1~3</td>
					</tr>
					<tr>
						<th scope="row">4</th>
						<td>일본어강좌</td>
						<td>중간고사</td>
						<td>210609</td>
						<td>월 1~3</td>
					</tr>
					<tr>
						<th scope="row">5</th>
						<td>일본어강좌</td>
						<td>중간고사</td>
						<td>210609</td>
						<td>월 1~3</td>
					</tr>
					<tr>
						<th scope="row">6</th>
						<td>일본어강좌</td>
						<td>중간고사</td>
						<td>210609</td>
						<td>월 1~3</td>
					</tr>
					<tr>
						<th scope="row">7</th>
						<td>일본어강좌</td>
						<td>중간고사</td>
						<td>210609</td>
						<td>월 1~3</td>
					</tr>
					<tr>
						<th scope="row">8</th>
						<td>일본어강좌</td>
						<td>중간고사</td>
						<td>210609</td>
						<td>월 1~3</td>
					</tr>
				</tbody>
			</table>
		</div>
		<div class="screen3"
			style="width: 100%; height: auto%; background-color: ;">
			<div class="col text-center">
				<button class="btn btn-primary mr-5">시험조회</button> 
				<button class="btn btn-primary mr-5">시험등록</button>
				<button class="btn btn-primary mr-5">시험채점</button>
			</div>
		</div>
	</div>
</div>
<script src="./js/toggleAction.js"></script>
<!-- </div> -->
<!-- Page Content end -->