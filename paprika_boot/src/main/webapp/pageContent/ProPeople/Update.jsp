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
List<Map<String, Object>> updateList = null;
updateList = (List<Map<String, Object>>) request.getAttribute("updateList");
int updateListSize = 0;
Map<String, Object> rmap = new HashMap<>();
if (updateList != null) {
	updateListSize = updateList.size();
	for (int i = 0; i < updateListSize; i++) {
		rmap = updateList.get(i);
	}
}
%>
<!-- Page Content start -->
<!-- <div id="content" class="p-4 p-md-5"> -->
<button type="button" id="logout" onclick="logout()" class="btn btn-primary mr-1" style="margin-left: 0.2em; font-size:12px; width: 100px; height: auto; text-align: center;">logout</button>
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
							수정</li>
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
							<span class="input-group-text" id="basic-addon3">이름</span>
						</div>
						<input type="text" class="form-control" value=<%=rmap.get("STUDENT_NAME")%>
							id="STUDENT_NAME" aria-describedby="basic-addon3">
					</div>
					</div>
					<div class="col-md-3">
						<div class="input-group "
						style="margin-top: 20%; padding-left: 10%;">
						<div class="input-group-prepend">
							<span class="input-group-text" id="basic-addon3">학번</span>
						</div>
						<input type="text" class="form-control" value=<%=rmap.get("STUDENT_NUMBER")%>
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
							<span class="input-group-text" id="basic-addon3">학부</span>
						</div>
					<div class="col-md-2" style="padding-left:0">
						<select class="custom-select">
							<option><%=rmap.get("DEPT_NAME") %></option>	
							<option>외국어학부</option>
							<option>건축학부</option>
							<option>예체능부</option>
						</select>
					</div>
					<div class="input-group-prepend">
							<span class="input-group-text" id="basic-addon3">학과</span>
						</div>
					<div class="col-md-2" style="padding-left:0">
						<select class="custom-select">
							<option><%=rmap.get("MAJOR_NAME") %></option>
							<option>일어일문학</option>
							<option>컴퓨터공학</option>
							<option>기계공학</option>
						</select>
					</div>
						<div class="input-group-prepend">
							<span class="input-group-text" id="basic-addon3">구분</span>
						</div>
					<div class="col-md-2" style="padding-left:0">
						<select class="custom-select">
						<%if(rmap.get("STU_OR_PRO").equals("학생")){ %>
							<option>학생</option>
							<option>교직원</option>
							<%}else{ %>
							<option>교직원</option>
							<option>학생</option>
							<%} %>
						</select>
					</div>
				</div>
				<div class="row" style="margin-top: 5%; text-align: center;">
					<div class="input-group-prepend">
							<span class="input-group-text" id="basic-addon3">학적상태</span>
						</div>
					<div class="col-md-2" style="padding-left:0">
						<select class="custom-select">
						<%if(rmap.get("REG_STATUS").equals("재학")){ %>
							<option>&nbsp;재학</option>
							<option>&nbsp;휴학</option>
							<option>&nbsp;졸업</option>
							<%}else if(rmap.get("REG_STATUS").equals("휴학")){ %>
							<option>&nbsp;휴학</option>
							<option>&nbsp;재학</option>
							<option>&nbsp;졸업</option>
							<%}else if(rmap.get("REG_STATUS").equals("졸업")) { %>
							<option>&nbsp;졸업</option>
							<option>&nbsp;재학</option>
							<option>&nbsp;휴학</option>
							<%} %>
						</select>
					</div>
					<div class="input-group-prepend">
							<span class="input-group-text" id="basic-addon3">입교날짜</span>
						</div>
					<div class="col-md-2" style="padding-left:0">
						<input type="text" id="datePicker" readonly class="form-control"
						value=<%=rmap.get("STUDENT_ENTER_YEAR")%>>
					</div>
				</div>
			</div>
		</div>

		<div class="screen2"
			style="width: 70%; height: 100%; float: left; background-color:; padding-top: 40px;">
			<div class="col text-center">
				<button href="#" class="btn btn-primary mr-5">수정</button>
				<button href="#" class="btn btn-primary">취소</button>
			</div>
		</div>
		<div class="screen3"
			style="width: 30%; height: auto%; float: right; background-color: #FF602A;">
			<h5 style="color: #ffffff;">정보 삭제의 경우 정보 보호법에 따라 지원하지 않습니다. 퇴직 ,
				졸업 후 5년간 보관후 자동삭제됩니다.</h5>
		</div>
	</div>
</div>
<script>
$(function(){
	$('#datePicker').datepicker({
		format: "yyyy년 mm월",
		autoclose : true,
		orientation: "top auto ", 
		daysOfWeekDisabled : [0,6],
		templates : {
 	        leftArrow: '&laquo;',
	        rightArrow: '&raquo;'
	    },
		uiLibrary : 'bootstrap4'
	});
});
</script>
<script src="./js/toggleAction.js"></script>
<!-- </div> -->
<!-- Page Content end -->