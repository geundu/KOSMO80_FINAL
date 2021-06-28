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
						<li class="breadcrumb-item active" aria-current="page">강의시청</li>
						<li class="breadcrumb-item active" aria-current="page">과제확인</li>
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
			<div class="col text-center">
				<h3>제출목록 조회</h3>
			</div>
		</div>
		<div class="screen2"
			style="width: 100%; height: auto%; background-color:;">
			<table class="table table-bordered">
				<thead class="thead-team">
					<tr style="font-size: 1.2em;">
						<th scope="col">순번</th>
						<th scope="col">이름</th>
						<th scope="col">학번</th>
						<th scope="col">업로드한파일</th>
						<th scope="col">통과여부</th>
					</tr>
					</thead>
					<tbody>
						<!-- 행시작 -->
						<tr>
							<td>1</td>
							<td>박정호</td>
							<td>35151551</td>
							<td>강좌 1번째 강의과제.docx</td>
							<td><select class="custom-select" id="inputGroupSelect"
								style="width: 200px;">
									<option selected>pass/none-pass</option>
									<option value="1">pass</option>
									<option value="2">none-pass</option>
							</select></td>
						</tr>
						<!-- 행끝 -->
						<!-- 행시작 -->
						<tr>
							<td>2</td>
							<td>강찬영</td>
							<td>25151551</td>
							<td>강좌 1번째 강의과제.docx</td>
							<td><select class="custom-select" id="inputGroupSelect"
								style="width: 200px;">
									<option selected>pass/none-pass</option>
									<option value="1">pass</option>
									<option value="2">none-pass</option>
							</select></td>
						</tr>
						<!-- 행끝 -->
						<!-- 행시작 -->
						<tr>
							<td>3</td>
							<td>오세현</td>
							<td>15151551</td>
							<td>강좌 1번째 강의과제.docx</td>
							<td><select class="custom-select" id="inputGroupSelect"
								style="width: 200px;">
									<option selected>pass/none-pass</option>
									<option value="1">pass</option>
									<option value="2">none-pass</option>
							</select></td>
						</tr>
						<!-- 행끝 -->
						<!-- 행시작 -->
						<tr>
							<td>4</td>
							<td>박정호</td>
							<td>35151551</td>
							<td>강좌 1번째 강의과제.docx</td>
							<td><select class="custom-select" id="inputGroupSelect"
								style="width: 200px;">
									<option selected>pass/none-pass</option>
									<option value="1">pass</option>
									<option value="2">none-pass</option>
							</select></td>
						</tr>
						<!-- 행끝 -->
						<!-- 행시작 -->
						<tr>
							<td>5</td>
							<td>박정호</td>
							<td>35151551</td>
							<td>강좌 1번째 강의과제.docx</td>
							<td><select class="custom-select" id="inputGroupSelect"
								style="width: 200px;">
									<option selected>pass/none-pass</option>
									<option value="1">pass</option>
									<option value="2">none-pass</option>
							</select></td>
						</tr>
						<!-- 행끝 -->
						<!-- 행시작 -->
						<tr>
							<td>6</td>
							<td>박정호</td>
							<td>35151551</td>
							<td>강좌 1번째 강의과제.docx</td>
							<td><select class="custom-select" id="inputGroupSelect"
								style="width: 200px;">
									<option selected>pass/none-pass</option>
									<option value="1">pass</option>
									<option value="2">none-pass</option>
							</select></td>
						</tr>
						<!-- 행끝 -->
						<!-- 행시작 -->
						<tr>
							<td>7</td>
							<td>박정호</td>
							<td>35151551</td>
							<td>강좌 1번째 강의과제.docx</td>
							<td><select class="custom-select" id="inputGroupSelect"
								style="width: 200px;">
									<option selected>pass/none-pass</option>
									<option value="1">pass</option>
									<option value="2">none-pass</option>
							</select></td>
						</tr>
						<!-- 행끝 -->
					</tbody>
					</table>
				</div>
				<div class="screen3"
					style="width: 100%; height: 10%; background-color: ;">
					<div class="col text-center">
						<button class="btn btn-primary mr-5">과제확인</button>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<script src="./js/toggleAction.js"></script>
<!-- </div> -->
<!-- Page Content end -->