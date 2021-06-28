<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<title>Pprk. 학사관리.</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link
	href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900"
	rel="stylesheet">

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="css/style.css">
</head>
<body>
	<!-- main frame wrapper 시작 -->
	<div class="wrapper d-flex align-items-stretch justify-content-center">

		<!-- leftNavSdeBar.jsp include -->
		<jsp:include page="leftNavSideBar.jsp"></jsp:include>

		<!-- pageContent.jsp include -->
		<div id="content" class="p-1 p-md-1">
		
			<jsp:include page="pageContent/Schedule.jsp"></jsp:include>
			
		</div>
	</div>

	<!-- main frame wrapper end -->

	<!-- <script src="js/jquery.min.js"></script> -->
	<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/popper.js"></script>
	<!-- <script type="module" src="js/main.js"></script> -->
	<!-- <script src="js/toggleAction.js"></script>  -->
	<script src="js/jspInclude.js"></script>
	<script src="js/menuTemplate.js"></script>
        <script src="https://unpkg.com/gijgo@1.9.13/js/gijgo.min.js" type="text/javascript"></script>
  <link href="https://unpkg.com/gijgo@1.9.13/css/gijgo.min.css" rel="stylesheet" type="text/css" />
</body>
</html>