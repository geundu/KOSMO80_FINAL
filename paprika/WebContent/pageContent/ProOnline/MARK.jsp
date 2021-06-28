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
						<li class="breadcrumb-item active" aria-current="page">성적관리</li>
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
		<!--첫번째 화면 들어가기-->
		<div class="screen1"
			style="width: 100%; height: auto%; background-color: ;">
			<h1>
				<div style="text-align: center;">
					<select class="custom-select" id="inputGroupSelect04"
						aria-label="Example select with button addon" style="width: auto;">
						<option selected>20-1일본어 문화</option>
						<option value="1">20-2일본어 문화</option>
						<option value="2">20-3 강찬영 문화</option>
						<option value="3">20-4 찬영 문화</option>
					</select>
					<button type="button" class="btn btn-primary">과목 조회</button>
				</div>
			</h1>
			<p>
			<table class="table table-bordered">
				<thead class="thead-team">
					<tr>
						<th scope="col">순번</th>
						<th scope="col">이름</th>
						<th scope="col">학번</th>
						<th scope="col">시험1점수</th>
						<th scope="col">시험2점수</th>
						<th scope="col">시험3점수</th>
						<th scope="col">과제pass 현황</th>
						<th scope="col">학점</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>1</td>
						<td>오세현</td>
						<td>2020181032</td>
						<td>100</td>
						<td>90</td>
						<td>00</td>
						<td>PASS</td>
						<td>A+</td>

					</tr>
					<tr>
						<td>2</td>
						<td>오세현</td>
						<td>2020181032</td>
						<td>100</td>
						<td>90</td>
						<td>00</td>
						<td>PASS</td>
						<td>A+</td>

					</tr>
					<tr>
						<td>3</td>
						<td>오세현</td>
						<td>2020181032</td>
						<td>100</td>
						<td>90</td>
						<td>00</td>
						<td>PASS</td>
						<td>A+</td>

					</tr>
					<tr>
						<td>4</td>
						<td>오세현</td>
						<td>2020181032</td>
						<td>100</td>
						<td>90</td>
						<td>00</td>
						<td>PASS</td>
						<td>A+</td>

					</tr>
					<tr>
						<td>5</td>
						<td>오세현</td>
						<td>2020181032</td>
						<td>100</td>
						<td>90</td>
						<td>00</td>
						<td>PASS</td>
						<td>A+</td>

					</tr>
					<tr>
						<td>6</td>
						<td>오세현</td>
						<td>2020181032</td>
						<td>100</td>
						<td>90</td>
						<td>00</td>
						<td>PASS</td>
						<td>A+</td>

					</tr>
				</tbody>
			</table>
			</p>
		</div>
		<!--두번째 화면 들어가기-->
		<div class="screen2"
			style="width: 100%; height: 10%; background-color: ;">
			<h1 class="mb-4"></h1>
			<p>
			<div style="text-align: center;">
		<button href="#" class="btn btn-primary mr-5">성적입력 및 수정 </button> 
		<button href="#" class="btn btn-primary">돌아가기</button>

			</div>
		</div>
	</div>
	</p>
</div>
<script src="./js/toggleAction.js"></script>
<!-- </div> -->
<!-- Page Content end -->