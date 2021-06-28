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
						<li class="breadcrumb-item active" aria-current="page">신상정보조회</li>
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

<!--메인 프레임 시작-->
<div class="container">


	<!-- 첫번째 화면-->
	<div class="d-flex justify-content-center">
		<div class="row" style="text-align: center;">
			<div class="row" style="width: auto%; padding-left: 15%;">
				<div class="">
					<img
						src="https://user-images.githubusercontent.com/78460496/122924510-cb104000-d3a0-11eb-8193-1e67a9380ec7.jpg
        "
						style="width: 200px; height: 250px; margin-top: 5%;">
				</div>
				<div class="">
					<div class="input-group "
						style="margin-top: 10%; padding-left: 15%;">
						<div class="input-group-prepend">
							<span class="input-group-text" id="basic-addon3">이름</span>
						</div>
						<input type="text" class="form-control" placeholder="이름을 입력해주세요"
							id="STUDENT_NAME" aria-describedby="basic-addon3">
					</div>
				</div>
				<div class="">
					<div class="input-group "
						style="margin-top: 10%; padding-left: 15%;">
						<div class="input-group-prepend">
							<span class="input-group-text" id="basic-addon3">학번</span>
						</div>
						<input type="text" class="form-control" placeholder="학번을 입력해주세요"
							id="STUDENT_NUMBER" aria-describedby="basic-addon3">
					</div>
				</div>
			</div>
			<div class="row" style="margin-top: 2%; text-align: center;">
				<div class="">
					<div class="input-group " style="padding-left: 5%;">
						<div class="input-group-prepend">
							<span class="input-group-text" id="basic-addon3">대학</span>
						</div>
						<input type="text" class="form-control" placeholder="인문사회대학"
							id="COL" aria-describedby="basic-addon3">
					</div>
				</div>
				<div class="">
					<div class="input-group " style="padding-left: 5%;">
						<div class="input-group-prepend">
							<span class="input-group-text" id="basic-addon3">학부</span>
						</div>
						<input type="text" class="form-control" placeholder="외국어학"
							id="DEPT" aria-describedby="basic-addon3">
					</div>
				</div>
				<div class="">
					<div class="input-group " style="padding-left: 5%;">
						<div class="input-group-prepend">
							<span class="input-group-text" id="basic-addon3">학과</span>
						</div>
						<input type="text" class="form-control" placeholder="컴퓨터공학과"
							id="MAJOR" aria-describedby="basic-addon3">
					</div>
				</div>
				<div class="">
					<div class="input-group " style="margin-left: 5%;">
						<div class="input-group-prepend">
							<span class="input-group-text" id="basic-addon3">구분</span>
						</div>
						<input type="text" class="form-control" placeholder="대학생/교수"
							id="basic-url" aria-describedby="basic-addon3">
						<!-- 대학생/교수 칼럼이 없어서 일단 보류  -->
					</div>
				</div>
			</div>
			<div class="row" style="margin-top: 2%; text-align: center;">
				<div class="">
					<div class="input-group " style="margin-left: 5%;">
						<div class="input-group-prepend">
							<span class="input-group-text" id="basic-addon3">학적상태</span>
						</div>
						<input type="text" class="form-control" placeholder="재학"
							id="REG_STATUS" aria-describedby="basic-addon3">
					</div>
				</div>
				<div class="">
					<div class="input-group " style="margin-left: 5%;">
						<div class="input-group-prepend">
							<span class="input-group-text" id="basic-addon3">최근학적변동일자</span>
						</div>
						<input type="text" class="form-control" placeholder="2020-02-02"
							id="DATE_LASTEST_REG" aria-describedby="basic-addon3">
					</div>
				</div>
				<div class="">
					<div class="input-group " style="margin-left: 5%;">
						<div class="input-group-prepend">
							<span class="input-group-text" id="basic-addon3">최종 이수 학년
								및 학기</span>
						</div>
						<input type="text" class="form-control"
							placeholder="최종 이수 학년 및 학기" id="REGISTER_CONTENT"
							aria-describedby="basic-addon3">
						<!-- 칼럼이 학년,학기 나눠져있음. -->
						<!-- PASSEDGRADE PASSEDSEMESTER -->
					</div>
				</div>
			</div>
			<div class="row" style="margin-top: 2%; text-align: center;">
				<div class="">
					<div class="input-group " style="margin-left: 10%;">
						<div class="input-group-prepend"></div>
					</div>
				</div>
				<div class="">
					<div class="input-group " style="margin-left: 5%;">
						<div class="input-group-prepend">
							<span class="input-group-text" id="basic-addon3">입학일자</span>
						</div>
						<input type="text" class="form-control" placeholder="2002-03-01"
							id="STUDENT_ENTER_YEAR" aria-describedby="basic-addon3">
					</div>
				</div>
			</div>
		</div>
	</div>

	<!--screen2 시작-->
	<div class="d-flex justify-content-center" style="margin-top: 5%;">
		<div class="screen2"
			style="width: 100%; height: 20%; float: right; background-color:;">
			<div class="row" style="margin-top: 2%; text-align: center;">
				<div class="col-md-3">
					<div class="input-group mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text" id="basic-addon3">영문성명</span>
						</div>
						<input type="text" class="form-control"
							placeholder="Park Jeong Ho" id="STUDENT_ENG_NAME"
							aria-describedby="basic-addon3">
					</div>
				</div>
				<div class="col-md-3">
					<div class="input-group mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text" id="basic-addon3">연락처</span>
						</div>
						<input type="text" class="form-control"
							placeholder="010-5454-5454" id="STUDENT_PHONE"
							aria-describedby="basic-addon3">
					</div>
				</div>
				<div class="col-md-4">
					<div class="input-group mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text" id="basic-addon3">이메일</span>
						</div>
						<input type="text" class="form-control"
							placeholder="comback@fdfdf.com" id="STUDENT_EMAIL"
							aria-describedby="basic-addon3">
					</div>
				</div>
				<div class="col-md-1">
					<button type="button" class="btn btn-primary">수정</button>
				</div>
			</div>
		</div>
	</div>
	<!--2번째 화면 끝-->

	<!--3번째 화면-->
	<div class="d-flex justify-content-center" style="margin-top: 5%;">
		<div class="screen3"
			style="width: 100%; height: 20%; float: right; background-color:; color: white;">
			<div class="row" style="margin-top: 2%; text-align: center;">
				<div class="col-md-3">
					<div class="input-group mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text" id="basic-addon3">보호자 성명</span>
						</div>
						<input type="text" class="form-control"
							placeholder="Park Jeong Ho" id="GUARDIAN_NAME"
							aria-describedby="basic-addon3">
					</div>
				</div>
				<div class="col-md-4">
					<div class="input-group mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text" id="basic-addon3">보호자 연락처</span>
						</div>
						<input type="text" class="form-control"
							placeholder="010-5454-5454" id="GUARDIAN_PHONE"
							aria-describedby="basic-addon3">
					</div>
				</div>
				<div class="col-md-2"></div>
				<div class="col-md-3">
					<button type="button" class="btn btn-primary">수정</button>
				</div>
			</div>
		</div>
	</div>
</div>
<script src="./js/toggleAction.js"></script>
<!-- </div> -->
<!-- Page Content end -->