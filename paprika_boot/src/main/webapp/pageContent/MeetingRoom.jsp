<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html lang="en">
<head>

<style>
#calendar{
	max-width: 600px;
	margin: 0 auto;
        }
   </style>
</head>
<body>
<button type="button" id="logout" onclick="logout()" class="btn btn-primary mr-1" style="margin-left: 0.2em; font-size:12px; width: 100px; height: auto; text-align: center;">logout</button>
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


<div class="d-flex justify-content-center">
<div class="container">
	<!-- screen1 시작 -->
	<div class="screen1" style="width: 40%; height: auto; float: left; background-color: bisque;">
		<div id='calendar' style="width: auto; height: auto;">
		</div>
	</div>
	<!--screen1 끝-->
	<!-- screen2 시작 -->
<div class="screen2" style="width: 60%; height: 65%; float: right; background-color: yellowgreen; padding: 50px;" id="screen2">
		<table style="margin: 1em;">
			<thead>
				<th>
					<button type="button" class="btn btn-danger mr-5" style="height: 75%; width: 100px; margin-top: 2%; margin-left: 2%;">
						<h2>A관</h2>
					</button>
				</th>
				<th>
					<button type="button" class="btn btn-primary btn-lg" style="padding: 15px;">1실</button>
				</th>
				<th>
					<button type="button" class="btn btn-primary btn-lg" style="padding: 15px;">2실</button>
				</th>
				<th>
					<button type="button" class="btn btn-primary btn-lg" style="padding: 15px;">3실</button>
				</th>
				<th>
					<button type="button" class="btn btn-primary btn-lg" style="padding: 15px;">4실</button>
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
						<h2>B관</h2>
					</button>
				<th>
					<button type="button" class="btn btn-primary btn-lg" style="padding: 15px;">1실</button>
				</th>
				<th>
					<button type="button" class="btn btn-primary btn-lg" style="padding: 15px;">2실</button>
				</th>
				<th>
					<button type="button" class="btn btn-primary btn-lg" style="padding: 15px;">3실</button>
				</th>
				<th>
					<button type="button" class="btn btn-primary btn-lg" style="padding: 15px;">4실</button>
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
						<h2>C관</h2>
					</button>
				</th>
				<th>
					<button type="button" class="btn btn-primary btn-lg" style="padding: 15px;">1실</button>
				</th>
				<th>
					<button type="button" class="btn btn-primary btn-lg" style="padding: 15px;">2실</button>
				</th>
				<th>
					<button type="button" class="btn btn-primary btn-lg" style="padding: 15px;">3실</button>
				</th>
				<th>
					<button type="button" class="btn btn-primary btn-lg" style="padding: 15px;">4실</button>
				</th>
			</thead>
			<tbody>
			</tbody>
		</table>
	</div>
	<!--screen2 끝-->
	<!-- screen3 시작 -->
	<div class="screen3"
		style="width: 45%; height: 25%; float: left; background-color: aquamarine; margin: auto; display: flex; border-spacing: 10px;"
		id="screen3">
		<table style="margin: 1em;" id="screen3tb1">
			<thead>
			</thead>
			<tbody>
				<tr style="margin: 1em;">
					<td>
						<button type="button" class="btn btn-primary mr-1" style="width: 65px; height: 70px; text-align: center;">09:00</button>
					</td>
					<td>
						<button type="button" class="btn btn-primary mr-1" style="width: 65px; height: 70px; text-align: center;">10:00</button>
					</td>
					<td>
						<button type="button" class="btn btn-primary mr-1" style="width: 65px; height: 70px; text-align: center;" disabled='disabled'>11:00</button>
					</td>
					<td>
						<button type="button" class="btn btn-primary mr-1" style="width: 65px; height: 70px; text-align: center;">12:00</button>
					</td>
					<td>
						<button type="button" class="btn btn-primary mr-1" style="width: 65px; height: 70px; text-align: center;">13:00</button>
					</td>
					<td>
						<button type="button" class="btn btn-primary mr-1" style="width: 65px; height: 70px; text-align: center;">14:00</button>
					</td>

				</tr>
				<tr>
					<td>
						<button type="button" class="btn btn-primary mr-1" style="width: 65px; height: 70px; text-align: center;">15:00</button>
					</td>
					<td>
						<button type="button" class="btn btn-primary mr-1" style="width: 65px; height: 70px; text-align: center;">16:00</button>
					</td>
					<td>
						<button type="button" class="btn btn-primary mr-1" style="width: 65px; height: 70px; text-align: center;">17:00</button>
					</td>
					<td>
						<button type="button" class="btn btn-primary mr-1" style="width: 65px; height: 70px; text-align: center;" disabled='disabled'>18:00</button>
					</td>
					<td>
						<button type="button" class="btn btn-primary mr-1" style="width: 65px; height: 70px; text-align: center;">19:00</button>
					</td>
					<td>
						<button type="button" class="btn btn-primary mr-1" style="width: 65px; height: 70px; text-align: center;">20:00</button>
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
						<button id="reserv" type="button" class="btn btn-primary mr-1" style="width: 65px; height: 140px; text-align: center;">예약</button> <!-- 강찬영 -->
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
	</div>
	</div>
	<!--screen4  끝-->

	<!-- Page Content end -->


	<script src="../js/toggleAction.js"></script>
	<!-- 달력시작 -->
	<script>
		//현재 날짜 구하기
		var today = new Date();
		var year = today.getFullYear();
		var month = ('0' + (today.getMonth() + 1)).slice(-2);
		var day = ('0' + today.getDate()).slice(-2);
		var dateString = year + '-' + month + '-' + day;
		//현재날짜 구하기 끝
		// 달력 부르기 함수
		//document.addEventListener("DOMContentLoaded", function () {
		//$('#reserv').on('click',function(){	////////////강찬영
		$(document).ready(function() {
			var calendarEl = document.getElementById("calendar");
			var calendar = new FullCalendar.Calendar(calendarEl, {
				initialDate : dateString,
				editable : true,
				selectable : true,
				businessHours : true,
				dayMaxEvents : true, // allow "more" link when too many events
				events : [ {
					title : "All Day Event",
					start : "2021-07-01",
				}, {
					title : "Long Event",
					start : "2021-07-07",
					end : "2021-07-10",
				}				
				],				
				dateClick: function(info) {  //달력 셀 클릭 이벤트 시작
			        alert('clicked ' + info.dateStr);
			      },
			      select: function(info) {
			        alert('selected ' + info.startStr + ' to ' + info.endStr);
			      } // 달력 셀 클릭 이벤트 끝								 		
			});
			//alert("asdfsd");
			calendar.render();		
		});
		//캘린더 부르기 함수 끝
		
		/**************************** 로그아웃 함수 ****************************/

		/**************************** 로그아웃 함수 ****************************/
		
	</script>	
</body>
</html>

<!-- 달력 선언 끝 -->
<!-- </div> -->
<!-- Page Content end -->