<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html lang="en">
<head>
<script src="../js/toggleAction.js"></script>
<script src="../js/jquery.min.js"></script>
<script src="../js/popper.js"></script>
<script src="../js/bootstrap.min.js"></script>
<script src="../js/main.js"></script>
<link rel='stylesheet' href="../css/style.css">
<link rel='stylesheet' href="../css/main.css">
</head>
<body>
<!-- Page Content start -->
<!-- <div id="content" class="p-4 p-md-5"> -->
<nav class="navbar navbar-expand-lg navbar-light bg-light">
	<div class="container-fluid" style="float: left;">
		<button type="button" id="sidebarCollapse" class="btn btn-primary">
			<i class="fa fa-bars"></i> <span class="sr-only">토글 버튼 위치(글씨출력 x)</span>
		</button>

		<button class="btn btn-dark d-inline-block d-lg-none ml-auto" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
			<i class="fa fa-bars"></i>
		</button>
		<!-- Page Content Header Start -->
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="nav navbar-nav">
				<!-- 현재보고있는 nav item은 calss active를 줄것. -->
				<nav aria-label="breadcrumb">
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a onClick="window.location.reload()">Pprk.Main()</a></li>
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
<!-- 여기부터 메인 페이지 -->



<!-- screen1 시작 -->
<div class="screen1" style="width: 50%; height: 55%; float: left; background-color: bisque;">
	<div id='calendar'style="width: auto; height: auto;"></div>
</div>
<!--screen1 끝-->
<!-- screen2 시작 -->
<div class="screen2" style="width: 50%; height: 55%; float: right; background-color: yellowgreen; padding: 50px;" id="screen2">
	<table style="margin: 1em;">
		<thead>
			<th>
				<button type="button" class="btn btn-danger mr-5" style="height: 75%; width: 100px; margin-top: 2%; margin-left: 2%;">
					<h1>A관</h1>
				</button>
			</th>
			<th>
				<button type="button" class="btn btn-primary btn-lg" style="padding: 15px;">1회의실</button>
			</th>
			<th>
				<button type="button" class="btn btn-primary btn-lg" style="padding: 15px;">2회의실</button>
			</th>
			<th>
				<button type="button" class="btn btn-primary btn-lg" style="padding: 15px;">3회의실</button>
			</th>
			<th>
				<button type="button" class="btn btn-primary btn-lg" style="padding: 15px;">4회의실</button>
			</th>
		</thead>
		<tbody>
		</tbody>
	</table>
	<!---->
	<table style="margin: 1em;">
		<thead>
			<th>
				<button type="button" class="btn btn-danger mr-5" style="height: 75%; width: 100px; margin-top: 2%; margin-left: 2%;">
					<h1>B관</h1>
				</button>
			<th>
				<button type="button" class="btn btn-primary btn-lg" style="padding: 15px;">1회의실</button>
			</th>
			<th>
				<button type="button" class="btn btn-primary btn-lg" style="padding: 15px;">2회의실</button>
			</th>
			<th>
				<button type="button" class="btn btn-primary btn-lg" style="padding: 15px;">3회의실</button>
			</th>
			<th>
				<button type="button" class="btn btn-primary btn-lg" style="padding: 15px;">4회의실</button>
			</th>
			</th>
		</thead>
		<tbody>

		</tbody>
	</table>
	<!---->
	<table style="margin: 1em;">
		<thead>
			<th>
				<button type="button" class="btn btn-danger mr-5" style="height: 75%; width: 100px; margin-top: 2%; margin-left: 2%;">
					<h1>C관</h1>
				</button>
			</th>
			<th>
				<button type="button" class="btn btn-primary btn-lg" style="padding: 15px;">1회의실</button>
			</th>
			<th>
				<button type="button" class="btn btn-primary btn-lg" style="padding: 15px;">2회의실</button>
			</th>
			<th>
				<button type="button" class="btn btn-primary btn-lg" style="padding: 15px;">3회의실</button>
			</th>
			<th>
				<button type="button" class="btn btn-primary btn-lg" style="padding: 15px;">4회의실</button>
			</th>
		</thead>
		<tbody>
		</tbody>
	</table>
</div>
<!--screen2 끝-->
<!-- screen3 시작 -->
<div class="screen3"
	style="width: 60%; height: 30%; float: left; background-color: aquamarine; margin: auto; display: flex; padding: 15px; border-spacing: 10px;"
	id="screen3">
	<table style="margin: 1em;" id="screen3tb1">
		<thead>
		</thead>
		<tbody>
			<tr style="margin: 1em;">
				<td>
					<button type="button" class="btn btn-primary mr-1" style="width: 65px; height: 90px; text-align: center;">09:00</button>
				</td>
				<td>
					<button type="button" class="btn btn-primary mr-1" style="width: 65px; height: 90px; text-align: center;">10:00</button>
				</td>
				<td>
					<button type="button" class="btn btn-primary mr-1" style="width: 65px; height: 90px; text-align: center;" disabled='disabled'>11:00</button>
				</td>
				<td>
					<button type="button" class="btn btn-primary mr-1" style="width: 65px; height: 90px; text-align: center;">12:00</button>
				</td>
				<td>
					<button type="button" class="btn btn-primary mr-1" style="width: 65px; height: 90px; text-align: center;">13:00</button>
				</td>
				<td>
					<button type="button" class="btn btn-primary mr-1" style="width: 65px; height: 90px; text-align: center;">14:00</button>
				</td>
				
			</tr>
			<tr>
				<td>
					<button type="button" class="btn btn-primary mr-1" style="width: 65px; height: 90px; text-align: center;">15:00</button>
				</td>
				<td>
					<button type="button" class="btn btn-primary mr-1" style="width: 65px; height: 90px; text-align: center;">16:00</button>
				</td>
				<td>
					<button type="button" class="btn btn-primary mr-1" style="width: 65px; height: 90px; text-align: center;">17:00</button>
				</td>
				<td>
					<button type="button" class="btn btn-primary mr-1" style="width: 65px; height: 90px; text-align: center;" disabled='disabled'>18:00</button>
				</td>
				<td>
					<button type="button" class="btn btn-primary mr-1" style="width: 65px; height: 90px; text-align: center;">19:00</button>
				</td>
				<td>
					<button type="button" class="btn btn-primary mr-1" style="width: 65px; height: 90px; text-align: center;">20:00</button>
				</td>				
			</tr>
		</tbody>
	</table>
	<table style="margin: 1em;">
	 <thead>
	 </thead>
	 <tbody>
	 <tr>
	 <td>
	<button id="reserv" type="button" class="btn btn-primary mr-1" style="width: 65px; height: 180px; text-align: center;">예약</button>	<!-- 강찬영 -->			
				</td>
				</tr>
	 </tbody>
	</table> 
</div>
<!--screen3 끝-->
<div class="screen4" style="width: 40%; height: 30%; float: right; background-color: pink;" id="screen4">
	<div style="height: 20%; text-align: center;">
		<h3>오세현의 예약현황</h3>
	</div>
	<div style="height: 50%; background-color: ivory; text-align: center;">
		<table class="table table-bordered" id="MeetingRoomTable" style="width: 100%; height: 100%;">
			<thead class="thead-team">
			</thead>
			<tbody class="text-center" style="text-align: center;">
				<tr>
					<td><input type="text" class="form-control" readonly value="2021 / 06/ 01 / C관 / 3회의실 / 20:00" style="height: 100%;"></td>
					<td>
						<button type="button" class="btn btn-primary" style="height: 100%">예약 취소</button>
					</td>
				</tr>
			</tbody>
		</table>
	</div>
</div>
<!--screen4  끝-->

<!-- Page Content end -->



<!-- 달력시작 -->
<script>
    //document.addEventListener("DOMContentLoaded", function () {
 	//$('#reserv').on('click',function(){	////////////강찬영
 		$(document).ready(function () {
      var calendarEl = document.getElementById("calendar");

      var calendar = new FullCalendar.Calendar(calendarEl, {
        initialDate: "2020-09-12",
        editable: true,
        selectable: true,
        businessHours: true,
        dayMaxEvents: true, // allow "more" link when too many events
        events: [
          {
            title: "All Day Event",
            start: "2020-09-01",
          },
          {
            title: "Long Event",
            start: "2020-09-07",
            end: "2020-09-10",
          },
          {
            groupId: 999,
            title: "Repeating Event",
            start: "2020-09-09T16:00:00",
          },
          {
            groupId: 999,
            title: "Repeating Event",
            start: "2020-09-16T16:00:00",
          },
          {
            title: "Conference",
            start: "2020-09-11",
            end: "2020-09-13",
          },
          {
            title: "Meeting",
            start: "2020-09-12T10:30:00",
            end: "2020-09-12T12:30:00",
          },
          {
            title: "Lunch",
            start: "2020-09-12T12:00:00",
          },
          {
            title: "Meeting",
            start: "2020-09-12T14:30:00",
          },
          {
            title: "Happy Hour",
            start: "2020-09-12T17:30:00",
          },
          {
            title: "Dinner",
            start: "2020-09-12T20:00:00",
          },
          {
            title: "Birthday Party",
            start: "2020-09-13T07:00:00",
          },
          {
            title: "Click for Google",
            url: "http://google.com/",
            start: "2020-09-28",
          },
        ],
      });
      //alert("asdfsd");
      calendar.render();
    });
  </script>
<style>
  #calendar {
    max-width: 600px;
    margin: 0 auto;
  }

</style>
</body>
</html>

<!-- 달력 선언 끝 -->
<!-- </div> -->
<!-- Page Content end -->