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

List<Map<String, Object>> onlineTestList = null; 
onlineTestList = (List<Map<String, Object>>) request.getAttribute("onlineTestList");
int onlineTestListSize = 0;
Map<String,Object> rmap = new HashMap<>();

if (onlineTestList != null) {
	onlineTestListSize = onlineTestList.size();
	for(int i=0;i<onlineTestListSize;i++){
    rmap = onlineTestList.get(i);
	}
}
out.print("onlineTestListSize:" + onlineTestListSize);
%>
<button type="button" id="logout" onclick="logout()" class="btn btn-primary mr-1" style="margin-left: 0.2em; font-size:12px; width: 100px; height: auto; text-align: center;">logout</button>
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
						<li class="breadcrumb-item active" aria-current="page" style="color: #5BB04F" >시험응시</li>
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
			style="width: 100%; height: auto%; background-color: E8EBEE;">
			<div style="text-align: center;">
				<h3><%=rmap.get("SUBJECT_NAME")%>일본어 문화 강좌 // <%=rmap.get("ONLINE_TEST_DIVISION")%></h3>
			</div>
		</div>
		<div class="screen2"
			style="width: 100%; height: auto%; background-color: E8EBEE;">
			<table class="table table-bordered" style="text-align: center;">
				<thead>
					</tr>
				</thead>
				<tbody>
					<!-- 문제시작 -->
					<%for(int i = 0 ; i < onlineTestListSize ; i++) { 
						Map<String, Object> tmap = onlineTestList.get(i); %>
						<%if(i<10){ %>
					<tr>
						<th scope="row">문제<%=tmap.get("ONLINE_TEST_QUESTION_QNUMBER") %>: <%=tmap.get("ONLINE_TEST_QUESTION_CONTENT") %></th>
					</tr>
						<%}if(i>=10){ %>
					<tr>
						<th scope="row">주관식문제<%=i-9%>: <%=tmap.get("ONLINE_TEST_QUESTION_CONTENT") %></th>
					</tr>
						<%} %>
					<tr>
					
					<%if(i<10){ %>
						<th scope="row">
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio"
									name="inlineRadioBox<%=i %>" id="inlineRadioBox1" value="option1">
								<label class="form-check-label" for="inlineRadioBox1">1.<%=tmap.get("ONLINE_TEST_QUESTION_ANSWER1")%></label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio"
									name="inlineRadioBox<%=i %>" id="inlineRadioBox2" value="option2">
								<label class="form-check-label" for="inlineRadioBox2">2.<%=tmap.get("ONLINE_TEST_QUESTION_ANSWER2")%></label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio"
									name="inlineRadioBox<%=i %>" id="inlineRadioBox3" value="option3">
								<label class="form-check-label" for="inlineRadioBox3">3.<%=tmap.get("ONLINE_TEST_QUESTION_ANSWER3")%></label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio"
									name="inlineRadioBox<%=i %>" id="inlineRadioBox4" value="option4">
								<label class="form-check-label" for="inlineRadioBox4">4.<%=tmap.get("ONLINE_TEST_QUESTION_ANSWER4")%></label>
							</div>
						</th>
						<%} %>
					</tr>
					<%} %>
					<!-- 문제끝 -->
				</tbody>
			</table>
		</div>
		<div class="screen3"
			style="width: 100%; height: auto%; background-color: E8EBEE;">

			<div class="col text-center">
				<a href="#" button type="button" class="btn btn-primary mr-5">주관식 문제 제출</a>
				<div class="custom-file" style="width: 500px;">
					<input type="file" class="custom-file-input" id="customFile">
					<!-- 파일첨부 -->
					<label class="custom-file-label" for="customFile">Choose file</label>
				</div>
			</div>
		</div>
		<div class="screen4"
			style="width: 100%; height: auto%; background-color: E8EBEE;">
			<div class="col text-center">
				<a href="#" button type="button" class="btn btn-primary mr-5">완료</a>
			</div>
		</div>
	</div>
</div>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script src="./js/toggleAction.js"></script>
<script>

</script>
<!-- </div> -->
<!-- Page Content end -->