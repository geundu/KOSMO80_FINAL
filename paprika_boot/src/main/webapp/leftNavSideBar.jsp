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
		<a onClick="window.location.reload()" class="logo">Pprk.</a>
	</h4>
	<ul class="list-unstyled components mb-5">
		<!--scroll1 시작-->
		<li class="active"><a id="sideButton_1_0"> <i
				class="fa fa-calendar"></i> Pprk.Main()
		</a>
			<ul class="collapse__menu">
			</ul></li>
		<li class="active"><a href="#scroll2" aria-current="page"
			data-toggle="collapse"> <i class="fa fa-search"></i> 종합정보조회
		</a>
			<div id="scroll2" class="collapse ">
				<ul class="collapse__menu">
					<a id="sideButton_2_1" href="#" class="nav-link text-blue">신상정보조회</a>
					<a id="sideButton_2_2" href="#" class="nav-link text-blue">수강목록조회</a>
					<a id="sideButton_2_3" href="#" class="nav-link text-blue">수강성적조회</a>
					<a id="sideButton_2_4" href="#" class="nav-link text-blue">학적변동조회</a>
				</ul></li>
		<li class="active"><a href="#scroll3" aria-current="page"
			data-toggle="collapse"> <i class="fa fa-book"></i> 강좌조회
		</a>
			<div id="scroll3" class="collapse  ">
				<ul class="collapse__menu">
					<a id="sideButton_3_1" href="#" class="nav-link text-blue">개설강좌조회</a>
					<a id="sideButton_3_2" href="#" class="nav-link text-blue">커리큘럼조회</a>
				</ul></li>
		<li class="active"><a id="sideButton_4_0" href=""> <i
				class="fa fa-money"></i> 등록금조회
		</a>
			<ul class="collapse__menu">
			</ul></li>
	<li class="active"><a id="sideButton_6_0" href="#scroll6"
		aria-current="page" data-toggle="collapse"> <i
			class="fa fa-search"></i>e-Learning
	</a>
		<div id="scroll6" class="collapse  ">
	<!--scroll8시작-->
	<li class="active"><a id="sideButton_8_0" href="#scroll8"
		aria-current="page" data-toggle="collapse"> <i
			class="fa fa-search"></i>관리자 - 조회 추가 수정
	</a>
		<div id="scroll8" class="collapse  ">
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