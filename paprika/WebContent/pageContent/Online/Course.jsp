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

List<Map<String, Object>> onlineCourseList = null;
onlineCourseList = (List<Map<String, Object>>) request.getAttribute("onlineCourseList");
int onlineCourseSize = 0;
Map<String,Object> rmap = new HashMap<>();

if (onlineCourseList != null) {
	onlineCourseSize = onlineCourseList.size();
	for(int i=0;i<onlineCourseSize;i++){
    rmap = onlineCourseList.get(i);
	}
}
out.print("onlineCourseSize:" + onlineCourseSize);
%>
<script>
console.log(<%=onlineCourseSize%>);
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
						<li class="breadcrumb-item"><a
							onClick="window.location.reload()">Pprk.Main()</a></li>
						<li class="breadcrumb-item active" aria-current="page">e-Learning</li>
						<li class="breadcrumb-item active" aria-current="page">DashBoard</li>
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

		<!-- 밑부터 메인 프레임 속 내용-->
		<table class="table table-striped "
			style="width: 100%; height: 40%;">
			<thead>
				<tr>
					<td class="h3" colspan="4" style="text-align: center;"><%=rmap.get("STUDENT_NAME")%> 님의
						E-Learning DashBoard</td>
				</tr>
			</thead>
			<tbody>
			<%for(int i = 0 ; i<=onlineCourseSize+1/4 ; i++){ %>
				<tr class="table table-bordered">
					<% int length = 0; 
					if((onlineCourseSize-i*4)/4>1){
						length=4;						
					}else if ((onlineCourseSize-i*4)/4==0){
						length=(onlineCourseSize-i*4)%4;
					}else if ((onlineCourseSize-i*4)/4==1){
						length=4;
					}
					for(int j=0; j<length; j++){ 
						Map<String, Object> tmap = onlineCourseList.get(j+4*i);
					%>
					<td scope="row">
						<div class="card text-white bg-teamcolor mb-3"
							style="max-width: 100%;">
							<div class="card-header h6"><%=tmap.get("SUBJECT_NAME")%></div>
							<div class="card-body">
								<h5 class="card-title">교수명 : <%=tmap.get("PROFESSOR_NAME") %></h5>
								<p class="card-text"><%=tmap.get("COURSE_CONTENT")%>
								</p>
							</div>
						</div>
					</td>
					<%} %>
				</tr>
				<%} %>

			</tbody>
		</table>
	</div>
</div>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script src="./js/toggleAction.js"></script>
<!--06/19  인터넷 강의 - 강좌 조회 끝-->
<!-- </div> -->
<!-- Page Content end -->