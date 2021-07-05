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
	
	List<Map<String, Object>> cbBoxTuitionList = null;
	cbBoxTuitionList = (List<Map<String, Object>>) request.getAttribute("tuitionList");
	int sizeCbx = cbBoxTuitionList.size();
	
	String[] cbBoxTuitionListArr = new String[sizeCbx];
	
out.print("size:"+sizeCbx);
%>
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
						<li class="breadcrumb-item active" aria-current="page">등록금조회</li>
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
			style="width: 100%; height: auto%; text-align: center; background-color: E8EBEE;">
			<div class="btn-group" style="width: 800px;">
				<select class="custom-select" style="width: 800px;" id="TuitionSelect00">
					<option selected> 조회할 학기를 선택해주세요.</option>
					<%
					 for(int i =0; i<sizeCbx; i++){
						 Map<String, Object> rmap = cbBoxTuitionList.get(i);
						 cbBoxTuitionListArr[i] = String.valueOf(rmap.get("SEMESTER"));
					} 
					%>
					<%for(int i=0; i<sizeCbx; i++){ %>
						<option><%=cbBoxTuitionListArr[i]%></option>
					<%}	%>
					
					</select>
			</div>
			<button class=" btn-sm btn-primary">조회</button>
		</div>
		<div class="screen2"
			style="width: 100%; height: auto; background-color: E8EBEE;">
			<!-- <img id="TutionImage" src="images/money.jpg"  class="rounded mx-auto d-block" style="height: 100%;"> -->
			<table class="table table-bordered" id="TutionTable">
				<thead class="thead-team">
					<tr>
<!-- 						<th scope="col">년도-학기</th>
						<th scope="col">금액 내역</th> -->
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
	'use strict'
	var $TutionTable = $('#TutionTable');
	var selectedOption;
	$(document).ready(function () {
		console.log('readyEvent');
		initClickEvent();
	});
	
	function selectBox(){
		console.log('selectBox');
		$('#TuitionSelect00').on('change', function(e){
		e.preventDefault();
		console.log($(this).find("option:selected").val());
		selectedOption = $(this).find("option:selected").val();
		TutionTableInput();
		});
	}
	
	function TutionTableInput(){
		console.log('TutionTableInput');
		$TutionTable.bootstrapTable('destroy')
		$TutionTable.bootstrapTable({
			url:'/student/jsonGetTuitionHistory?STUDENT_NUMBER='+sid
				+'&SEMESTER='+selectedOption,
			columns: [{
				field:'SEMESTER',
				title:'년도-학기'
			}, {
				field:'TUITION_FEE',
				title:'금액 내역 '
			}, {
				field:'TUITION_CONTENT',
				title:'비고란'
			}]
		});
		return false;
	}

		
	function initClickEvent(){
		console.log('initClickEvent');
		$('#TuitionSelect00').unbind('click').bind('click',selectBox());
	}
});

</script>


<!-- </div> -->
<!-- Page Content end -->