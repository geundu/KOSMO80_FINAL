<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<%
	List<Map<String, Object>> cbxCourse = null;
cbxCourse = (List<Map<String,Object>>) request.getAttribute("cbBoxCourseHistory");
	int sizeCbx = 0;
	
	if( cbxCourse !=null){
		sizeCbx	= cbxCourse.size();
	}

	String[] CourseSemester = new String[sizeCbx];
%>
<button type="button" id="logout" onclick="logout()" class="btn btn-primary mr-1" style="margin-left: 0.2em; font-size:12px; width: 100px; height: auto; text-align: center;">logout</button>
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
							onClick="window.location.reload()">Pprk.Main()</a></li>
						<li class="breadcrumb-item active" aria-current="page">종합정보조회</li>
						<li class="breadcrumb-item active" aria-current="page">수강목록조회</li>
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
		<!-- 메인 프레임 1 시작 -->
		<div class="screen1"
			style="width: 100%; height: auto%; text-align: center; background-color: E8EBEE;">
			<select class="custom-select" id="StuCourseSelect00"style="width: auto;">
			<option selected>학기를 선택해주세요.</option>
			<%
			for(int i=0; i<sizeCbx;i++ ){ 
			Map<String, Object> rmap = cbxCourse.get(i);
			CourseSemester[i] = (rmap.get("COURSE_SEMESTER")).toString();
			}
			%>
			<%for(int i=0;i<sizeCbx;i++){%>
				<option><%=CourseSemester[i]%></option>
			<%}%>
			</select>
			<p></p>
		</div>
		<!-- 메인프레임 1 끝 -->
		<!--메인 프레임 2 시작-->
		<div class="screen2"
			style="width: 100%; height: 100%; background-color: E8EBEE;">
			<h1 class="mb-4"></h1>
			<p>
			<table class="table table-bordered" id="CourseTable">
				<thead class="thead-team">
					<tr>
<!-- 						<th scope="col">순번</th>
						<th scope="col">년도</th>
						<th scope="col">학기</th>
						<th scope="col">교과목</th>
						<th scope="col">학점</th>
						<th scope="col">개설학과</th>
						<th scope="col">대상학년</th>
						<th scope="col">시간표</th>
						<th scope="col">교수</th>
						<th scope="col">전공교양</th>
						<th scope="col">재수강</th> -->
					</tr>
				</thead>
				<tbody>
				
				</tbody>
			</table>
			</p>
		</div>
	</div>
</div>
<script src="./js/toggleAction.js"></script>
<script>
$(function() {
	'use strict';
	var $courseTable = $('#CourseTable');
	var selectedOption;
	$(document).ready(function () {
		 console.log('readyEvent');
		 initClickEvent();
	});
	

	
	function selectbox(){
	$('#StuCourseSelect00').on('change', function(e){
	e.preventDefault();
	console.log($(this).find("option:selected").val());
	
	selectedOption = $(this).find("option:selected").val();
	CourseTableInput();
	/* $(this).fined("option:selected").val().remove(); */
	});
	
	}
	
	
	function CourseTableInput(){
		console.log('CourseTableInput');
		$courseTable.bootstrapTable('destroy')
		$courseTable.bootstrapTable({
			url:'/student/jsonGetCourseHistory?STUDENT_NUMBER='+sid+'&'+
			'SEMESTER='+selectedOption,
			columns: [{
				field:'ROWNUM',
				title:'순번'
			}, {
				field:'COURSE_SEMESTER',
				title:'년도-학기'
			}, {
				field:'SUBJECT_NAME',
				title:'교과목'
			}, {
				field:'SUBJECT_CREDIT',
				title:'학점'
			}, {
				field:'COLLEGE_NAME',
				title:'개설학과'
			}, {
				field:'SUBJECT_GRADE',
				title:'대상학년'
			}, {
				field:'COURSE_DAY',
				title:'요일'
			}, {
				field:'COURSE_BEGIN_TIME',
				title:'시작교시'
			}, {
				field:'COURSE_END_TIME',
				title:'종료교시'
			}, {
				field:'PROFESSOR_NAME',
				title:'담당교수'
			}, {
				field:'SUBJECT_DIVISION',
				title:'이수구분'
			}, {
				field:'MAKE_IS_RETAKE',
				title:'재수강'
			}]
		});
		
		return false;
	}
	function initClickEvent(){
		console.log('initClickEvent');
		$('#StuCourseSelect00').unbind('click').bind('click',selectbox());
		
	}
	
});
	
</script>
<!-- </div> -->
<!-- Page Content end -->