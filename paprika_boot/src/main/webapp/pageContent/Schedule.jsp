<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%
request.setCharacterEncoding("utf-8");

StringBuilder path = new StringBuilder(request.getContextPath());
path.append("/");
List<Map<String, Object>> scheduleList = null;
List<Map<String, Object>> memoList = null;
scheduleList = (List<Map<String, Object>>) request.getAttribute("scheduleList");
memoList =(List<Map<String, Object>>) request.getAttribute("memoList");

int size1 = 0;
int size2 = 0;

if (scheduleList != null) {
	size1 = scheduleList.size();

	for (int i = 0; i < size1; i++) {
		Map<String, Object> rmap = scheduleList.get(i);
	}
}

if (memoList != null) {
	size2 = memoList.size();

	for (int i = 0; i < size2; i++) {
		Map<String, Object> tmap = memoList.get(i);
	}
}
%>
<button type="button" id="logout" onclick="logout()" class="btn btn-primary mr-1" style="margin-left: 0.2em; font-size:12px; width: 100px; height: auto; text-align: center;">logout</button>

<!-- Page Content start -->
<!-- <div id="content" class="p-4 p-md-5">  -->
<nav class="navbar navbar-expand-lg navbar-light bg-light">
	<div class="container-fluid" stlye="float:left;">

		<button type="button" id="sidebarCollapse" class="btn btn-primary">
			<i class="fa fa-bars"></i> <span class="sr-only">토글 버튼 위치(글씨출력 x)</span>
		</button>

		<button class="btn btn-dark d-inline-block d-lg-none ml-auto" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
			<i class="fa fa-bars"></i>
		</button>
		<!-- Page Content Header Start -->
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="nav navbar-nav">
				<!-- 현재보고있는 nav item은 calss active를 줄것. -->
				<nav aria-label="breadcrumb">
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a onClick="window.location.reload()">Pprk.Main()</a></li>
					</ol>

				</nav>
		</div>
		<!-- Page Content Header end -->
	</div>
</nav>
<!-- screen1 시간표 -->
<div class="d-flex justify-content-center">
	<div class="row">
<!-- 		<div class="" style="height: auto%; background-color:; text-align: center;">
			<h2>강의 시간표</h2>
				<table class="table table-bordered" Border="1" Cellpadding="5" Cellspacing="5" id="timetable">
			<thead class="thead-team">
				<tr>
					<th>/</th>
					<th>월</th>
					<th>화</th>
					<th>수</th>
					<th>목</th>
					<th>금</th>
				<tr>
			</thead>
			<tbody>
				<TR>
					<th>1교시</th>
					<td><div class='className'></div></td>
					<td><div class='className'></div></td>
					<td><div class='className'></div></td>
					<td><div class='className'></div></td>
					<td><div class='className'></div></td>
				</TR>
				<TR>
					<th>2교시</th>
					<td><div class='className'></div></td>
					<td><div class='className'></div></td>
					<td><div class='className'></div></td>
					<td><div class='className'></div></td>
					<td><div class='className'></div></td>
				</TR>
				<TR>
					<th>3교시</th>
					<td><div class='className'></div></td>
					<td><div class='className'></div></td>
					<td><div class='className'></div></td>
					<td><div class='className'></div></td>
					<td><div class='className'></div></td>
				</TR>
				<TR>
					<th>4교시</th>
					<td><div class='className'></div></td>
					<td><div class='className'></div></td>
					<td><div class='className'></div></td>
					<td><div class='className'></div></td>
					<td><div class='className'></div></td>
				</TR>
				<TR>
					<th>5교시</th>
					<td><div class='className'></div></td>
					<td><div class='className'></div></td>
					<td><div class='className'></div></td>
					<td><div class='className'></div></td>
					<td><div class='className'></div></td>
				</TR>
				<TR>
					<th>6교시</th>
					<td><div class='className'></div></td>
					<td><div class='className'></div></td>
					<td><div class='className'></div></td>
					<td><div class='className'></div></td>
					<td><div class='className'></div></td>
				</TR>
				<TR>
					<th>7교시</th>
					<td><div class='className'></div></td>
					<td><div class='className'></div></td>
					<td><div class='className'></div></td>
					<td><div class='className'></div></td>
					<td><div class='className'></div></td>
				</TR>
				<TR>
					<th>8교시</th>
					<td><div class='className'></div></td>
					<td><div class='className'></div></td>
					<td><div class='className'></div></td>
					<td><div class='className'></div></td>
					<td><div class='className'></div></td>
				</TR>
				<TR>
					<th>9교시</th>
					<td><div class='className'></div></td>
					<td><div class='className'></div></td>
					<td><div class='className'></div></td>
					<td><div class='className'></div></td>
					<td><div class='className'></div></td>
				</TR>
				<TR>
					<th>10교시</th>
					<td><div class='className'></div></td>
					<td><div class='className'></div></td>
					<td><div class='className'></div></td>
					<td><div class='className'></div></td>
					<td><div class='className'></div></td>
				</TR>
			</tbody>
		</TABLE>
		</div> -->

		<!--오른쪽 메인프레임 시작-->
		<div class="" style="height: auto%; width: auto%; background-color:; text-align: center;">
			<h3>메모장</h3>
			<div class="form-group" style="width: 600px;">
				<textarea class="form-control" id="notePadForm" rows="20" placeholder="메모할 내용을 입력해주세요">
				<%=memoList.get(0).get("MEMO") %>
				</textarea>
			</div>
		</div>
	</div>
</div>
	<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery-cookie/1.4.1/jquery.cookie.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="https://unpkg.com/bootstrap-table@1.18.3/dist/bootstrap-table.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap-select@1.13.14/dist/js/bootstrap-select.min.js"></script>
	<script src="js/bootstrap-datepicker.js"></script>
	<script src='https://cdn.jsdelivr.net/npm/fullcalendar@5.8.0/main.min.js'></script>

<script type="text/javascript">

/* https://m.blog.naver.com/PostView.naver?isHttpsRedirect=true&blogId=newyorkinms&logNo=220773010011 참고했음 아직 수정 필요 */
		window.onload = function() { //initTable();
			//$('#timetable > tbody > tr:eq(0) > td:eq(0)').css('background','#eeeeee') 
			// $('#timetable > tbody > tr:eq(0) > td:eq(0)').attr('rowspan',4); 
			// $('#timetable > tbody > tr:eq(1) > td:eq(0)').hide(); 
			// $('#timetable > tbody > tr:eq(2) > td:eq(0)').hide(); 
			//$('#timetable > tbody > tr:eq(3) > td:eq(0)').hide();
			$('#timetable').hide();
	<%for (int i = 0; i < size1; i++) {
	Map<String, Object> rmap = scheduleList.get(i);
	int start_time = Integer.parseInt(rmap.get("COURSE_BEGIN_TIME").toString());
	int end_time = Integer.parseInt(rmap.get("COURSE_END_TIME").toString());
	int num = (end_time - start_time) + 1;

	String MON = String.valueOf(rmap.get("MON"));
	String TUE = String.valueOf(rmap.get("TUE"));
	String WEN = String.valueOf(rmap.get("WEN"));
	String THU = String.valueOf(rmap.get("THU"));
	String FRI = String.valueOf(rmap.get("FRI"));%>
		setRowspan(<%=start_time-1%>, 0, <%=num%>, "<%=MON%>");
		setRowspan(<%=start_time-1%>, 1, <%=num%>, "<%=TUE%>");
		setRowspan(<%=start_time-1%>, 2, <%=num%>, "<%=WEN%>");
		setRowspan(<%=start_time-1%>, 3, <%=num%>, "<%=THU%>");
		setRowspan(<%=start_time-1%>, 4, <%=num%>, "<%=FRI%>");
	<%}%>
		/* setRowspan(6, 2, 4, '자료구조2'); */
			$('#timetable').show();
		} //행 , 열 , span 값 , 클래스명 
		function setRowspan(rowIndex, colIndex, spanValue, className) {
			$(
					'#timetable > tbody > tr:eq(' + rowIndex + ') > td:eq('	+ colIndex + ')').attr('rowspan', spanValue);
			$(
					'#timetable > tbody > tr:eq(' + rowIndex + ') > td:eq('	+ colIndex + ') > .className').html(className);
			for (i = 1; i < spanValue; i++) {
				let tempIndex = rowIndex + i;
				//alert(tempIndex) 
				$(
						'#timetable > tbody > tr:eq(' + tempIndex + ') > td:eq(' + colIndex + ')').hide();
			}
		};
		
		var oldVal;
		/* $("#notePadForm").on("propertychange change keyup paste input", function() { */
		$("#notePadForm").on("focusout", function() {
		var currentVal = $(this).val();
		if(currentVal == oldVal) {
			return;
		}
		oldVal = currentVal;
		$.ajax({
			type : 'get',
			url : '/schedule/updateMemo?STUDENT_NUMBER='+sid+'&MEMO='+$("#notePadForm").val(),
			dataType : 'html',
			success : function(data){
				$content.html(data).trigger("create");
				}
			})
		console.log("change alert")
		});
		
	</script>
<!-- Page Content end -->