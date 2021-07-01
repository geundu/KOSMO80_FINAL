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
	}
	String[] cbxCollegeArr = new String[cbxCollegeSize];
	String[] cbxDivisionArr = new String[cbxDivisionSize];

	/* cbxMajorSize = cbxMapList.get("majorList").size(); */
	
	String[] cbxDeptArr = new String[cbxDeptSize];
	String[] cbxMajorArr = new String[cbxMajorSize];
	out.print("collegeSize:" + cbxCollegeSize);
	out.print("divisionSize:" + cbxDivisionSize);
%>
<script>
console.log(<%=cbxCollegeSize   %>);
console.log(<%=cbxDivisionSize   %>);
console.log(<%=cbxDeptSize   %>);
console.log(<%=cbxMajorSize   %>);
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
							onClick="window.location.reload()"">Pprk.Main()</a></li>
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
			<select class="custom-select"
				style="width: auto;" id="CourseSelect00">
					<option> ⇓개설년도⇓   </option>
			</select>
			<select class="custom-select" style="width: auto;"id="CourseSelect01">
				<option>⇓개설학기⇓</option>
			</select> 
			<select class="custom-select" style="width: auto;"id="CourseSelect02">
				<option>⇓요일⇓</option>
				<option>월요일</option>
				<option>화요일</option>
				<option>수요일</option>
				<option>목요일</option>
				<option>금요일</option>
			</select> 
			<select class="custom-select" style="width: auto;" id="CourseSelect03">
				<option>⇓대학⇓</option>
			<%for(int i=0; i< cbxCollegeSize ; i++){
					Map<String, Object> rmap = cbxMapList.get("collegeList").get(i); 
					cbxCollegeArr[i] = (rmap.get("COLLEGE_NAME")).toString();
				}%>
			<%for (int i =0 ; i< cbxCollegeSize ; i++){	%>
				<option><%=cbxCollegeArr[i]%></option>
			<%}%>	
			</select> 
			<select class="custom-select" style="width: auto;" id="CourseSelect04">
				<option>⇓학부⇓</option>
				<option>학부:건축학부</option>
				<%for(int i=0; i< cbxDeptSize ; i++){
					Map<String, Object> rmap = cbxMapList.get("deptList").get(i); 
					cbxDeptSize = cbxMapList.get("deptList").size();
					cbxDeptArr[i] = (rmap.get("COLLEGE_NAME")).toString();
				}%>
			<%for (int i =0 ; i< cbxDeptSize ; i++){	%>
				<option><%=cbxDeptArr[i]%></option>
			<%}%>	
			</select> 
			<select class="custom-select" style="width: auto;" id="CourseSelect05">
				<option>⇓학과⇓</option>
				<option>학과:컴퓨터공학</option>
				<option>학과:기계공학</option>
			</select> 
			<select class="custom-select" style="width: auto;" id="CourseSelect06">
				<option>⇓학년⇓</option>
				<option>학년:1학년</option>
				<option>학년:2학년</option>
				<option>학년:3학년</option>
				<option>학년:4학년</option>
			</select> 
<!-- 			<select class="custom-select" style="width: auto;">
				<option>교과목명:외국문화이해</option>
				<option>교과목명:c언어</option>
				<option>교과목명:공학수학</option>
				<option>교과목명:성경개론</option>
			</select>  -->
			<select class="custom-select" style="width: auto;" id="CourseSelect07">
				<option>⇓이수구분⇓</option>
				<option>이수구분:전공필수</option>
				<option>이수구분:교양필수</option>
				<option>이수구분:전공</option>
			</select>
		</div>
		<div class="screen2"
			style="width: 100%; height: auto; background-color: white; text-align: center;">
			<button class="btn btn-primary">검색</button>
		</div>
		<div class="screen3"
			style="width: 100%; height: auto; background-color: ;">
			<table class="table table-bordered">
				<thead class="thead-team">
					<tr>
						<th scope="col">순번</th>
						<th scope="col">과목코드</th>
						<th scope="col">과목명</th>
						<th scope="col">이러닝여부</th>
						<th scope="col">이수구분</th>
						<th scope="col">학점</th>
						<th scope="col">개설학과</th>
						<th scope="col">대상학년</th>
						<th scope="col">시간표</th>
						<th scope="col">책임교수</th>
					</tr>
				</thead>
				<tbody class="text-center">
					<tr>
						<td>1</td>
						<td>10222</td>
						<td>일본의문화</td>
						<td>이러닝수업</td>
						<td>전공필수</td>
						<td>3</td>
						<td>인문사회대학-외국어학부-일어일문학</td>
						<td>3</td>
						<td>월 1,2,3</td>
						<td>강찬영 강사</td>
					</tr>
					<tr>
						<td>1</td>
						<td>10222</td>
						<td>일본의문화</td>
						<td>이러닝수업</td>
						<td>전공필수</td>
						<td>3</td>
						<td>인문사회대학-외국어학부-일어일문학</td>
						<td>3</td>
						<td>월 1,2,3</td>
						<td>강찬영 강사</td>
					</tr>
					<tr>
						<td>1</td>
						<td>10222</td>
						<td>일본의문화</td>
						<td>이러닝수업</td>
						<td>전공필수</td>
						<td>3</td>
						<td>인문사회대학-외국어학부-일어일문학</td>
						<td>3</td>
						<td>월 1,2,3</td>
						<td>강찬영 강사</td>
					</tr>
					<tr>
						<td>1</td>
						<td>10222</td>
						<td>일본의문화</td>
						<td>이러닝수업</td>
						<td>전공필수</td>
						<td>3</td>
						<td>인문사회대학-외국어학부-일어일문학</td>
						<td>3</td>
						<td>월 1,2,3</td>
						<td>강찬영 강사</td>
					</tr>
					<tr>
						<td>1</td>
						<td>10222</td>
						<td>일본의문화</td>
						<td>이러닝수업</td>
						<td>전공필수</td>
						<td>3</td>
						<td>인문사회대학-외국어학부-일어일문학</td>
						<td>3</td>
						<td>월 1,2,3</td>
						<td>강찬영 강사</td>
					</tr>
					<tr>
						<td>1</td>
						<td>10222</td>
						<td>일본의문화</td>
						<td>이러닝수업</td>
						<td>전공필수</td>
						<td>3</td>
						<td>인문사회대학-외국어학부-일어일문학</td>
						<td>3</td>
						<td>월 1,2,3</td>
						<td>강찬영 강사</td>
					</tr>
					<tr>
						<td>1</td>
						<td>10222</td>
						<td>일본의문화</td>
						<td>이러닝수업</td>
						<td>전공필수</td>
						<td>3</td>
						<td>인문사회대학-외국어학부-일어일문학</td>
						<td>3</td>
						<td>월 1,2,3</td>
						<td>강찬영 강사</td>
					</tr>
					<tr>
						<td>1</td>
						<td>10222</td>
						<td>일본의문화</td>
						<td>이러닝수업</td>
						<td>전공필수</td>
						<td>3</td>
						<td>인문사회대학-외국어학부-일어일문학</td>
						<td>3</td>
						<td>월 1,2,3</td>
						<td>강찬영 강사</td>
					</tr>
					<tr>
						<td>1</td>
						<td>10222</td>
						<td>일본의문화</td>
						<td>이러닝수업</td>
						<td>전공필수</td>
						<td>3</td>
						<td>인문사회대학-외국어학부-일어일문학</td>
						<td>3</td>
						<td>월 1,2,3</td>
						<td>강찬영 강사</td>
					</tr>
					<tr>
						<td>1</td>
						<td>10222</td>
						<td>일본의문화</td>
						<td>이러닝수업</td>
						<td>전공필수</td>
						<td>3</td>
						<td>인문사회대학-외국어학부-일어일문학</td>
						<td>3</td>
						<td>월 1,2,3</td>
						<td>강찬영 강사</td>
					</tr>
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
	var selectedOption00;
	var selectedOption01;
	var selectedOption02;
	var selectedOption03;
	var selectedOption04;
	var selectedOption05;
	var selectedOption06;
	var selectedOption07;
	
	$(document).ready(function () {
		 console.log('readyEvent');
		 initClickEvent();
	});
	
	function selectbox00(){}
	function selectbox01(){}
	function selectbox02(){}
	function selectbox03(){}
	function selectbox04(){}
	$('#CourseSelect04').on('change', function(e){
	e.preventDefault();
	console.log($(this).find("option:selected").val());
	selectedOption04 = $(this).find("option:selected").val();
	});
	
	function selectbox05(){
	$('#CourseSelect05').on('change', function(e){
	e.prevetnDEFAULT();
	console.log($(this).fine("option:selected").val());
	selectedOption05 = $(this).find("option:selected").val();
	
	});		
;
	}
	
	
	function selectbox06(){}
	function selectbox07(){}
	
	function initClickEvent(){
		console.log('initClickEvent');
		$('#CourseSelect00').unbind('click').bind('click',selectbox00());
		$('#CourseSelect01').unbind('click').bind('click',selectbox01());
		$('#CourseSelect02').unbind('click').bind('click',selectbox02());
		$('#CourseSelect03').unbind('click').bind('click',selectbox03());
		$('#CourseSelect04').unbind('click').bind('click',selectbox04());
		$('#CourseSelect05').unbind('click').bind('click',selectbox05());
		$('#CourseSelect06').unbind('click').bind('click',selectbox06());
		$('#CourseSelect07').unbind('click').bind('click',selectbox07());
		
	}
});
<!-- </div> -->
<!-- Page Content end -->