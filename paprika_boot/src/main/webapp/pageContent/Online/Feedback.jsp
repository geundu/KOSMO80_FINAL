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

List<Map<String, Object>> feedbackDetail = null; 
feedbackDetail = (List<Map<String, Object>>) request.getAttribute("feedbackDetail");
int feedbackDetailSize = 0;
Map<String,Object> rmap = new HashMap<>();

if (feedbackDetail != null) {
	feedbackDetailSize = feedbackDetail.size();
	for(int i=0;i<feedbackDetailSize;i++){
    rmap = feedbackDetail.get(i);
	}
}
out.print("feedbackDetailSize:" + feedbackDetailSize);
%>
<script>
console.log(<%=feedbackDetailSize%>);
</script>
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
						<li class="breadcrumb-item"><a onClick="window.location.reload()" style="color:'white'">강좌시청</a></li>
						<li class="breadcrumb-item active" aria-current="page" style="color: #5BB04F">피드백보내기</li>
					</ol>
				</nav>
		</div>
		<!-- Page Content Header end -->
	</div>
</nav>
<!-- 밑부터 메인 프레임 속 내용-->
<div class="d-flex justify-content-center" style="height: 80%;">
	<div class="container" style="height: 80%; text-align: center;">
		<div class="screen1"
			style="width: 100%; height: 40%; background-color: ;">
			<div style="text-align: center;">
				<h3><%=rmap.get("SUBJECT_NAME")%>-<%=rmap.get("ONLINE_LECTURE_TITLE") %></h3>
			</div>
		</div>
		<div class="screen2"
			style="width: 100%; height: auto%; background-color: ;">
			<div class="form-title">
				<input type="text" id="FEEDBACK_CONTENT" name="bdTitle" class="form-control mt-4 mb-2"
					placeholder="피드백을 입력해주세요." required>
			</div>
		</div>

		<div class="col text-center">
		  <button onClick="sendFeedback()" class="btn btn-primary mr-5">피드백보내기</button>
			
		  <button onClick="writeCancel()" class="btn btn-primary">작성취소</button>
		</div>
	</div>
</div>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script src="js/toggleAction.js"></script>
<script>
	function writeCancel(){
		if (confirm("작성을 취소하시겠습니까?")==true){
			alert("작성이 취소되었습니다. Dashboard창으로 돌아갑니다.")
		} 
	};
	
	function sendFeedback(){
		console.log($('#FEEDBACK_CONTENT').val());
		
		let reqUrl = "./course/feedbackInsert?STUDENT_NUMBER="
			+sid+"&ONLINE_LECTURE_NUMBER="+<%=rmap.get("ONLINE_LECTURE_NUMBER") %>
			+"&FEEDBACK_TITLE=피드백제목입니다."
			+"&FEEDBACK_CONTENT="+$('#FEEDBACK_CONTENT').val();
		
		$.ajax({
			url: reqUrl,
			dataType:'text',
			success: function(data) {
				if(data == '1') {
					alert("피드백이 전송되었습니다.");
				}
				else {
					alert("피드백이 전송에 실패하였습니다.");
				}
			},
			error: function(xhr) {
				alert('비동기통신 실패');	
			}
		});
	};
</script>
<!-- </div> -->
<!-- Page Content end -->




