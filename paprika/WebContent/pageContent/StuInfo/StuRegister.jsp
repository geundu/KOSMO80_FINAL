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
						<li class="breadcrumb-item active" aria-current="page">종합정보조회</li>
						<li class="breadcrumb-item active" aria-current="page">학적변동조회</li>
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
			<h3>
				<div style="text-align: center;"><% %>오세현 님의 학적 변동 조회</div>
			</h3>
			<p></p>
		</div>
		<!--메인 프레임 2 시작-->
		<div class="screen2"
			style="width: 100%; height: 100%; background-color: ;">
			<h1 class="mb-4"></h1>
			<p>
			<table class="table table-bordered">
				<thead class="thead-team">
					<tr>
						<th scope="col">연도</th>
						<th scope="col">구분</th>
						<th scope="col">시행사유</th>
						<th scope="col">비고</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th scope="row">2020.03.02</th>
						<td>입학</td>
						<td>등록에 따른 입학</td>
						<td>비고사항 없음</td>
					</tr>
					<tr>
						<th scope="row">2020.06.02</th>
						<td>휴학</td>
						<td>등록에따른 입학</td>
						<td>비고사항 없음</td>
					</tr>
					<tr>
						<th scope="row">2020.03.02</th>
						<td>복학</td>
						<td>등록에따른 입학</td>
						<td>비고사항 없음</td>
					</tr>
					<tr>
						<th scope="row">2020.03.02</th>
						<td>복학</td>
						<td>등록에따른 입학</td>
						<td>비고사항 없음</td>
					</tr>
					<tr>
						<th scope="row">2020.03.02</th>
						<td>복학</td>
						<td>등록에따른 입학</td>
						<td>비고사항 없음</td>
					</tr>
					<tr>
						<th scope="row">2020.03.02</th>
						<td>복학</td>
						<td>등록에따른 입학</td>
						<td>비고사항 없음</td>
					</tr>
					<tr>
						<th scope="row">2020.03.02</th>
						<td>복학</td>
						<td>등록에따른 입학</td>
						<td>비고사항 없음</td>
					</tr>
					<tr>
						<th scope="row">2020.03.02</th>
						<td>복학</td>
						<td>등록에따른 입학</td>
						<td>비고사항 없음</td>
					</tr>

				</tbody>
			</table>

		</div>
	</div>
</div>
<script src="./js/toggleAction.js"></script>
<!-- </div> -->
<!-- Page Content end -->