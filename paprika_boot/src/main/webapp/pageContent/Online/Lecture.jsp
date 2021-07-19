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

List<Map<String, Object>> lectureList = null;
lectureList = (List<Map<String, Object>>) request.getAttribute("lectureList");
int lectureListSize = 0;
Map<String,Object> rmap = new HashMap<>();

if (lectureList != null) {
	lectureListSize = lectureList.size();
	for(int i=0;i<lectureListSize;i++){
    rmap = lectureList.get(i);
	}
}
%>
<button type="button" id="logout" onclick="logout()" class="btn btn-primary mr-1" style="margin-left: 0.2em; font-size:12px; width: 100px; height: auto; text-align: center;">logout</button>
<!-- Page Content start -->
<!-- <div id="content" class="p-4 p-md-5"> -->
<nav class="navbar navbar-expand-lg navbar-light bg-light">
	<div class="container-fluid" stlye="float:left;">

		<button type="button" id="sidebarCollapse" class="btn btn-primary">
			<i class="fa fa-bars"></i> <span class="sr-only">토글 버튼
				위치(글씨출력x) </span>
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
						<li class="breadcrumb-item active aria-current="page" style="color: #5BB04F" "><a onClick="window.location.reload()" style="color:'white'">강의목록</a></li>
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
<!-- 밑부터 메인 프레임 속 내용-->
<div class="d-flex justify-content-center">
	<div class="container">
		<table class="table">
			<tbody class="">
				<!--버튼 선언 시작 -->
				<tr>
					<th scope="col" style="border-top:0px;">
						<button type="button" class="btn btn-primary" onClick="testClickEvent(<%=rmap.get("ONLINE_TEST_NUMBER")%>)">중간고사 응시하기</button>
					</th>
					<th scope="col" style="border-top:0px;">
						<button type="button" class="btn btn-primary">기말고사 응시하기</button>
					</th>
					<th scope="col" style="border-top:0px;">
						<a type="button" class="btn btn-primary" href=<%=rmap.get("COURSE_FILE")%> target="_blank">강의자료 다운로드</a>
					</th>
				</tr>
			</tbody>
		</table>
			<h3>
				<div class="dropdown" style="text-align: center;">강의 조회</div>
			</h3>
		<table class="table table-bordered">
			<thead class="thead-team">
				<tr class="table table-bordered ">
					<th scope="col"><a id="a_1" style="font-size: 1.2em;">순번</a></th>
					<th scope="col"><a id="a_1" style="font-size: 1.2em;">강의제목</a></th>
					<th scope="col"><a id="a_1" style="font-size: 1.2em;">강의번호</a></th>
				</tr>

			</thead>
			<tbody class="table table-bordered ">
			<%
				for(int i =0 ; i < lectureListSize ; i++){
					rmap = lectureList.get(i);
				
			%>
				<tr onClick="lectureClickEvent(<%=rmap.get("ONLINE_LECTURE_NUMBER")%>)">
					<td><%=rmap.get("ROWNUM") %></td>
					<td><%=rmap.get("ONLINE_LECTURE_TITLE") %></td>
					<td><%=rmap.get("ONLINE_LECTURE_NUMBER") %></td>
				</tr>
			<%
				}
			%>
			</tbody>
		</table>
	</div>
</div>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script src="js/toggleAction.js"></script>
<script>
	function lectureClickEvent(lecture_number){
		var $content = $('#content');
			console.log("lectureClickEvent");
			console.log("lecture_number :"+lecture_number);
		 	 $.ajax({
					type : 'get',
					url : '/course/getLectureDetail?ONLINE_LECTURE_NUMBER='+lecture_number+
							'&STUDENT_NUMBER='+sid,
					/* url:'pageContent/StuInfo/StuCourse.jsp', */
					dataType : 'html',
					success : function(data) {
						$content.html(data).trigger("create");
					}
				});
		
	}
	function testClickEvent(test_number){
		var $content = $('#content');
			console.log("test_number :"+test_number);
		 	 $.ajax({
					type : 'get',
					url : '/onlineTest/getOnlineTest?ONLINE_TEST_NUMBER='+test_number,
					/* url:'pageContent/StuInfo/StuCourse.jsp', */
					dataType : 'html',
					success : function(data) {
						$content.html(data).trigger("create");
					}
				});
		
	}
</script>
<!-- </div> -->
<!-- Page Content end -->