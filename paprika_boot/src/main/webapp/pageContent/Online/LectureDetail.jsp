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
List<Map<String, Object>> lectureDetailList = null;
lectureDetailList = (List<Map<String, Object>>) request.getAttribute("lectureDetail");
int lectureDetailSize = 0;
Map<String, Object> rmap = new HashMap<>();
if (lectureDetailList != null) {
	lectureDetailSize = lectureDetailList.size();
	for (int i = 0; i < lectureDetailSize; i++) {
		rmap = lectureDetailList.get(i);
	}
}
out.print("lectureDetailSize:" + lectureDetailSize);
%>
<script>
	console.log(
<%=lectureDetailSize%>
	);
</script>

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
						<li class="breadcrumb-item"><a onClick="window.location.reload()" style="color:'white'">DashBoard(강좌) in 'e-Learning'</a></li>
						<li class="breadcrumb-item"><a onClick="window.location.reload()" style="color:'white'">강의목록</a></li>
						<li class="breadcrumb-item active" aria-current="page" style="color: #5BB04F" >강좌시청</li>
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
			style="width: 100%; height: auto%; background-color: ;">
			<h3 style="text-align:center;">강의<%=rmap.get("COURSE_NAME")%>-<%=rmap.get("ONLINE_LECTURE_TITLE") %></h3>
			<div class="col text-center" style="padding-bottom:10px;">
				<button class="btn  btn-primary mr-5" onClick="feedbackClickEvent()">피드백보내기</button>
			</div>
		</div>
		<div class="screen2"
			style="width: 100%; height: 80%; background-color: ;">
			<div class="col text-center">
				<iframe width="854" height="480"
					src="https://www.youtube.com/embed/RD0OOKdUJTw" frameborder="0"
					allowfullscreen=""></iframe>
			</div>
		</div>
		<div class="screen2"
			style="width: 100%; height: 10%; background-color: ;">
			<div class="col text-center">
				<!-- <a href="#" button type="button" class="btn  btn-primary mr-5">파일 첨부</a> -->
				<div class="custom-file" style="width: 500px;">
					<input type="file" class="custom-file-input" id="customFile">
					<!-- 파일첨부 -->
					<label class="custom-file-label" for="customFile">첨부 파일</label>
				</div>
				<button class="btn btn-primary " style="margin-left:5px;">과제 제출</button>
			</div>
		</div>
	</div>
</div>
<script>
	function feedbackClickEvent(){
		
	}
</script>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script src="js/toggleAction.js"></script>
<!--06/19  인터넷 강의 - 강좌 조회 끝-->
<!-- </div> -->
<!-- Page Content end -->