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
	int cbxDeptSize = 0;
	int cbxMajorSize = 0;
	int selectTableSize = 0;
	if (cbxMapList != null) {
		cbxCollegeSize = cbxMapList.get("collegeList").size();
		if(cbxMapList.get("deptList")!=null){
		cbxDeptSize = cbxMapList.get("deptList").size();
		}
		if(cbxMapList.get("majorList")!=null){
		cbxMajorSize = 	cbxMapList.get("majorList").size();
		}
	}
	String[] cbxCollegeArr = new String[cbxCollegeSize];
	String[] cbxDeptArr = new String[cbxDeptSize];
	String[] cbxMajorArr = new String[cbxMajorSize];
	String[] selectTableArr = new String[selectTableSize];

	%>



<script>
console.log(cbxCollegeSize=<%=cbxCollegeSize   %>);
console.log(cbxDeptSize=<%=cbxDeptSize   %>);
console.log(cbxMajorSize=<%=cbxMajorSize   %>);

function memberInsert(){
	
	console.log($('#STUDENT_NAME').val());
	console.log($('#STUDENT_NUMBER').val());
	console.log($('#InsertSelect03').val());
	console.log($('#datePicker').val());
	
	let reqUrl = "./admin/memberInsert?STU_OR_PRO=학생&TR_CODE=INSERT"
		+"&STUDENT_NAME="+$('#STUDENT_NAME').val()
		+"&STUDENT_NUMBER="+$('#STUDENT_NUMBER').val()
		+"&COLLEGE_NUMBER="+$('#InsertSelect03').val()
		+"&STUDENT_ENTER_YEAR="+$('#datePicker').val()
		+"&REGISTER_NAME=입학"
	
		$.ajax({
			url: reqUrl,
			dataType:'text',
			success: function(data) {
				if(data == '1') {
					alert('업데이트 성공');
				}
				else {
					alert('업데이트 실패');
				}
			},
			error: function(xhr) {
				alert('비동기통신 실패');	
			}
		});
}
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
						<li class="breadcrumb-item active" aria-current="page">관리자-조회,
							추가, 수정</li>
						<li class="breadcrumb-item active" aria-current="page">학생,교직원
							추가</li>
					</ol>
				</nav>
		</div>
		<!-- Page Content Header end -->
	</div>
</nav>
<div class="d-flex justify-content-center">
	<div class="container">
		<div class="screen1"
			style="width: 100%; height: 80%; background-color:; padding-bottom: 40px;">
			<div class="container-fluid">
				<div class="row" style="text-align: center;">
					<div class="col-md-3">
						<img src="images/doge.png"
							style="width: 200px; height: 200px; margin-top: 5%;">
					</div>
	
					<div class="col-md-3">
					<div class="input-group "
						style="margin-top: 20%; padding-left: 10%;">
						<div class="input-group-prepend">
							<span class="input-group-text" id="basic-addon3"> 이름 </span>
						</div>
						<input type="text" class="form-control" value=""
							id="STUDENT_NAME" aria-describedby="basic-addon3">
					</div>
					</div>
					<div class="col-md-3">
						<div class="input-group "
						style="margin-top: 20%; padding-left: 10%;">
						<div class="input-group-prepend">
							<span class="input-group-text" id="basic-addon3"> 학번 </span>
						</div>
						<input type="text" class="form-control" value=""
							id="STUDENT_NUMBER" aria-describedby="basic-addon3">
					</div>
					</div>
				</div>
				<div class="row" style="margin-top: -5%; text-align: center;">
						<div class="col-md-3">
							<div class="custom-file" style="width: 250px; margin-top: 20%; 
							padding-left: 10%;">
					<input type="file" class="custom-file-input" id="customFile">
					<!-- 파일첨부 -->
					<label class="custom-file-label" for="customFile">첨부 파일</label>
				</div>
				
					</div>
				</div>
				<div class="row" style="margin-top: 5%; text-align: center;">
					<div class="input-group-prepend">
							<span class="input-group-text" id="basic-addon3"> 대학 </span>
						</div>
					<div class="col-md-2" style="padding-left:0">
						<%if(cbxDeptSize > 0){  %>
						<select class="custom-select" id="InsertSelect01" 
						value="<%=request.getParameter("CBX_COLLEGE_NAME")%>">
						<% } else {%>
						<select class="custom-select" id="InsertSelect01" >
						<% }%>
							<option>대학</option>	
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
					</div>
							<div class="input-group-prepend">
							<span class="input-group-text" id="basic-addon3"> 학부 </span>
						</div>
					<div class="col-md-2" style="padding-left:0">
					
						<%if(cbxMajorSize > 0){  %>
						<select class="custom-select" id="InsertSelect02" 
						value="<%=request.getParameter("CBX_DEPT_NAME")%>">
						<% } else {%>
						<select class="custom-select" id="InsertSelect02" >
						<% }%>
							<option>학부</option>
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
					</div>
						<div class="input-group-prepend">
							<span class="input-group-text" id="basic-addon3"> 학과 </span>
						</div>
					<div class="col-md-2" style="padding-left:0">
					<%	if(cbxMajorSize > 0) {	%>
						<select class="custom-select" id="InsertSelect03" value="<%=request.getParameter("MAJOR") %>">
						<%	}else {	%>
						<select class="custom-select" id="InsertSelect03">
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
					</div>
						<div class="input-group-prepend">
							<span class="input-group-text" id="basic-addon3"> 구분 </span>
						</div>
					<div class="col-md-2" style="padding-left:0">
						<select class="custom-select">
							<option>학생</option>
						</select>
					</div>
				</div>
				<div class="row" style="margin-top: 5%; text-align: center;">
					<div class="input-group-prepend">
							<span class="input-group-text" id="basic-addon3"> 학적상태 </span>
						</div>
					<div class="col-md-2" style="padding-left:0">
						<select class="custom-select">
							<option>입학</option>
						</select>
					</div>
					<div class="input-group-prepend">
							<span class="input-group-text" id="basic-addon3"> 입학년도 </span>
						</div>
					<div class="col-md-2" style="padding-left:0">
						<input type="text" id="datePicker" readonly class="form-control"
						value=>
					</div>
				</div>
			</div>
		</div>


<div class="screen2"
	style="width: 100%; height: auto%; background-color: ; padding-top: 40px;">
	<div class="col text-center">
		<button href="#" class="btn btn-primary mr-5" onClick="memberInsert()">추가</button> 
		<button href="#" class="btn btn-primary">취소</button>
	</div>
</div>
</div>
<script>
$(function(){
	'use strict';
	$('#datePicker').datepicker({
		format: "yyyy-mm",
		autoclose : true,
		orientation: "top auto ", 
		daysOfWeekDisabled : [0,6],
		templates : {
 	        leftArrow: '&laquo;',
	        rightArrow: '&raquo;'
	    },
		uiLibrary : 'bootstrap4'
	});
	
	
	var InsertSelectedOption01;
	var InsertSelectedOption02;
	var InsertSelectedOption03;
	
	
	$('#InsertSelect01').on('change', function(e){
	e.preventDefault();
	console.log($(this).find("option:selected").val());
	InsertSelectedOption01 = $(this).find("option:selected").val();
	InsertSelectedOption02 = $('#InsertSelect02').find("option:selected").val();
	InsertSelectedOption03 = $('#InsertSelect03').find("option:selected").val();
		$.ajax({
			type :'get',
			url:'/admin/getAdminInsertComboBox?CBX_COLLEGE_NAME='+InsertSelectedOption01,
			dataType:'html',
			success: function(data){
				$('#content').html(data).trigger("create");
		}
		});
		InsertSelectedOption01 = $(this).find("option:selected").val();
		InsertSelectedOption02 = $('#InsertSelect02').find("option:selected").val();
		InsertSelectedOption03 = $('#InsertSelect03').find("option:selected").val();
		
	});
	$('#InsertSelect02').on('change', function(e){
	e.preventDefault();
	console.log($(this).find("option:selected").val());
	InsertSelectedOption01 = $('#InsertSelect01').find("option:selected").val();
	InsertSelectedOption02 = $(this).find("option:selected").val();
	InsertSelectedOption03 = $('#InsertSelect03').find("option:selected").val();
	
	$.ajax({
		type :'get',
		url:'/admin/getAdminInsertComboBox?CBX_COLLEGE_NAME='+InsertSelectedOption01+"&"+"CBX_DEPT_NAME="+
				InsertSelectedOption02,
		dataType:'html',
		success: function(data){
			$('#content').html(data).trigger("create");
		}
		});
		InsertSelectedOption01 = $('#InsertSelect01').find("option:selected").val();
		InsertSelectedOption02 = $(this).find("option:selected").val();;
		InsertSelectedOption03 = $('#InsertSelect03').find("option:selected").val();
	});
	
	$('#InsertSelect03').on('change', function(e){
		e.preventDefault();
		console.log($(this).find("option:selected").val());
		InsertSelectedOption01 = $('#InsertSelect01').find("option:selected").val();
		InsertSelectedOption02 = $('#InsertSelect02').find("option:selected").val();
		InsertSelectedOption03 = $(this).find("option:selected").val();
		
	
	
	});
	
	function initClickEvent(){
		console.log('initClickEvent');
		
	}
});


</script>
<script src="./js/toggleAction.js"></script>
<!-- </div> -->
<!-- Page Content end -->