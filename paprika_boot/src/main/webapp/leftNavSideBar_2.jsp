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
			<!--scroll6시작-->
	<li class="active"><a id="sideButton_6_0_2" href="#scroll6"
		aria-current="page" data-toggle="collapse"> <i
			class="fa fa-search"></i>e-Learning
	</a>
		<div id="scroll6" class="collapse  ">
			<ul class="collapse__menu">
					<a id="sideButton_6_1" href="#" class="nav-link text-blue">Dashboard</a>
					<a id="sideButton_6_2" href="#" class="nav-link text-blue">강좌조회</a>
					<a id="sideButton_6_3" href="#" class="nav-link text-blue">강좌시청</a>
					<a id="sideButton_6_4" href="#" class="nav-link text-blue">피드백보내기</a>
					<a id="sideButton_6_5" href="#" class="nav-link text-blue">시험응시</a>
			</ul></li>
	<!--scroll6끝-->
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