<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="http://java.sun.com/jsp/jstl/sql"%>
<%
request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>

<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>Pprk Login Page</title>
<link rel="stylesheet" type="text/css" href="css/my-login.css">
<link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900" rel="stylesheet">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script type="text/javascript">



</script>
</head>
<h1 class="block-effect" style="--td: 1.2s">
	<div class="block-reveal" style="--bc: #5BB150; --d: .1s; color: #FFFCFB;">Pprk.</div>
	<div class="block-reveal" style="--bc: #5BB150; --d: .5s; color: #FFFCFB;">Univ Portal System</div>
</h1>
<body class="my-login-page">
	<div class="wrapper">
		<form name="loginForm" class="login" action="/member/signIn" method="post">
			<p class="title">Pprk. Login</p>
			<input type="text" placeholder="ID(학번)" id="id" name="p_student_number" autofocus />
			<i class="fa fa-user"></i>
			<input type="password" placeholder="Password(비밀번호)" id="password" name="p_student_pw" />
			<i class="fa fa-key"></i>
			<a href="">비밀번호를 잊으셨나요?</a>
			<br>
			<button id="btn_login">
				<i class="spinner"></i> <span class="state">Log in</span>
			</button>
		</form>
		<footer>
			<a target="blank" href="https://github.com/geundu/KOSMO80_FINAL/">Copyright@2021 TEAM Pprk</a>
		</footer>
	</div>
	<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
	<script src="js/jspInclude.js"></script>
	<script src="js/my-login.js"></script>
</body>
</html>
