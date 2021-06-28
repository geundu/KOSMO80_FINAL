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
						<li class="breadcrumb-item active" aria-current="page">수강성적조회</li>
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
		<div class="screen1" style="width: 35%; height: 100%; float: left;">
			<h3>
				<div class="dropdown" style="text-align: center;">수강 목록 조회</div>
			</h3>
			<p>
			<table class="table table-bordered">
				<thead class="thead-team">
					<tr>
						<th scope="col">학기</th>
						<th scope="col">평점 평균</th>
						<th scope="col">신청학점</th>
						<th scope="col">취득학점</th>
						<th scope="col">F학점</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th scope="row">2020-1</th>
						<td>3.85</td>
						<td>16</td>
						<td>13</td>
						<td>0</td>

					</tr>
					<tr>
						<th scope="row">2020-1</th>
						<td>3.85</td>
						<td>16</td>
						<td>13</td>
						<td>0</td>

					</tr>
					<tr>
						<th scope="row">2020-1</th>
						<td>3.85</td>
						<td>16</td>
						<td>13</td>
						<td>0</td>
					</tr>

					<tr>
						<th scope="row">2020-1</th>
						<td>3.85</td>
						<td>16</td>
						<td>13</td>
						<td>0</td>

					</tr>
					<tr>
						<th scope="row">2020-1</th>
						<td>3.85</td>
						<td>16</td>
						<td>13</td>
						<td>0</td>
					</tr>
					<tr>
						<th scope="row">성적 총계</th>
						<td>4.45</td>
						<td>130</td>
						<td>127</td>
						<td>3</td>

					</tr>
				</tbody>
			</table>
			</p>
		</div>
		<!--두번째 시작-->
		<div class="screen2"
			style="width: 60%; height: 100%; float: right; padding-left: 4px;">
			<h3>
				<div class="dropdown" style="text-align: center;">교과목별 성적 상세
					조회</div>
			</h3>
			<p>
			<table class="table table-bordered">
				<thead class="thead-team">
					<tr>
						<th scope="col">번호</th>
						<th scope="col">(과목코드)과목명</th>
						<th scope="col">이수구분</th>
						<th scope="col">학점</th>
						<th scope="col">평점</th>
						<th scope="col">등급</th>
						<th scope="col">성적삭제구분</th>
						<th scope="col">재이수여부</th>
						<th scope="col">재이수학기</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th scope="row">1</th>
						<td>(000851) 일본문화</td>
						<td>전필</td>
						<td>3</td>
						<td>4</td>
						<td>A0</td>
						<td>재수강삭제</td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<th scope="row">2</th>
						<td>(000851) 일본문화</td>
						<td>전필</td>
						<td>3</td>

						<td>4</td>
						<td>A0</td>
						<td>재수강삭제</td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<th scope="row">3</th>
						<td>(000851) 일본문화</td>
						<td>전필</td>
						<td>3</td>

						<td>4</td>
						<td>A0</td>
						<td>재수강삭제</td>
						<td>재이수</td>
						<td>2020-2</td>
					</tr>
					<tr>
						<th scope="row">4</th>
						<td>(000851) 일본문화</td>
						<td>전필</td>
						<td>3</td>

						<td>4</td>
						<td>A0</td>
						<td>재수강삭제</td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<th scope="row">5</th>
						<td>(000851) 일본문화</td>
						<td>전필</td>
						<td>3</td>

						<td>4</td>
						<td>A0</td>
						<td>재수강삭제</td>
						<td></td>
						<td></td>
					</tr>
				</tbody>
			</table>
			</p>
		</div>
		<!-- 두번쨰 끝-->
		<!--세번째 시작-->
		<div class="screen3" style="width: 100%; height: 100%;">

			<table class="table table-bordered"
				style="width: 70%; text-align: center; margin: auto">
				<thead class="thead-team ">
					<tr>
						<th scope="col">구분</th>
						<th scope="col">전필</th>
						<th scope="col">전선</th>
						<th scope="col">교선</th>
						<th scope="col">교필</th>
						<th scope="col">부전필</th>
						<th scope="col">부전선</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th scope="row">취득학점</th>
						<td>50</td>
						<td>30</td>
						<td>20</td>
						<td>20</td>
						<td>0</td>
						<td>0</td>

					</tr>
					<tr>
						<th scope="row">평점평균</th>
						<td>3.8</td>
						<td>3.5</td>
						<td>3.5</td>
						<td>2.8</td>
						<td>0</td>
						<td>0</td>
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