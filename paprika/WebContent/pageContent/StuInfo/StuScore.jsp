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

List<Map<String, Object>> gradeHistoryList = null;
List<Map<String, Object>> gradeHistoryDetail = null;
gradeHistoryList = (List<Map<String, Object>>) request.getAttribute("gradeHistoryList");
int sizeList = 0;
int sizeDetail = 0;

if (gradeHistoryList != null) {
	sizeList = gradeHistoryList.size();
}
if (gradeHistoryDetail != null) {
	sizeDetail = gradeHistoryDetail.size();
}
String[] semesterarr = new String[sizeList];
%>
<script>
console.log(<%=sizeList%>);
console.log(<%=sizeDetail%>);
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
						<li class="breadcrumb-item active" aria-current="page">종합정보조회</li>
						<li class="breadcrumb-item active" aria-current="page">수강성적조회</li>
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
		<div class="screen1" style="width: 35%; height: auto%; float: left;">
			<h3>
				<div class="dropdown" style="text-align: center;">수강 목록 조회</div>
			</h3>
			<p>
			<table class="table table-bordered">
				<thead class="thead-team">
					<tr>
						<th scope="col">학기</th>
						<th scope="col">평점 평균</th>
						<th scope="col">신청학점</th>
						<th scope="col">취득학점</th>
						<th scope="col">F학점</th>
					</tr>
				</thead>
				<tbody>
					<%
					for (int i = 0; i < sizeList; i++) {
						Map<String, Object> rmap = gradeHistoryList.get(i);
					%>
					<tr id="course_table<%=i%>">
						<%
							semesterarr[i] = String.valueOf(rmap.get("COURSE_SEMESTER"));
						%>
						<th scope="row"><%=rmap.get("COURSE_SEMESTER")%></th>
						<td><%=rmap.get("MARK_AVG")%></td>
						<td><%=rmap.get("SUMMITEDSCORE")%></td>
						<td><%=rmap.get("PASSSCORE")%></td>
						<td><%=rmap.get("F_SCORE")%></td>
					</tr>
					<%
						} ;
					%>
				</tbody>
			</table>
			</p>
		</div>
		<!--두번째 시작-->
		<div class="screen2"
			style="width: 60%; height: auto%; float: right; padding-left: 4px;">
			<h3>
				<div class="dropdown" style="text-align: center;">교과목별 성적 상세
					조회</div>
			</h3>
			<p>
			<table class="table table-bordered" id="detailTable">
				<thead class="thead-team">
						<tr>
							<th scope="col">번호</th>
							<th scope="col">(과목코드)과목명</th>
							<th scope="col">이수구분</th>
							<th scope="col">학점</th>
							<th scope="col">평점</th>
							<th scope="col">등급</th>
							<th scope="col">성적삭제구분</th>
							<th scope="col">재이수여부</th>
							<th scope="col">재이수학기</th>
						</tr>
					</thead>
					<tbody>
				<%
							if (sizeDetail != 0) {
							for (int i = 0; i < sizeDetail; i++) {
								Map<String, Object> rmap = gradeHistoryDetail.get(i);
						%>
<%-- 						<tr>
							<th scope="row"><%=rmap.get("NUM")%></th>
							<td><%=rmap.get("SUBJECT_NAME")%></td>
							<td><%=rmap.get("SUBJECT_DIVISION")%></td>
							<td><%=rmap.get("SUBJECT_CREDIT")%></td>
							<td><%=rmap.get("SCORE")%></td>
							<td><%=rmap.get("MARK")%></td>
							<td><%=rmap.get("RETAKE")%></td>
							<td><%=rmap.get("REPASS")%></td>
							<td><%=rmap.get("REPASS_SEMESTER")%></td>
						</tr> --%>
						<!-- 안쓰는 코드이지만 구분을 위해 남겨놓았습니다. -->
						<%
							}
						} else {
						%>
						<tr>
							<th colspan="9">선택된 학기가 없습니다.</th>
						</tr>
						<%
							}
						%>
				</tbody>
			</table>
			</p>
		</div>
		<!-- 두번쨰 끝-->
		<!--세번째 시작-->
 		<div class="screen3" style="width: 100%; height: 100%;">
			<table class="table table-bordered"
				style="width: 70%; text-align: center; margin: auto">
				<thead class="thead-team ">
					<tr>
						<th scope="col">구분</th>
						<th scope="col">전필</th>
						<th scope="col">전선</th>
						<th scope="col">교선</th>
						<th scope="col">교필</th>
						<th scope="col">부전필</th>
						<th scope="col">부전선</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th scope="row">취득학점</th>
						<td>50</td>
						<td>30</td>
						<td>20</td>
						<td>20</td>
						<td>0</td>
						<td>0</td>

					</tr>
					<tr>
						<th scope="row">평점평균</th>
						<td>3.8</td>
						<td>3.5</td>
						<td>3.5</td>
						<td>2.8</td>
						<td>0</td>
						<td>0</td>
					</tr>
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
	$(document).ready(function () {
		console.log('readyEvent');
		initClickEvent();
	});
	
	var $detailTable = $('#detailTable');
	
	<%for (int i = 0; i < sizeList; i++) {%>
	let semester<%=i%>= '<%=semesterarr[i]%>';
	function onClickRow_StuScore<%=i%>(e){
		console.log('onClickRow_StuScore'+<%=i%>);
		e.preventDefault();
		$detailTable.bootstrapTable('destroy')
		$detailTable.bootstrapTable({
			url:'/paprika/jsonGetGradeHistoryDetail.do?STUDENT_NUMBER='+sid+'&'+
			'SEMESTER='+'<%=semesterarr[i]%>',
			height:"100%",
			width:"100%",
			columns: [{
			    field: 'NUM',
			    title: '번호'
			  }, {
			    field: 'SUBJECT_NAME',
			    title: '과목이름',
			  }, {
				    field: 'SUBJECT_DIVISION',
				    title: '이수구분',
			  }, {
				    field: 'SUBJECT_CREDIT',
				    title: '학점',
			  }, {
				    field: 'SCORE',
				    title: '평점',
			  }, {
				    field: 'MARK',
				    title: '등급',
			  }, {
				    field: 'RETAKE',
				    title: '성적삭제구분',
			  }, {
				    field: 'REPASS',
				    title: '재이수여부',
			  }, {
				    field: 'REPASS_SEMESTER',
				    title: '재이수학기',
			  }]
		});
		return false;
	}
<%}%>  
	function initClickEvent(){
		<%for (int i = 0; i < sizeList; i++) {%>
		$('#course_table<%=i%>').click(onClickRow_StuScore<%=i%>);
		<%}%>
	}	
	

});

</script>
<!-- </div> -->
<!-- Page Content end -->