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
						<li class="breadcrumb-item active" aria-current="page">시험채점</li>
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
			<div style="text-align: center;">
				<h1>강좌 | 시험종류</h1>
			</div>
		</div>
		<div class="screen2"
			style="width: 100%; height: auto%; background-color:;">
			<table class="table table-bordered" style="text-align: center;">
				<thead class="thead-team">
					<tr>
						<th scope="col">순번</th>
						<th scope="col">이름</th>
						<th scope="col">학번</th>
						<th scope="col">주관식첨부파일</th>
						<th scope="col">9/10</th>
						<th scope="col">점수</th>
					</tr>
				</thead>
				<tbody>
					<%
						for (int i = 0; i < 20; i++) {
					%>
					<tr>
						<th scope="row">1</th>
						<td>박정호</td>
						<td>201251235</td>
						<td>20-1 일본문화 주관식.DOCS</td>
						<td>9/10</td>
						<td style="text-align: center;">
							<div class="form-group mx-sm-1 mb-1 " style="width: auto;">
								<input type="text " class="form-control" placeholder="점수 입력"
									id="basic-url" aria-describedby="basic-addon3">
							</div>
						</td>
					</tr>
					<%
						}
					%>

				</tbody>
			</table>
		</div>
		<div class="screen3"
			style="width: 100%; height: auto%; background-color:;">
			<div class="col text-center">
				<button class="btn btn-primary mr-5">
					채점 등록</a>
					<button class="btn btn-primary mr-5">
						취소</a>
			</div>
		</div>
	</div>
</div>
<script src="./js/toggleAction.js"></script>
<!-- </div> -->
<!-- Page Content end -->