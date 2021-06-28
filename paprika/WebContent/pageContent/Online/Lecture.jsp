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
			<i class="fa fa-bars"></i> <span class="sr-only">토글 버튼
				위치(글씨출력x) </span>
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
						<li class="breadcrumb-item active" aria-current="page">e-Learning</li>
						<li class="breadcrumb-item active" aria-current="page">DashBoard</li>
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
<!-- 밑부터 메인 프레임 속 내용-->
<div class="d-flex justify-content-center">
	<div class="container">
		<table class="table">
			<tbody class="">
				<!--버튼 선언 시작 -->
				<tr>
					<th scope="col" style="border-top:0px;">
						<button type="button" class="btn btn-primary">중간고사 응시하기</button>
					</th>
					<th scope="col" style="border-top:0px;">
						<button type="button" class="btn btn-primary">기말고사 응시하기</button>
					</th>
					<th scope="col" style="border-top:0px;">
						<button type="button" class="btn btn-primary">추가시험 응시하기</button>
					</th>

				</tr>
			</tbody>
		</table>
		<table class="table ">
			<tbody>
				<tr>
					<th style="border-top:0px;" scope="col">
					<button type="button" class="btn btn-primary">강의자료 다운로드</button>
					</th>
					<th style="border-top:0px;"></th>
				</tr>
			</tbody>
		</table>
			<h3>
				<div class="dropdown" style="text-align: center;">강의 조회</div>
			</h3>
		<table class="table table-bordered">
			<thead class="thead-team">
				<tr class="table table-bordered ">
					<th scope="col"><a id="a_1" style="font-size: 1.2em;" href=#>순번</a></th>
					<th scope="col"><a id="a_1" style="font-size: 1.2em;" href=#>강의제목</a></th>
					<th scope="col"><a id="a_1" style="font-size: 1.2em;" href=#>비고</a></th>
				</tr>

			</thead>
			<tbody class="table table-bordered ">
				<tr>
					<td>001</td>
					<td>Otto</td>
					<td>@mdo</td>
				</tr>
				<tr>
					<td>002</td>
					<td>Thornton</td>
					<td>@fat</td>
				</tr>
				<tr>
					<td>003</td>
					<td>the Bird</td>
					<td>@twitter</td>
				</tr>
				<tr>
					<td>004</td>
					<td>the Bird</td>
					<td>@twitter</td>
				</tr>
				<tr>
					<td>005</td>
					<td>the Bird</td>
					<td>@twitter</td>
				</tr>
				<tr>
					<td>006</td>
					<td>the Bird</td>
					<td>@twitter</td>
				</tr>
				<tr>
					<td>007</td>
					<td>the Bird</td>
					<td>@twitter</td>
				</tr>
				<tr>
					<td>008</td>
					<td>the Bird</td>
					<td>@twitter</td>
				</tr>
				<tr>
					<td>009</td>
					<td>the Bird</td>
					<td>@twitter</td>
				</tr>
				<tr>
					<td>010</td>
					<td>the Bird</td>
					<td>@twitter</td>
				</tr>
				<tr>
					<td>011</td>
					<td>the Bird</td>
					<td>@twitter</td>
				</tr>
				<tr>
					<td>012</td>
					<td>the Bird</td>
					<td>@twitter</td>
				</tr>
				<tr>
					<td>013</td>
					<td>the Bird</td>
					<td>@twitter</td>
				</tr>
				<tr>
					<td>014</td>
					<td>the Bird</td>
					<td>@twitter</td>
				</tr>
				<tr>
					<td>015</td>
					<td>the Bird</td>
					<td>@twitter</td>
				</tr>
			</tbody>
		</table>
	</div>
</div>


<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script src="js/toggleAction.js"></script>
<!-- </div> -->
<!-- Page Content end -->