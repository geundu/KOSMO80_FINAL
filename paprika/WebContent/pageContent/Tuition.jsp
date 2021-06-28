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
						<li class="breadcrumb-item active" aria-current="page">등록금조회</li>
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
			style="width: 100%; height: 5%; text-align: center; background-color: E8EBEE;">
			<div class="btn-group" style="width: 800px;">
				<select class="custom-select" style="width: 800px;">
					<option>콤보박스(년도-학기) : 2012-1</option>
					<option>콤보박스(년도-학기) : 2012-2</option>
					<option>콤보박스(년도-학기) : 2013-1</option>
					<option>콤보박스(년도-학기) : 2013-2</option>
					<option>콤보박스(년도-학기) : 2014-1</option>
					<option>콤보박스(년도-학기) : 2014-2</option>
					<option>콤보박스(년도-학기) : 2015-1</option>
					<option>콤보박스(년도-학기) : 2015-2</option>
			</div>
			<button class=" btn-sm btn-primary">조회</button>
		</div>

 		<div class="screen3"
			style="width: 100%; height: 5%; text-align: center; background-color: E8EBEE;">
			<div class="btn-group" style="width: 800px;">
				<select class="custom-select" style="width: 800px;">
			</div>
			<a href="#" button type="button"
				class="btn float-right btn-primary btn">조회</a>
		</div> 
		<div class="screen2"
			style="width: 100%; height: 75%; background-color: E8EBEE;">
			<img src="images/money.jpg"  class="rounded mx-auto d-block" style="height: 100%;">
		</div>
	</div>
</div>


<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script src="./js/toggleAction.js"></script>


<!-- </div> -->
<!-- Page Content end -->