<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%
	request.setCharacterEncoding("utf-8");

%>
<%
	List<Map<String, Object>> cbBoxCurriculum = null;
cbBoxCurriculum = (List<Map<String,Object>>) request.getAttribute("cbBoxCurriculum");
	int sizeCbx = 0;
	
	if( cbBoxCurriculum !=null){
		sizeCbx	= cbBoxCurriculum.size();
	}

	String[] cbBoxCurriculumArr = new String[sizeCbx];
%>
<script>
console.log(<%=sizeCbx%>);
</script>
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
						<li class="breadcrumb-item active" aria-current="page">강좌조회</li>
						<li class="breadcrumb-item active" aria-current="page">커리큘럼조회</li>
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
			style="width: 100%; height: auto; text-align: center; background-color: ;">

			<div class="btn-group" style="text-align: center;">
				<select class="custom-select form-control-sm" id="CurriculumSelect00" style=""width:auto; padding:auto;">
				
				
					<option selected>입학년도를 선택해주세요.	</option>
					<%
					for(int i=0; i<sizeCbx ; i++){
						Map<String, Object> rmap = cbBoxCurriculum.get(i);
						cbBoxCurriculumArr[i] = (rmap.get("YEAR")).toString();
					}
					%>
					<%for (int i=0; i<sizeCbx ; i++){ %>
					<option><%=cbBoxCurriculumArr[i]%></option>
					<%} %>

				</select> <br>
			</div>
		</div>
		<div class="screen3"
			style="width: 100%; height: auto%; background-color: ;">
			<table class="table table-bordered" id="CurriculumTable">
				<thead class="thead-team">
					<tr>
<!-- 						<th scope="col">학년</th>
						<th scope="col">학기</th>
						<th scope="col">과목코드</th>
						<th scope="col">이수구분</th>
						<th scope="col">교과목명</th>
						<th scope="col">학점</th>
						<th scope="col">담당교수</th>
						<th scope="col">비고</th> -->
					</tr>
				</thead>
				<tbody class="text-center">
				
				</tbody>
			</table>
		</div>
	</div>
</div>
<script src="./js/toggleAction.js"></script>
<script>
$(function() {
	'use strict';
	var $CurriculumTable = $('#CurriculumTable');
	var selectedOption;
	$(document).ready(function () {
		 console.log('readyEvent');
		 initClickEvent();
	});
	

	
	function selectbox(){
	$('#CurriculumSelect00').on('change', function(e){
	e.preventDefault();
	console.log($(this).find("option:selected").val());
	
	selectedOption = $(this).find("option:selected").val();
	CourseTableInput();
	/* $(this).fined("option:selected").val().remove(); */
	});
	
	}
	
	
	function CourseTableInput(){
		console.log('CourseTableInput');
		$CurriculumTable.bootstrapTable('destroy')
		$CurriculumTable.bootstrapTable({
			url:'/curriculum/jsonGetCurriculum?STUDENT_NUMBER='+sid+'&'+
			'YEAR='+selectedOption,
			columns: [{
				field:'SUBJECT_GRADE',
				title:'대상학년'
			}, {
				field:'COURSE_SEMESTER',
				title:'학기'
			}, {
				field:'SUBJECT_NUMBER',
				title:'과목코드'
			}, {
				field:'SUBJECT_DIVISION',
				title:'이수구분'
			}, {
				field:'SUBJECT_NAME',
				title:'과목명'
			}, {
				field:'SUBJECT_CREDIT',
				title:'학점'
			}, {
				field:'PROFESSOR_NAME',
				title:'담당교수'
			}, {
				field:'COURSE_REMARK',
				title:'비고'
			}]
		});
		
		return false;
	}
/* 	function initClickEvent(){
		console.log('initClickEvent');
		$('#CurriculumSelect00').click(selectbox);
		
	} */
	function initClickEvent(){
		console.log('initClickEvent');
		$('#CurriculumSelect00').unbind('click').bind('click',selectbox());
		
	}
	
});
	
</script>
<!-- </div> -->
<!-- Page Content end -->