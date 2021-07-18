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
List<Map<String, Object>> selectTableList = null;
/* SelectTableList = (List<Map<String, Object>) reaquet.getAttribute(""); */
cbxMapList = (Map<String, List<Map<String, Object>>>) request.getAttribute("cbxMapList");
selectTableList = (List<Map<String, Object>>) request.getAttribute("memberList");


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
if (selectTableList !=null){
	selectTableSize = selectTableList.size();
	String[] selectTableArr = new String[selectTableSize];
}
String[] cbxCollegeArr = new String[cbxCollegeSize];
String[] cbxDeptArr = new String[cbxDeptSize];
String[] cbxMajorArr = new String[cbxMajorSize];
String[] selectTableArr = new String[selectTableSize];

%>
				<% 
				List<Map<String, Object>> memberDetail=
				(List<Map<String, Object>>)request.getAttribute("memberDetail");
				Map<String,Object> zmap = new HashMap<>();
				if(memberDetail!=null){
				zmap = memberDetail.get(0);
				}
				%>

<script>
console.log(cbxCollegeSize=<%=cbxCollegeSize   %>);
console.log(cbxDeptSize=<%=cbxDeptSize   %>);
console.log(cbxMajorSize=<%=cbxMajorSize   %>);
</script>
<button type="button" id="logout" onclick="logout()" class="btn btn-primary mr-1" style="margin-left: 0.2em; font-size:12px; width: 100px; height: auto; text-align: center;">logout</button>
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
					<option>교수</option>
					<option>학생</option>
				</select> 
				<%if(cbxDeptSize > 0){  %>
				<select class="custom-select form-control-sm" style="width: auto;" id="AdminSelectSelect02"
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
<select class="custom-select" style="width:auto;" id="AdminSelectSelect03" value="<%=request.getParameter("DEPT_NAME")%>">
<% } else {%>
<select class="custom-select" style="width:auto;" id="AdminSelectSelect03">
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
					<option>전체</option>
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
					placeholder="이름" aria-label="Search" id="selectName">

				</span> <span class="col-xs-2"> <input class="form-control  "
					style="margin-right: 10px;" type="text" placeholder="학번"
					aria-label="Search" id="selectNumber">
				</span>
				<button href="#" style="margin-right: 10px;"
					class="btn btn-primary " id="adminSelectSearchButton">검색</button>
			</div>
		</div>
		<div class="screen2"
			style="width: 100%; height: auto%; background-color: E8EBEE;">
			<%
			if(selectTableSize!=0){ 
				
			%>
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
				<%
				for(int i =0 ; i<selectTableSize ;i++){
					Map<String, Object> tmap = selectTableList.get(i);
				%>
					<tr id="select_table<%=i%>">
					<%
					selectTableArr[i] = String.valueOf(tmap.get("STU_NO"));
					%>
						<td><%=tmap.get("ORDERNUM") %></td>
						<td><%=tmap.get("STU_OR_PRO") %></td>
						<td><%=tmap.get("STU_NO") %></td>
						<td><%=tmap.get("STU_NAME") %></td>
						<td><%=tmap.get("STU_COL") %></td>
						<td><%=tmap.get("STU_DEPT") %></td>
						<td><%=tmap.get("STU_MAJOR") %></td>
						<td><%=tmap.get("STU_REGNAME") %></td>
					</tr>
					<%} %>
				</tbody>
			</table>
			<%} %>
		</div>
		<div class ="modal fade" id="selectModalXl" aria-labelledby="modalXl">
		<div class="screen3 modal-dialog modal-xl"
			style="width: 100%; height: auto%; background-color: E8EBEE;">
			<div class="container-fluid ">
				<div class="row" style="text-align: center;">
					<div class="col-md-3">
						<img id="A_STUDENT_PIC" src="images/doge.png"
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
		<div class="screen2"
	style="width: 100%; height: auto%; background-color: ; padding-top: 40px;">
	<div class="col text-center">
		<button href="#" id="proUpdateButton" class="btn btn-primary">상세내역 수정</button>
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
		var handleData;
		$(document).ready(function () {
			 console.log('readyEvent');
			 initClickEvent();
			 
		});
		
		
		<%for (int i = 0 ; i< selectTableSize; i++){%>
		let selectTable<%=i%> ='<%=selectTableArr[i]%>';
		
		
		function onClickRow_SelectTable<%=i%>(e){
			console.log('onClickRow_SelectTable'+<%=i%>);
			e.preventDefault();
			$.ajax({
				type: "get",
				url : '/admin/jsonGetMemberDetail?STUDENT_NUMBER='+<%=selectTableArr[i]%>
			+"&STU_OR_PRO="+'학생',
			dataType : 'json',
			data : 'json',
			success : function(data) {
				if(!(data[0]["PASSEDSEMESTER"])){
					var semester = '신입생'
				}else{
					semester = data[0]["PASSEDGRADE"]+"학년"+data[0]["PASSEDSEMESTER"]+"학기"
				}	
				$("#A_STUDNET_NAME").val(data[0]["STUDENT_NAME"]);
				$("#A_STUDENT_NUMBER").val(data[0]["STUDENT_NUMBER"]);
				$("#A_COL").val(data[0]["COLLEGE_NAME"]);
				$("#A_DEPT").val(data[0]["DEPT_NAME"]);
				$("#A_MAJOR").val(data[0]["MAJOR_NAME"]);
				$("#A_STU_OR_PRO").val(data[0]["STU_OR_PRO"]);
				$("#A_REG_STATUS").val(data[0]["REG_STATUS"]);
				$("#A_DATE_LASTEST_REG").val(data[0]["DATE_LASTEST_REG"]);
				$("#A_PASSEDGRADE_SEMESTER").val(semester);
				$("#A_STUDENET_ENTER_YEAR").val(data[0]["STUDENT_ENTER_YEAR"]+'년도');
				$('#selectModalXl').modal('show');
			}
		});
		return false;
		}
		
		
		<%}%>
		function proUpdateButtonClick(e) {
			console.log('proUpdateButton');
			/* handleData = {"STUDENT_NUMBER":$(A_STUDENT_NUMBER).val(),} */
			$.ajax({
				type : 'get',
				url : '/admin/memberUpdatePage?STUDENT_NUMBER='+$("#A_STUDENT_NUMBER").val()+"&"
						+"STUDENT_NAME="+$("#A_STUDNET_NAME").val()+"&"+"DEPT_NAME="+$("#A_DEPT").val()
						+"&"+"MAJOR_NAME="+$("#A_MAJOR").val()+"&"+"STU_OR_PRO="+$("#A_STU_OR_PRO").val()
						+"&"+"REG_STATUS="+$("#A_REG_STATUS").val()
						+"&"+"STUDENT_ENTER_YEAR="+$("#A_STUDENET_ENTER_YEAR").val(),
						
				/* url:'pageContent/ProPeople/Update.jsp', */
				/* data : handleData, */
				dataType : 'html',
				success : function(data) { 
					$('#selectModalXl').removeClass("show");
					$(".modal-backdrop").remove();
					$('#selectModalXl').modal('hide');
					$content.html(data).trigger("create");
				}
			});
			return false;
		}
		
	    function AdminSelectSearchButtonClick(){
		selectedOption02 = '<%=request.getParameter("CBX_COLLEGE_NAME")%>'
		console.log('AdminSelectSearchButtonClick');
		if(!selectedOption01||selectedOption01==='구분'){selectedOption01='전체';}
		if(!selectedOption02){selectedOption02='전체';}
		if(!selectedOption03){selectedOption03='학부';}
		if(!selectedOption04){selectedOption04='학과';}
		if(!selectedOption05){selectedOption05='전체';}
		if(!selectedOption06||selectedOption06==="입학년도"){selectedOption06='0';}
		if(!selectNumber){selectNumber='0';}
		if(!selectName){selectName='전체';}
		
		if(selectedOption03!=='학부'){selectedOption02=selectedOption03;}
		if(selectedOption04!=='학과'){selectedOption02=selectedOption04;}	
		
		console.log("검색옵션은 "+selectedOption01+" / "+selectedOption02+" / "+selectedOption03+" / "
				+selectedOption04+" / "+selectedOption05+" / "+selectedOption06+" / "+selectNumber+" / "
				+selectName)
				
		$.ajax({
			type : 'get',
			url : '/admin/getMemberList?PROFESSOR_OR_STUDENT='+selectedOption01+'&COL='+selectedOption02+'&STATUS='
			+selectedOption05+'&YEAR='+selectedOption06+'&NUMBER='+selectNumber+'&NAME='+selectName,
			dataType : 'html',
			success : function(data){
				$content.html(data).trigger("create");
			}
		});
		return false;
	}
	    
	let selectedOption01 = '구분';
	var selectedOption02;
	var selectedOption03;
	var selectedOption04;
	let selectedOption05 = '재학';
	let selectedOption06 = '입학년도';
	var selectName = $('#selectName').val();
	var selectNumber = $('#selectNumber').val();
	

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
				url:'/admin/getAdminComboBox?CBX_COLLEGE_NAME='+selectedOption02,
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
				url:'/admin/getAdminComboBox?CBX_COLLEGE_NAME='+selectedOption02+'&CBX_DEPT_NAME='+selectedOption03,
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
			url:'/curriculum/getOpenCourse?CBX_COLLEGE_NAME='+selectedOption03+'&'+'CBX_DEPT_NAME='+selectedOption04,
			dataType:'html',
			success: function(data){
				$('#content').html(data).trigger("create");
			}
			});
	});
	
		function initClickEvent(){
			console.log('initClickEvent');
			 $('#adminSelectSearchButton').click(AdminSelectSearchButtonClick);
			 $('#proUpdateButton').click(proUpdateButtonClick);
			 <%for (int i = 0 ; i < selectTableSize ; i++){%>
				 $('#select_table<%=i%>').click(onClickRow_SelectTable<%=i%>);
			 <%}%>
			
			
			}
	});
</script>
<!-- </div> -->
<!-- Page Content end -->