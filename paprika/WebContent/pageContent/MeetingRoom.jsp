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
						<li class="breadcrumb-item active" aria-current="page">예약시스템</li>
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
			style="width: 50%; height: 50%; float: left; background-color: bisque;">
			<!-- 달력시작 -->
			<div id="calendar"></div>
			<!-- 달력 끝 -->
		</div>
		<div class="screen2"
			style="width: 50%; height: 50%; float: right; background-color: yellowgreen;">
			<div class="roomA"
				style="width: 100%; height: 33%; float: right; background-color: plum;">
				<button type="button" class="btn btn-danger mr-5"
					style="height: 75%; width: 100px; margin-top: 2%; margin-left: 2%;">
					<h1>A관</h1>
				</button>
				<div class="btn-group" role="group"
					style="height: 40%; margin-top: 2%; margin-left: 2%;">
					<button type="button" class="btn btn-primary mr-4">1회의실</button>
					<button type="button" class="btn btn-primary mr-4">2회의실</button>
					<button type="button" class="btn btn-primary mr-4">3회의실</button>
					<button type="button" class="btn btn-primary mr-4">4회의실</button>
					<button type="button" class="btn btn-primary mr-4">5회의실</button>
				</div>
			</div>
			<div class="roomB"
				style="width: 100%; height: 33%; float: right; background-color: lawngreen;">
				<button type="button" class="btn btn-danger mr-5"
					style="height: 75%; width: 100px; margin-top: 2%; margin-left: 2%;">
					<h1>B관</h1>
				</button>
				<div class="btn-group" role="group"
					style="height: 75%; margin-top: 2%; margin-left: 2%;">
					<button type="button" class="btn btn-primary mr-4">1회의실</button>
					<button type="button" class="btn btn-primary mr-4">2회의실</button>
					<button type="button" class="btn btn-primary mr-4">3회의실</button>
					<button type="button" class="btn btn-primary mr-4">4회의실</button>
					<button type="button" class="btn btn-primary mr-4">5회의실</button>
				</div>
			</div>
			<div class="roomC"
				style="width: 100%; height: 33%; float: right; background-color: skyblue;">
				<button type="button" class="btn btn-danger mr-5"
					style="height: 75%; width: 100px; margin-top: 2%; margin-left: 2%;">
					<h1>C관</h1>
				</button>
				<div class="btn-group" role="group"
					style="height: 75%; margin-top: 2%; margin-left: 2%;">
					<button type="button" class="btn btn-primary mr-4">1회의실</button>
					<button type="button" class="btn btn-primary mr-4">2회의실</button>
					<button type="button" class="btn btn-primary mr-4">3회의실</button>
					<button type="button" class="btn btn-primary mr-4">4회의실</button>
					<button type="button" class="btn btn-primary mr-4">5회의실</button>
				</div>
			</div>
		</div>
		<div class="screen3"
			style="width: 60%; height: 30%; float: left; background-color: aquamarine;">
			<h4>예약 시간 선택</h4>
			<div class="btn-group" role="group" aria-label="Basic example"
				style="height: 50%;">
				<button type="button" class="btn btn-primary mr-1">09:00</button>
				<button type="button" class="btn btn-primary mr-1">10:00</button>
				<button type="button" class="btn btn-primary mr-1">11:00</button>
				<button type="button" class="btn btn-primary mr-1">12:00</button>
				<button type="button" class="btn btn-primary mr-1">13:00</button>
				<button type="button" class="btn btn-primary mr-1">14:00</button>
				<button type="button" class="btn btn-primary mr-1">15:00</button>
				<button type="button" class="btn btn-primary mr-1">16:00</button>
				<button type="button" class="btn btn-primary mr-1">17:00</button>
				<button type="button" class="btn btn-primary mr-1">18:00</button>
				<button type="button" class="btn btn-primary mr-1">19:00</button>
				<button type="button" class="btn btn-primary mr-1">20:00</button>
				<button type="button" class="btn btn-primary mr-1">21:00</button>
			</div>
			<div style="height: 10%;"></div>
			<div style="height: 20%; padding-right: 13%;">
				<a href="#" button type="button" class="btn btn-primary">예약</a>
			</div>
		</div>
		<div class="screen4"
			style="width: 40%; height: 30%; float: right; background-color: pink;">
			<div style="height: 20%; text-align: center;">
				<h2>박정호의 예약현황</h2>
			</div>
			<div
				style="height: 50%; background-color: ivory; text-align: center;">
				<p>2021.06.06 / C관/ 3회의실 / 20:00</p>
			</div>
		</div>
	</div>
</div>
<!-- Page Content end -->

<script src="./js/toggleAction.js"></script>
<!-- 달력시작 -->
<script>
	$(document).ready(
			function(e) {
				calendar = new CalendarYvv("#calendar", moment()
						.format("Y-M-D"), "Monday");
				calendar.funcPer = function(ev) {
					console.log(ev)
				};
				calendar.createCalendar();
			});
</script>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script type="text/javascript">
	var _gaq = _gaq || [];
	_gaq.push([ '_setAccount', 'UA-36251023-1' ]);
	_gaq.push([ '_setDomainName', 'jqueryscript.net' ]);
	_gaq.push([ '_trackPageview' ]);

	(function() {
		var ga = document.createElement('script');
		ga.type = 'text/javascript';
		ga.async = true;
		ga.src = ('https:' == document.location.protocol ? 'https://ssl'
				: 'http://www')
				+ '.google-analytics.com/ga.js';
		var s = document.getElementsByTagName('script')[0];
		s.parentNode.insertBefore(ga, s);
	})();
</script>
</body>

<!-- </div> -->
<!-- Page Content end -->