<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("utf-8");
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
							href="http://localhost:9010/project/frameForm.jsp">Pprk.Main()</a></li>
						<li class="breadcrumb-item active" aria-current="page">관리자-e-Learning</li>
						<li class="breadcrumb-item active" aria-current="page">Dashboard</li>
						<li class="breadcrumb-item active" aria-current="page">강좌조회</li>
						<li class="breadcrumb-item active" aria-current="page">강의등록</li>
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
			style="width: 100%; height: auto%; background-color:;">
			<div style="text-align: center; padding-bottom:20px;">
			
				<input type="text" class="form-control" placeholder="강의 제목을 입력해주세요"
				id="class_name" aria-describedby="basic-addon3"
				style=""></input>
				
			</div>
		</div>
		<div class="screen2"
			style="width: 100%; height: auto%; background-color:;">
			<div class="col text-center">
				<iframe width="854" height="480"
					src="https://www.youtube.com/embed/RD0OOKdUJTw" frameborder="0"
					allowfullscreen=""></iframe>
			</div>
		</div>
		<div class="screen3"
			style="width: 100%; height: 10%; background-color:;">
			<div class="col text-center">
				<!-- <a href="#" button type="button" class="btn  btn-primary mr-5">파일 첨부</a> -->
				<div class="custom-file" style="width: 500px;">
					<input type="file" class="custom-file-input" id="customFile">

					<label class="custom-file-label" for="customFile"> 영상 </label>
				</div>
			</div>
		</div>
		<div class="screen4"
			style="width: 100%; height: auto%; background-color:;">
			<div class="col text-center">
				<a href="#" button type="button" class="btn btn-primary mr-5">강의
					등록</a>
			</div>
		</div>
	</div>
</div>

<script type="text/javascript">
    $(window).resize(function () { resizeYoutube(); });
    $(function () { resizeYoutube(); });
    function resizeYoutube() { $("iframe").each(function () { if (/^https?:\/\/www.youtube.com\/embed\
    		//g.test($(this).attr("src"))) { $(this).css("width", "100%"); $(this).css("height", Math.ceil(parseInt($(this).css("width")) * 480 / 854) + "px"); } }); }
  </script>

<script>
    // Add the following code if you want the name of the file appear on select
    $(".custom-file-input").on("change", function () {
      var fileName = $(this).val().split("\\").pop();
      $(this).siblings(".custom-file-label").addClass("selected").html(fileName);
    });
  </script>
<script src="./js/toggleAction.js"></script>
<!-- </div> -->
<!-- Page Content end -->