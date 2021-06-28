<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
<%
	request.setCharacterEncoding("utf-8");
%>
<!-- Page Content start -->
<!-- <div id="content" class="p-4 p-md-5"> -->
	 <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid" stlye="float:left;">

          <button type="button" id="sidebarCollapse" class="btn btn-primary">
            <i class="fa fa-bars"></i>
            <span class="sr-only">토글 버튼 위치(글씨출력 x)</span>
          </button>

          <button class="btn btn-dark d-inline-block d-lg-none ml-auto" type="button" data-toggle="collapse"
            data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
            aria-label="Toggle navigation">
            <i class="fa fa-bars"></i>
          </button>
          <!-- Page Content Header Start -->
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="nav navbar-nav">
              <!-- 현재보고있는 nav item은 calss active를 줄것. -->
              <nav aria-label="breadcrumb">
              <ol class="breadcrumb">
    <li class="breadcrumb-item"><a href="http://localhost:9010/project/frameForm.jsp">Pprk.Main()</a></li>
    <li class="breadcrumb-item active" aria-current="page">커뮤니티</li>
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
	<!-- Page main Frame Start -->
	<div class="col-md-6"
		style="width: 50%; height: 40%; float: right; border: 1px solid;">
		<h1>좌상단 프레임.</h1>
		<p>pageContent222222</p>
	</div>
	<div class="mb-4"
		style="width: 50%; height: 80%; float: left; border: 1px solid;">
		<h1>우상단 프레임.</h1>
		<p>pageContent222222</p>
	</div>
	<div class="mb-4"
		style="width: 50%; height: 40%; float: right; border: 1px solid;">
		<h1>좌하단 프레임</h1>
		<p>pageContent222222</p>
	</div>
	<script src="js/toggleAction.js"></script> 
<!-- </div> -->
<!-- Page Content end -->