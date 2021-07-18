<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<!-- 좌측 nav sidebar start -->
<!--시간표 시작 -->
<nav id="sidebar" class="active">

	<h4>
		<a href="./MainPage.jsp" class="logo">Pprk.</a>
	</h4>
	<ul class="list-unstyled components mb-5">
	<!--scroll8시작-->
	<li class="active"><a id="sideButton_8_0_3" href="#scroll8"
		aria-current="page" data-toggle="collapse"> <i
			class="fa fa-search"></i>관리자 - 조회 추가 수정
	</a>
		<div id="scroll8" class="collapse  ">
			<ul class="collapse__menu">
				<a id="sideButton_8_1" href="#" class="nav-link text-blue">학생,교직원 조회</a>
				<a id="sideButton_8_2" href="#" class="nav-link text-blue">학생,교직원 추가</a>
				<a id="sideButton_8_3" href="#" class="nav-link text-blue">학생,교직원 수정</a>
			</ul></li>
	<!--scroll8끝-->
		<!--scroll9시작-->
	<li class="active"><a id="sideButton_9_0" href="#scroll9"
		aria-current="page" data-toggle="collapse"> <i
			class="fa fa-search"></i>관리자 - e-learning
			</a>
		<div id="scroll9" class="collapse  ">
			<ul class="collapse__menu">
				<a id="sideButton_9_1" href="#" class="nav-link text-blue">Dashboard</a>
				<a id="sideButton_9_2" href="#" class="nav-link text-blue">성적관리</a>
				<a id="sideButton_9_3" href="#" class="nav-link text-blue">강좌등록</a>
				<a id="sideButton_9_4" href="#" class="nav-link text-blue">강좌조회</a>
				<a id="sideButton_9_5" href="#" class="nav-link text-blue">강의시청</a>
				<a id="sideButton_9_6" href="#" class="nav-link text-blue">과제확인</a>
				<a id="sideButton_9_7" href="#" class="nav-link text-blue">피드백확인</a>
				<a id="sideButton_9_8" href="#" class="nav-link text-blue">강의등록버튼</a>
				<a id="sideButton_9_9" href="#" class="nav-link text-blue">시험관리</a>
				<a id="sideButton_9_10" href="#" class="nav-link text-blue">시험관리-조회</a>
				<a id="sideButton_9_11" href="#" class="nav-link text-blue">시험관리-등록</a>
				<a id="sideButton_9_12" href="#" class="nav-link text-blue">시험관리-채점</a>
			</ul></li>
	<!--scroll9끝-->
	<!-- 좌측 nav sidebar footer start -->
	<footer class="footer">
		<p>
			<a href='https://github.com/geundu/KOSMO80_FINAL' target="_blank"
				style="font-size: 14px;"><h2>
					Copyright@2021 team Pprk.
					<h2></a>
		</p>
	</footer>
	<!-- 좌측 nav sidebar footer end -->
</nav>
<!-- 좌측 nav sidebar end -->