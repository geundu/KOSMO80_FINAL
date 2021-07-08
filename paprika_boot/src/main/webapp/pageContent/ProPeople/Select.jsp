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

out.print("collegeSize:" + cbxCollegeSize);
%>
<%=request.getParameter("CBX_COLLEGE_NAME")%>
<%=request.getParameter("CBX_DEPT_NAME")%>


<script>
console.log(cbxCollegeSize=<%=cbxCollegeSize   %>);
console.log(cbxDeptSize=<%=cbxDeptSize   %>);
console.log(cbxMajorSize=<%=cbxMajorSize   %>);
</script>
<!-- Page Content start -->
<!-- <div id="content" class="p-4 p-md-5"> -->
<nav class="navbar navbar-expand-lg navbar-light bg-light">
	<div class="container-fluid" style="float:left;">

		<button type="button" id="sidebarCollapse" class="btn btn-primary ">
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
							조회</li>
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
			style="width: 100%; height: auto%; text-align: center; background-color: E8EBEE; padding-bottom:4px;">
				<select class="custom-select" style="width: auto;" id="AdminSelectSelect01">
					<option selected>구분</option>
					<option>교직원</option>
					<option>학생</option>
				</select> 
				<%if(cbxDeptSize > 0){  %>
				<select class="custom-select form-control-sm" style="width: auto;" id="AdminSelectSelect03"
				value="<%=request.getParameter("CBX_COLLEGE_NAME")%>">>
				<% } else {%>
				<select class="custom-select" style="width:auto;" id="AdminSelectSelect02">
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
				
			<%if(cbxMajorSize > 0){  %>
<select class="custom-select" style="width:auto;" id="AdminSelectSelect03" value="<%=request.getParameter("CBX_DEPT_NAME")%>">
<% } else {%>
<select class="custom-select" style="width:auto;" id="adminSelectSelect03">
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
					<%
					if(cbxMajorSize > 0) {
					%>
						<select class="custom-select" style="width:auto;" id="AdminSelectSelect04" value="<%=request.getParameter("MAJOR") %>" >
					<%
					}
					else {
					%>
						<select class="custom-select" style="width:auto;" id="AdminSelectSelect04">
					<%
					}
					%>
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
				
				<select class="custom-select form-control-sm" style="width: auto;" id="AdminSelectSelect05">
					<option>재학</option>
					<option>휴학</option>
					<option>졸업</option>
					<option>재적</option>
					<option>재직</option>
					<option>퇴직</option>
				</select> 
				<select class="custom-select form-control-sm" style="width: auto;" id="AdminSelectSelect06">
					<option selected>입학년도</option>
					<option>2021</option>
					<option>2020</option>
					<option>2019</option>
					<option>2018</option>
					<option>2017</option>
					<option>2016</option>
					<option>2015</option>
					<option>2014</option>
					<option>2013</option>
				</select>
		</div>
		<div class="screen1.5"
			style="width: 100%; height: auto%; background-color: E8EBEE; text-align: center; padding-bottom:4px;">
			<div class="form-group-sm row col-xs-2" style="width: 100%; text-aline: center;">
				<span class="col-xs-2" style="text-aline: center; padding-left:25%;"> <input
					class="form-control "
					style="margin-right: 10px; text-aline: center;" type="text"
					placeholder="이름" aria-label="Search">

				</span> <span class="col-xs-2"> <input class="form-control  "
					style="margin-right: 10px;" type="text" placeholder="학번"
					aria-label="Search">
				</span>
				<button href="#" style="margin-right: 10px;"
					class="btn btn-primary ">검색</button>
			</div>
		</div>
		<div class="screen2"
			style="width: 100%; height: auto%; background-color: E8EBEE;">
		<table class="table table-bordered" id="adminSelectTable">
				<thead class="thead-team">
					<tr>
						<th scope="col">순번</th>
						<th scope="col">학생/교직원</th>
						<th scope="col">학번</th>
						<th scope="col">이름</th>
						<th scope="col">대학</th>
						<th scope="col">학부</th>
						<th scope="col">학과</th>
						<th scope="col">구분</th>
					</tr>
				</thead>
				<tbody class="text-center">
					<tr>
						<td>1</td>
						<td>학생</td>
						<td>201512135</td>
						<td>오세현</td>
						<td>인문대학</td>
						<td>외국어학부</td>
						<td>일어일문학</td>
						<td>재학</td>
					</tr>
				</tbody>
			</table>
		</div>
		<div class="screen3"
			style="width: 100%; height: auto%; background-color: E8EBEE;">
			<div class="container-fluid">
				<div class="row" style="text-align: center;">
					<div class="col-md-3">
						<img src="images/doge.png"
							style="width: 200px; height: 200px; margin-top: 5%;">
					</div>
					<div class="col-md-3">
						<div class="input-group mb-3" style="margin-top: 20%;">
							<div class="input-group-prepend">
								<span class="input-group-text" id="basic-addon3">이름</span>
							</div>
							<input type="text" class="form-control" readonly value=a
								id="A_STUDNET_NAME" aria-describedby="basic-addon3">
						</div>
					</div>
					<div class="col-md-3">
						<div class="input-group mb-3" style="margin-top: 20%;">
							<div class="input-group-prepend">
								<span class="input-group-text" id="basic-addon3">학번</span>
							</div>
							<input type="text" class="form-control" readonly value=a
								Id="A_STUDENT_NUMBER" aria-describedby="basic-addon3">
						</div>
					</div>
					<div class="col-md-3"></div>
				</div>
				<div class="row" style="margin-top: 2%; text-align: center;">
					<div class="col-md-3">
						<div class="input-group mb-3">
							<div class="input-group-prepend">
								<span class="input-group-text" id="basic-addon3">대학</span>
							</div>
							<input type="text" class="form-coDntrol" readonly value=a
								id="A_COL" aria-describedby="basic-addon3">
						</div>
					</div>
					<div class="col-md-3">
						<div class="input-group mb-3">
							<div class="input-group-prepend">
								<span class="input-group-text" id="basic-addon3">학부</span>
							</div>
							<input type="text" class="form-control" readonly value=a
								id="A_DEPT" aria-describedby="basic-addon3">
						</div>
					</div>
					<div class="col-md-3">
						<div class="input-group mb-3">
							<div class="input-group-prepend">
								<span class="input-group-text" id="basic-addon3">학과</span>
							</div>
							<input type="text" class="form-control" readonly value=a
								id="A_MAJOR" aria-describedby="basic-addon3">
						</div>
					</div>
					<div class="col-md-3">
						<div class="input-group mb-3">
							<div class="input-group-prepend">
								<span class="input-group-text" id="basic-addon3">구분</span>
							</div>
							<input type="text" class="form-control" readonly value=a
								id="A_STU_OR_PRO" aria-describedby="basic-addon3">
						</div>
					</div>
				</div>
				<div class="row" style="margin-top: 2%; text-align: center;">
					<div class="col-md-4">
						<div class="input-group mb-3">
							<div class="input-group-prepend">
								<span class="input-group-text" id="adminGetStatus">학적상태</span>
							</div>
							<input type="text" class="form-control" readonly value=a
								id="A_REG_STATUS" aria-describedby="basic-addon3">
						</div>
					</div>
					<div class="col-md-4">
						<div class="input-group mb-3">
							<div class="input-group-prepend">
								<span class="input-group-text" id="adminGetLastestReg">최근학적변동일자</span>
							</div>
							<input type="text" class="form-control" readonly value=a
								id="A_DATE_LASTEST_REG" aria-describedby="adminGetLastestReg">
						</div>
					</div>
					<div class="col-md-4">
						<div class="input-group mb-3">
							<div class="input-group-prepend">
								<span class="input-group-text" id="adminGetPassedGrade_Semester">최종 이수 학년
									및 학기</span>
							</div>
							<input type="text" class="form-control"
								readonly value=a id="A_PASSEDGRADE_SEMESTER"
								aria-describedby="adminGetPassedGrade_Semester">
						</div>
					</div>
				</div>
				<div class="row" style="margin-top: 2%; text-align: center;">
					<div class="col-md-3">
						<div class="input-group mb-3">
							<div class="input-group-prepend">
								<span class="input-group-text" id="basic-addon3">입학연도</span>
							</div>
							<input type="text" class="form-control" readonly value=a
								id="A_STUDENET_ENTER_YEAR" aria-describedby="basic-addon3">
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<script src="./js/toggleAction.js"></script>
<script>
	$(function(){
		'use strict';
		var $AdminSelectTable = $('#AdminSelectTable');
		$(document).ready(function () {
			 console.log('readyEvent');
			 initClickEvent();
		});
	var selectedOption01 = '구분';
	var selectedOption02;
	var selectedOption03;
	var selectedOption04;
	var selectedOption05 = '재학';
	var selectedOption06 = '입학년도';
	
	$('#AdminSelectSelect01').on('change', function(e){
		e.preventDefault();
		console.log($(this).find("option:selected").val());
		selectedOption01 = $(this).find("option:selected").val();
		selectedOption02 = $('#AdminSelectSelect02').find("option:selected").val();
		selectedOption03 = $('#AdminSelectSelect03').find("option:selected").val();
		selectedOption04 = $('#AdminSelectSelect04').find("option:selected").val();
		selectedOption05 = $('#AdminSelectSelect05').find("option:selected").val();
		selectedOption06 = $('#AdminSelectSelect06').find("option:selected").val();
	});
	
	$('#AdminSelectSelect02').on('change', function(e){
		e.preventDefault();
		console.log($(this).find("option:selected").val());

		selectedOption01 = $('#AdminSelectSelect01').find("option:selected").val();
		
		selectedOption02 = $(this).find("option:selected").val();
		selectedOption03 = $('#AdminSelectSelect03').find("option:selected").val();
		selectedOption04 = $('#AdminSelectSelect04').find("option:selected").val();
		selectedOption05 = $('#AdminSelectSelect05').find("option:selected").val();
		selectedOption06 = $('#AdminSelectSelect06').find("option:selected").val();
			$.ajax({
				type :'get',
				url:'/admin/getAdminComboBox?COLLEGE_NAME='+selectedOption02,
				dataType:'html',
				success: function(data){
					$('#content').html(data).trigger("create");
			}
			});
			selectedOption01 = $('#AdminSelectSelect01').find("option:selected").val();
			
			selectedOption02 = $(this).find("option:selected").val();
			selectedOption03 = $('#AdminSelectSelect03').find("option:selected").val();
			
			selectedOption04 = $('#AdminSelectSelect04').find("option:selected").val();
			selectedOption05 = $('#AdminSelectSelect05').find("option:selected").val();
			selectedOption06 = $('#AdminSelectSelect06').find("option:selected").val();
		});
	
	$('#AdminSelectSelect03').on('change', function(e){
		e.preventDefault();
		console.log($(this).find("option:selected").val());

		selectedOption01 = $('#AdminSelectSelect01').find("option:selected").val();
		selectedOption02 = $('#AdminSelectSelect02').find("option:selected").val();
		selectedOption03 = $(this).find("option:selected").val();
		selectedOption04 = $('#AdminSelectSelect04').find("option:selected").val();
		selectedOption05 = $('#AdminSelectSelect05').find("option:selected").val();
		selectedOption06 = $('#AdminSelectSelect06').find("option:selected").val();
			$.ajax({
				type :'get',
				url:'/admin/getAdminComboBox?COLLEGE_NAME='+selectedOption03,
				dataType:'html',
				success: function(data){
					$('#content').html(data).trigger("create");
			}
			});
			selectedOption01 = $('#AdminSelectSelect01').find("option:selected").val();
			
			selectedOption02 = $('#AdminSelectSelect02').find("option:selected").val();
			selectedOption03 = $(this).find("option:selected").val();
			
			selectedOption04 = $('#AdminSelectSelect04').find("option:selected").val();
			selectedOption05 = $('#AdminSelectSelect05').find("option:selected").val();
			selectedOption06 = $('#AdminSelectSelect06').find("option:selected").val();
		});
	
	$('#CourseSelect04').on('change', function(e){
		e.preventDefault();
		console.log($(this).find("option:selected").val());
		selectedOption01 = $('#AdminSelectSelect01').find("option:selected").val();
		selectedOption02 = $('#AdminSelectSelect02').find("option:selected").val();
		selectedOption03 = $('#AdminSelectSelect03').find("option:selected").val();
		selectedOption04 = $(this).find("option:selected").val();
		selectedOption05 = $('#AdminSelectSelect05').find("option:selected").val();
		selectedOption06 = $('#AdminSelectSelect06').find("option:selected").val();
		$.ajax({
			type :'get',
			url:'/curriculum/getOpenCourse?COLLEGE_NAME='+selectedOption03+'&'+'DEPT_NAME='+selectedOption04,
			dataType:'html',
			success: function(data){
				$('#content').html(data).trigger("create");
			}
			});
	});
		
		function initClickEvent(){
			console.log('initClickEvent');
			
			
			}
	});
</script>
<!-- </div> -->
<!-- Page Content end -->