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
						<li class="breadcrumb-item active" aria-current="page">수강목록조회</li>
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
		<!-- 메인 프레임 1 시작 -->
		<div class="screen1"
			style="width: 100%; height: auto%; text-align: center; background-color: E8EBEE;">
			<select class="custom-select" style="width: auto;">
				<option>2020/1학기</option>
				<option>2020/2학기</option>
				<option>2021/1학기</option>
				<option>2021/2학기</option>
			</select>
			<p></p>
		</div>
		<!-- 메인프레임 1 끝 -->
		<!--메인 프레임 2 시작-->
		<div class="screen2"
			style="width: 100%; height: 100%; background-color: E8EBEE;">
			<h1 class="mb-4"></h1>
			<p>
			<table class="table table-bordered">
				<thead class="thead-team">
					<tr>
						<th scope="col">순번</th>
						<th scope="col">년도</th>
						<th scope="col">학기</th>
						<th scope="col">교과목</th>
						<th scope="col">학점</th>
						<th scope="col">개설학과</th>
						<th scope="col">대상학년</th>
						<th scope="col">시간표</th>
						<th scope="col">교수</th>
						<th scope="col">전공교양</th>
						<th scope="col">재수강</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th scope="row">1</th>
						<td>2020</td>
						<td>1학기</td>
						<td>(09353)외국어 강의론</td>
						<td>3학점</td>
						<td>일본어 학과</td>
						<td>1학년</td>
						<td>월1~3</td>
						<td>강찬영 교슈</td>
						<td>전공교수</td>
						<td>해당없음</td>
					</tr>
					<tr>
						<th scope="row">1</th>
						<td>2020</td>
						<td>1학기</td>
						<td>(09353)외국어 강의론</td>
						<td>3학점</td>
						<td>일본어 학과</td>
						<td>1학년</td>
						<td>월1~3</td>
						<td>강찬영 교슈</td>
						<td>전공교수</td>
						<td>해당없음</td>
					</tr>
					<tr>
						<th scope="row">1</th>
						<td>2020</td>
						<td>1학기</td>
						<td>(09353)외국어 강의론</td>
						<td>3학점</td>
						<td>일본어 학과</td>
						<td>1학년</td>
						<td>월1~3</td>
						<td>강찬영 교슈</td>
						<td>전공교수</td>
						<td>해당없음</td>
					</tr>
					<tr>
						<th scope="row">1</th>
						<td>2020</td>
						<td>1학기</td>
						<td>(09353)외국어 강의론</td>
						<td>3학점</td>
						<td>일본어 학과</td>
						<td>1학년</td>
						<td>월1~3</td>
						<td>강찬영 교슈</td>
						<td>전공교수</td>
						<td>해당없음</td>
					</tr>
					<tr>
						<th scope="row">1</th>
						<td>2020</td>
						<td>1학기</td>
						<td>(09353)외국어 강의론</td>
						<td>3학점</td>
						<td>일본어 학과</td>
						<td>1학년</td>
						<td>월1~3</td>
						<td>강찬영 교슈</td>
						<td>전공교수</td>
						<td>해당없음</td>
					</tr>
					<tr>
						<th scope="row">1</th>
						<td>2020</td>
						<td>1학기</td>
						<td>(09353)외국어 강의론</td>
						<td>3학점</td>
						<td>일본어 학과</td>
						<td>1학년</td>
						<td>월1~3</td>
						<td>강찬영 교슈</td>
						<td>전공교수</td>
						<td>해당없음</td>
					</tr>
					<tr>
						<th scope="row">1</th>
						<td>2020</td>
						<td>1학기</td>
						<td>(09353)외국어 강의론</td>
						<td>3학점</td>
						<td>일본어 학과</td>
						<td>1학년</td>
						<td>월1~3</td>
						<td>강찬영 교슈</td>
						<td>전공교수</td>
						<td>해당없음</td>
					</tr>
					<tr>
						<th scope="row">1</th>
						<td>2020</td>
						<td>1학기</td>
						<td>(09353)외국어 강의론</td>
						<td>3학점</td>
						<td>일본어 학과</td>
						<td>1학년</td>
						<td>월1~3</td>
						<td>강찬영 교슈</td>
						<td>전공교수</td>
						<td>해당없음</td>
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