<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
request.setCharacterEncoding("utf-8");
request.getAttribute("studentList");
String sid = String.valueOf(session.getAttribute("STUDENT_NUMBER"));
%>
<!DOCTYPE html>
<html>
<head>
<title>Pprk. 학사관리.</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900" rel="stylesheet">

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/bootstrap-datepicker.css">
<link rel="stylesheet" href="https://unpkg.com/bootstrap-table@1.18.3/dist/bootstrap-table.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-select@1.13.14/dist/css/bootstrap-select.min.css">
<link href='https://cdn.jsdelivr.net/npm/fullcalendar@5.8.0/main.min.css' rel='stylesheet' />


</head>
<body>
	<!-- main frame wrapper 시작 -->
	<div class="wrapper d-flex align-items-stretch justify-content-center">
		<!-- leftNavSdeBar.jsp include -->
		<%@ include file="leftNavSideBar.jsp"%>
		<!-- pageContent.jsp include -->
		<div id="content" class="p-1 p-md-1">
			<!-- if문을 쓰고 , 최상단에 request,getparam(/?) 메뉴마다 쿼리스트링을 주고 . if문 써가지고 jsp action 태그를 넣고 ajax를 들어내고 .   -->
			<c:import url='/schedule/getMemo?STUDENT_NUMBER=15521091'/>
			<!-- 현재 쓴게 include action 태그인데 이떄는 부모창에서 선언된 값들이 왔다갔다 하지 못하니 directive include를 써야 변수를 범용적으로 global하게 쓸 수 있다.  -->
		</div>
	</div>
	<!-- main frame wrapper end -->
	<!-- <script src="js/jquery.min.js"></script> -->
	<%@ include file="Factory.jsp"%>
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery-cookie/1.4.1/jquery.cookie.min.js"></script>
	<script src="js/toggleAction.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="https://unpkg.com/bootstrap-table@1.18.3/dist/bootstrap-table.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap-select@1.13.14/dist/js/bootstrap-select.min.js"></script>
	<script src="js/bootstrap-datepicker.js"></script>
	<script src='https://cdn.jsdelivr.net/npm/fullcalendar@5.8.0/main.min.js'></script>

	

</body>
</html>