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
							조회</li>
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
			style="width: 100%; height: auto%; text-align: center; background-color: E8EBEE; padding-bottom:4px;">
				<select class="custom-select" style="width: auto;">
					<option>구분:교직원</option>
					<option>구분:학생</option>
				</select> <select class="custom-select form-control-sm" style="width: auto;">
					<option>대학:인문사회대학</option>
					<option>대학:공과대학</option>
					<option>대학:자연과학대학</option>
				</select> <select class="custom-select form-control-sm" style="width: auto;">
					<option>학부:외국어학부</option>
					<option>학부:건축학부</option>
					<option>학부:예체능부</option>
				</select> <select class="custom-select form-control-sm" style="width: auto;">
					<option>학과:일어일문학</option>
					<option>학과:컴퓨터공학</option>
					<option>학과:기계공학</option>
				</select> <select class="custom-select form-control-sm" style="width: auto;">
					<option>재학</option>
					<option>휴학</option>
					<option>졸업</option>
					<option>재직</option>
					<option>퇴직</option>
				</select> <select class="custom-select form-control-sm" style="width: auto;">
					<option>입학년도:2020</option>
					<option>입학년도:2019</option>
					<option>입학년도:2018</option>
					<option>입학년도:2017</option>
				</select>
		</div>
		<div class="screen1.5"
			style="width: 100%; height: auto%; background-color: E8EBEE; text-align: center; padding-bottom:4px;">
			<div class="form-group-sm row col-xs-2" style="width: 100%; text-aline: center;">
				<span class="col-xs-2" style="text-aline: center; padding-left:25%;"> <input
					class="form-control "
					style="margin-right: 10px; text-aline: center;" type="text"
					placeholder="이름" aria-label="Search">

				</span> <span class="col-xs-2"> <input class="form-control  "
					style="margin-right: 10px;" type="text" placeholder="학번"
					aria-label="Search">
				</span>
				<button href="#" style="margin-right: 10px;"
					class="btn btn-primary ">검색</button>
			</div>
		</div>
		<div class="screen2"
			style="width: 100%; height: auto%; background-color: E8EBEE;">
		<table class="table table-bordered">
				<thead class="thead-team">
					<tr>
						<th scope="col">순번</th>
						<th scope="col">학생/교직원</th>
						<th scope="col">학번</th>
						<th scope="col">이름</th>
						<th scope="col">대학</th>
						<th scope="col">학부</th>
						<th scope="col">학과</th>
						<th scope="col">구분</th>
					</tr>
				</thead>
				<tbody class="text-center">
					<tr>
						<td>1</td>
						<td>학생</td>
						<td>201512135</td>
						<td>오세현</td>
						<td>인문대학</td>
						<td>외국어학부</td>
						<td>일어일문학</td>
						<td>재학</td>
					</tr>
					<tr>
						<td>2</td>
						<td>학생</td>
						<td>201812135</td>
						<td>오세현</td>
						<td>인문대학</td>
						<td>외국어학부</td>
						<td>일어일문학</td>
						<td>재학</td>
					</tr>
				</tbody>
			</table>
		</div>
		<div class="screen3"
			style="width: 100%; height: auto%; background-color: E8EBEE;">
			<div class="container-fluid">
				<div class="row" style="text-align: center;">
					<div class="col-md-3">
						<img src="images/doge.png"
							style="width: 200px; height: 200px; margin-top: 5%;">
					</div>
					<div class="col-md-3">
						<div class="input-group mb-3" style="margin-top: 20%;">
							<div class="input-group-prepend">
								<span class="input-group-text" id="basic-addon3">이름</span>
							</div>
							<input type="text" class="form-control" placeholder="이름을 입력해주세요"
								id="basic-url" aria-describedby="basic-addon3">
						</div>
					</div>
					<div class="col-md-3">
						<div class="input-group mb-3" style="margin-top: 20%;">
							<div class="input-group-prepend">
								<span class="input-group-text" id="basic-addon3">학번</span>
							</div>
							<input type="text" class="form-control" placeholder="학번을 입력해주세요"
								name="" id="basic-url" aria-describedby="basic-addon3">
						</div>
					</div>
					<div class="col-md-3"></div>
				</div>
				<div class="row" style="margin-top: 2%; text-align: center;">
					<div class="col-md-3">
						<div class="input-group mb-3">
							<div class="input-group-prepend">
								<span class="input-group-text" id="basic-addon3">대학</span>
							</div>
							<input type="text" class="form-coDntrol" placeholder="인문사회대학"
								id="basic-url" aria-describedby="basic-addon3">
						</div>
					</div>
					<div class="col-md-3">
						<div class="input-group mb-3">
							<div class="input-group-prepend">
								<span class="input-group-text" id="basic-addon3">학부</span>
							</div>
							<input type="text" class="form-control" placeholder="외국어학"
								id="basic-url" aria-describedby="basic-addon3">
						</div>
					</div>
					<div class="col-md-3">
						<div class="input-group mb-3">
							<div class="input-group-prepend">
								<span class="input-group-text" id="basic-addon3">학과</span>
							</div>
							<input type="text" class="form-control" placeholder="컴퓨터공학과"
								id="basic-url" aria-describedby="basic-addon3">
						</div>
					</div>
					<div class="col-md-3">
						<div class="input-group mb-3">
							<div class="input-group-prepend">
								<span class="input-group-text" id="basic-addon3">구분</span>
							</div>
							<input type="text" class="form-control" placeholder="대학생/교수"
								id="basic-url" aria-describedby="basic-addon3">
						</div>
					</div>
				</div>
				<div class="row" style="margin-top: 2%; text-align: center;">
					<div class="col-md-4">
						<div class="input-group mb-3">
							<div class="input-group-prepend">
								<span class="input-group-text" id="basic-addon3">학적상태</span>
							</div>
							<input type="text" class="form-control" placeholder="재학"
								id="basic-url" aria-describedby="basic-addon3">
						</div>
					</div>
					<div class="col-md-4">
						<div class="input-group mb-3">
							<div class="input-group-prepend">
								<span class="input-group-text" id="basic-addon3">최근학적변동일자</span>
							</div>
							<input type="text" class="form-control" placeholder="2020-02-02"
								id="basic-url" aria-describedby="basic-addon3">
						</div>
					</div>
					<div class="col-md-4">
						<div class="input-group mb-3">
							<div class="input-group-prepend">
								<span class="input-group-text" id="basic-addon3">최종 이수 학년
									및 학기</span>
							</div>
							<input type="text" class="form-control"
								placeholder="최종 이수 학년 및 학기" id="basic-url"
								aria-describedby="basic-addon3">
						</div>
					</div>
				</div>
				<div class="row" style="margin-top: 2%; text-align: center;">
					<div class="col-md-3">
						<div class="input-group mb-3">
							<div class="input-group-prepend">
								<span class="input-group-text" id="basic-addon3">부전공</span>
							</div>
							<input type="text" class="form-control" placeholder="해당없음"
								id="basic-url" aria-describedby="basic-addon3">
						</div>
					</div>
					<div class="col-md-3">
						<div class="input-group mb-3">
							<div class="input-group-prepend">
								<span class="input-group-text" id="basic-addon3">입학일자</span>
							</div>
							<input type="text" class="form-control" placeholder="2002-03-01"
								id="basic-url" aria-describedby="basic-addon3">
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<script src="./js/toggleAction.js"></script>
<!-- </div> -->
<!-- Page Content end -->