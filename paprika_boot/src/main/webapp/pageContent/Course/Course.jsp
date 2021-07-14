<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<%
	StringBuilder path = new StringBuilder(request.getContextPath());
	path.append("/");
	Map<String, List<Map<String, Object>>> cbxMapList = null;
	cbxMapList = (Map<String, List<Map<String, Object>>>) request.getAttribute("cbxMapList");
	
	int cbxCollegeSize = 0;
	int cbxDivisionSize = 0;
	int cbxDeptSize = 0;
	int cbxMajorSize = 0;
	if (cbxMapList != null) {
		cbxCollegeSize = cbxMapList.get("collegeList").size();
		cbxDivisionSize = cbxMapList.get("divisionList").size();
		if(cbxMapList.get("deptList")!=null){
		cbxDeptSize = cbxMapList.get("deptList").size();
		}
		if(cbxMapList.get("majorList")!=null){
		cbxMajorSize = 	cbxMapList.get("majorList").size();
		}
	}
	String[] cbxCollegeArr = new String[cbxCollegeSize];
	String[] cbxDivisionArr = new String[cbxDivisionSize];
	String[] cbxDeptArr = new String[cbxDeptSize];
	String[] cbxMajorArr = new String[cbxMajorSize];
	
	
%>


<button type="button" id="logout" onclick="logout()" class="btn btn-primary mr-1" style="margin-left: 0.2em; font-size:12px; width: 100px; height: auto; text-align: center;">logout</button>
<script>
console.log(cbxCollegeSize=<%=cbxCollegeSize   %>);
console.log(cbxDivisionSize=<%=cbxDivisionSize   %>);
console.log(cbxDeptSize=<%=cbxDeptSize   %>);
console.log(cbxMajorSize=<%=cbxMajorSize   %>);
</script>
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
						<li class="breadcrumb-item active" aria-current="page">개설강좌조회</li>
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
			style="width: 100%; height: auto; text-align: center; background-color:  ;">
			<select class="custom-select" style="width: auto;"id="CourseSelect01" value="<%=request.getParameter("COURSE_SEMESTER")%>">
				<option selected>개설년도-학기</option>
				<option value="2015-1">2015-1</option>
				<option value="2015-2">2015-2</option>
				<option value="2016-1">2016-1</option>
				<option value="2016-2">2016-2</option>
				<option value="2017-1">2017-1</option>
				<option value="2017-2">2017-2</option>
				<option value="2018-1">2018-1</option>
				<option value="2018-2">2018-2</option>
				<option value="2019-1">2019-1</option>
				<option value="2019-2">2019-2</option>
				<option value="2020-1">2020-1</option>
				<option value="2020-2">2020-2</option>
				<option value="2021-1">2021-1</option>
				<option value="2021-2">2021-2</option>
			</select> 
			<select class="custom-select" style="width: auto;"id="CourseSelect02" value="<%=request.getParameter("COURSE_DAY")%>">
				<option>전체</option>
				<option value="월">월</option>
				<option value="화">화</option>
				<option value="수">수</option>
				<option value="목">목</option>
				<option value="금">금</option>
			</select> 
<!-- 			<select class="custom-select" style="width: auto;" id="CourseSelect03"> -->
			<%if(cbxDeptSize > 0){  %>
<select class="custom-select" style="width:auto;" id="CourseSelect03" 
value="<%=request.getParameter("CBX_COLLEGE_NAME")%>">
<% } else {%>
<select class="custom-select" style="width:auto;" id="CourseSelect03">
<% }%>
				<option selected>대학</option>
			<%
				for(int i=0; i< cbxCollegeSize ; i++){
						Map<String, Object> rmap = cbxMapList.get("collegeList").get(i);
						cbxCollegeArr[i] = (rmap.get("COLLEGE_NAME")).toString();
					}
			%>
			<%for (int i =0 ; i< cbxCollegeSize ; i++){
				if(cbxCollegeArr[i].equals(request.getParameter("CBX_COLLEGE_NAME"))) {
				%>
				<option value="<%=cbxCollegeArr[i]%>" selected><%=cbxCollegeArr[i]%></option>
				<%}else { %>
				<option value="<%=cbxCollegeArr[i]%>"><%=cbxCollegeArr[i]%></option>
			<%
				}
			}%>	
			</select> 
			
			<!-- <select class="custom-select" style="width: auto;" id="CourseSelect04"> -->
			<%if(cbxMajorSize > 0){  %>
<select class="custom-select" style="width:auto;" id="CourseSelect04" 
value="<%=request.getParameter("CBX_DEPT_NAME")%>">
<% } else {%>
<select class="custom-select" style="width:auto;" id="CourseSelect04">
<% }%>
				<option selected>학부</option>
				<%
				for(int i=0; i< cbxDeptSize ; i++){
						Map<String, Object> rmap = cbxMapList.get("deptList").get(i);
						cbxDeptArr[i] = (rmap.get("COLLEGE_NAME")).toString();
					}
			%>
			<%for (int i =0 ; i< cbxDeptSize ; i++){
				if(cbxDeptArr[i].equals(request.getParameter("CBX_DEPT_NAME"))) {
				%>
				<option value="<%=cbxDeptArr[i]%>" selected><%=cbxDeptArr[i]%></option>
				<%}else { %>
				<option value="<%=cbxDeptArr[i]%>"><%=cbxDeptArr[i]%></option>
			<%
				}
			}%>	
				
			</select> 
			
			<!-- <select class="custom-select" style="width: auto;" id="CourseSelect05"> -->
					<%	if(cbxMajorSize > 0) {	%>
						<select class="custom-select" style="width:auto;" id="CourseSelect05" 
						value="<%=request.getParameter("MAJOR") %>" >
					<%	}else {	%>
						<select class="custom-select" style="width:auto;" id="CourseSelect05">
					<%	}	%>
					<option selected>학과</option>
					<%
					for(int i=0; i< cbxMajorSize ; i++){
						Map<String, Object> rmap = cbxMapList.get("majorList").get(i);
						cbxMajorArr[i] = (rmap.get("COLLEGE_NAME")).toString();
					}
					for (int i = 0; i < cbxMajorSize; i++){
						if(cbxMajorArr[i].equals(request.getParameter("CBX_DEPT_NAME"))) {
				
						%>
						<option value="<%=cbxMajorArr[i]%>" selected><%=cbxMajorArr[i]%></option>
						<%
						}
						else {
						%>
						<option value="<%=cbxMajorArr[i]%>"><%=cbxMajorArr[i]%></option>
						<%
						}
					}
					%>	
			</select>
			
			<select class="custom-select" style="width: auto;" id="CourseSelect06" value="<%=request.getParameter("HAKNUN")%>">
				<option selected>0</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				<option value="4">4</option>
			</select> 
			
			<select class="custom-select" style="width: auto;" id="CourseSelect07" value="<%=request.getParameter("GUBUN")%>">
				<option selected>전체</option>
				<option value="전필">전필</option>
				<option value="전선">전선</option>
				<option value="교필">교필</option>
				<option value="교선">교선</option>
			</select>
		</div>
		<div class="screen2"
			style="width: 100%; height: auto; background-color: white; text-align: center;">
			<button class="btn btn-primary" id="CourseSearchButton">검색</button>
		</div>
		<div class="screen3"
			style="width: 100%; height: auto; background-color: ;">
			<table class="table table-bordered" id="CourseTable2">
				<thead class="thead-team">
					<tr>
<!-- 						<th scope="col">순번</th>
						<th scope="col">과목코드</th>
						<th scope="col">과목명</th>
						<th scope="col">이러닝여부</th>
						<th scope="col">이수구분</th>
						<th scope="col">학점</th>
						<th scope="col">개설학과</th>
						<th scope="col">대상학년</th>
						<th scope="col">시간표</th>
						<th scope="col">책임교수</th> -->
					</tr>
				</thead>
				<tbody>

				</tbody>
			</table>
		</div>
	</div>
</div>
<script src="./js/toggleAction.js"></script>
<script>
$(function() {
	'use strict';
	var $CourseTable2 = $('#CourseTable2');
	$(document).ready(function () {
		 console.log('readyEvent');
		 initClickEvent();
	});
	
	
	
	
	function CourseSearchButtonClick(){
		selectedOption03 = '<%=request.getParameter("CBX_COLLEGE_NAME")%>'
		console.log('CourseSearchButtonClick');
		if(selectedOption04===undefined){selectedOption04='학부';}
		if(selectedOption05===undefined){selectedOption05='학과';}
		console.log(selectedOption03);
		console.log(selectedOption04);
		console.log(selectedOption05);
			if(selectedOption04!=='학부'){
				selectedOption03=selectedOption04;
			}
			if(selectedOption05!=='학과'){
				selectedOption03=selectedOption05;
			}
			if(selectedOption06===undefined){selectedOption06='0';}
			if(selectedOption07===undefined){selectedOption07='전체';}
			if(selectedOption02===undefined){selectedOption02='전체';}
		console.log(selectedOption03+selectedOption06+selectedOption07+selectedOption02)
		$CourseTable2.bootstrapTable('destroy')
		$CourseTable2.bootstrapTable({
			url : '/curriculum/jsonGetOpenCourseList?COLLEGE_NAME='+selectedOption03+'&'+
					'SUBJECT_GRADE='+selectedOption06+'&'+
					'SUBJECT_DIVISION='+selectedOption07+'&'+
					'COURSE_DAY='+selectedOption02,
			columns: [{
				field: 'ROWNUM',
				title: '순번'
			},{
				field: 'SUBJECT_NUMBER',
				title: '과목코드',
			},{ 
				field: 'SUBJECT_NAME',
				title: '과목명',
			},{
				field: 'COURSE_IS_ONLINE',
				title: '이러닝여부',
			},{
				field: 'SUBJECT_DIVISION',
				title: '이수구분',
			},{
				field: 'SUBJECT_CREDIT',
				title: '학점',
			},{
				field: 'COLLEGE_NAME',
				title: '개설학과',
			},{
				field: 'SUBJECT_GRADE',
				title: '대상학년',
			},{
				field: 'COURSE_DAY',
				title: '요일',
			},{
				field: 'COURSE_BEGIN_TIME',
				title: '시작교시',
			},{
				field: 'COURSE_END_TIME',
				title: '종료교시',
			},{
				field: 'PROFESSOR_NAME',
				title: '담당교수',
			}]
		});
		return false;
	}
	
	let selectedOption01 = '개설년도-학기';
	let selectedOption02 = '전체';
	var selectedOption03;
	var selectedOption04;
	var selectedOption05;
	let selectedOption06 = '0';
	let selectedOption07 = '전체';
	
	$('#CourseSelect01').on('change', function(e){
		e.preventDefault();
		console.log($(this).find("option:selected").val());
		selectedOption01 = $(this).find("option:selected").val();
		selectedOption02 = $('#CourseSelect02').find("option:selected").val();
		
		selectedOption03 = $('#CourseSelect03').find("option:selected").val();
		selectedOption04 = $('#CourseSelect04').find("option:selected").val();
		selectedOption05 = $('#CourseSelect05').find("option:selected").val();
		
		selectedOption06 = $('#CourseSelect06').find("option:selected").val();
		selectedOption07 = $('#CourseSelect07').find("option:selected").val();
		
	});
	
	$('#CourseSelect02').on('change', function(e){
		e.preventDefault();
		console.log($(this).find("option:selected").val());
		selectedOption01 = $('#CourseSelect01').find("option:selected").val();
		selectedOption01 = $.cookie('selectItem01');
		selectedOption02 = $(this).find("option:selected").val();
		
		selectedOption03 = $('#CourseSelect03').find("option:selected").val();
		selectedOption04 = $('#CourseSelect04').find("option:selected").val();
		selectedOption05 = $('#CourseSelect05').find("option:selected").val();
		
		selectedOption06 = $('#CourseSelect06').find("option:selected").val();
		selectedOption06 = $.cookie('selectItem06');
		selectedOption07 = $('#CourseSelect07').find("option:selected").val();
		selectedOption07 = $.cookie('selectItem07');
		
		
	});
	
	$('#CourseSelect03').on('change', function(e){
	e.preventDefault();
	console.log($(this).find("option:selected").val());

	selectedOption01 = $('#CourseSelect01').find("option:selected").val();
	selectedOption02 = $('#CourseSelect02').find("option:selected").val();
	
	selectedOption03 = $(this).find("option:selected").val();
	selectedOption04 = $('#CourseSelect04').find("option:selected").val();
	selectedOption05 = $('#CourseSelect05').find("option:selected").val();
	
	selectedOption06 = $('#CourseSelect06').find("option:selected").val();
	selectedOption07 = $('#CourseSelect07').find("option:selected").val();
		$.ajax({
			type :'get',
			url:'/curriculum/getOpenCourse?CBX_COLLEGE_NAME='+selectedOption03,
			dataType:'html',
			success: function(data){
				$('#content').html(data).trigger("create");
		}
		});
		selectedOption01 = $('#CourseSelect01').find("option:selected").val();
		selectedOption02 = $('#CourseSelect02').find("option:selected").val();
		
		selectedOption03 = $(this).find("option:selected").val();
		selectedOption04 = $('#CourseSelect04').find("option:selected").val();
		selectedOption05 = $('#CourseSelect05').find("option:selected").val();
		
		selectedOption06 = $('#CourseSelect06').find("option:selected").val();
		selectedOption07 = $('#CourseSelect07').find("option:selected").val();
	});
	
	$('#CourseSelect04').on('change', function(e){
	e.preventDefault();
	console.log($(this).find("option:selected").val());
	selectedOption01 = $('#CourseSelect01').find("option:selected").val();
	selectedOption02 = $('#CourseSelect02').find("option:selected").val();
	
	selectedOption03 = $('#CourseSelect03').find("option:selected").val();
	selectedOption04 = $(this).find("option:selected").val();
	selectedOption05 = $('#CourseSelect05').find("option:selected").val();
	
	selectedOption06 = $('#CourseSelect06').find("option:selected").val();
	selectedOption07 = $('#CourseSelect07').find("option:selected").val();
	$.ajax({
		type :'get',
		/* url:'pageContent/Course/Course.jsp', */
		url:'/curriculum/getOpenCourse?CBX_COLLEGE_NAME='+selectedOption03+'&CBX_DEPT_NAME='+selectedOption04,
		dataType:'html',
		success: function(data){
			$('#content').html(data).trigger("create");
		}
		});
	});
	
	$('#CourseSelect05').on('change', function(e){
		e.preventDefault();
		console.log($(this).find("option:selected").val());
		selectedOption01 = $('#CourseSelect01').find("option:selected").val();
		selectedOption02 = $('#CourseSelect02').find("option:selected").val();
		
		selectedOption03 = $('#CourseSelect03').find("option:selected").val();
		selectedOption04 = $('#CourseSelect04').find("option:selected").val();
		
		selectedOption05 = $(this).find("option:selected").val();
		
		selectedOption06 = $('#CourseSelect06').find("option:selected").val();
		selectedOption07 = $('#CourseSelect07').find("option:selected").val();
	
	
	});
	
	$('#CourseSelect06').on('change', function(e){
		e.preventDefault();
		console.log($(this).find("option:selected").val());
		selectedOption01 = $('#CourseSelect01').find("option:selected").val();
		selectedOption02 = $('#CourseSelect02').find("option:selected").val();
		
		selectedOption03 = $('#CourseSelect03').find("option:selected").val();
		selectedOption04 = $('#CourseSelect04').find("option:selected").val();
		selectedOption05 = $('#CourseSelect05').find("option:selected").val();
		
		selectedOption06 = $(this).find("option:selected").val();
		selectedOption07 = $('#CourseSelect07').find("option:selected").val();
		
		
	});
	$('#CourseSelect07').on('change', function(e){
		e.preventDefault();
		console.log($(this).find("option:selected").val());
		selectedOption01 = $('#CourseSelect01').find("option:selected").val();
		selectedOption02 = $('#CourseSelect02').find("option:selected").val();
		
		selectedOption03 = $('#CourseSelect03').find("option:selected").val();
		selectedOption04 = $('#CourseSelect04').find("option:selected").val();
		selectedOption05 = $('#CourseSelect05').find("option:selected").val();
		
		selectedOption06 = $('#CourseSelect06').find("option:selected").val();
		selectedOption07 = $(this).find("option:selected").val();
		
		
	});
	
	
	function initClickEvent(){
		console.log('initClickEvent');
		$('#CourseSearchButton').click(CourseSearchButtonClick);
		
		
	}
});
</script>
<!-- </div> -->
<!-- Page Content end -->