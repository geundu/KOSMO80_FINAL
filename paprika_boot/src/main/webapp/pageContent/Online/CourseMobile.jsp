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
onlineCourseList = (List<Map<String, Object>>) request.getAttribute("courseList");
int onlineCourseSize = 0;
Map<String, Object> rmap = new HashMap<>();
if (onlineCourseList != null) {
	onlineCourseSize = onlineCourseList.size();
	for (int i = 0; i < onlineCourseSize; i++) {
		rmap = onlineCourseList.get(i);
	}
}
%>
<script>
	console.log(
<%=onlineCourseSize%>
	);
</script>

<!-- Page Content start -->
<!-- <div id="content" class="p-4 p-md-5"> -->

<div class="d-flex justify-content-center">
	<div class="container">

		<!-- 밑부터 메인 프레임 속 내용-->
		<table class="table table-striped " style="width: 100%; height: 40%;">
			<thead>
				<tr>
					<td class="h3" colspan="4" style="text-align: center;"><%=rmap.get("STUDENT_NAME")%>
						님의 E-Learning DashBoard</td>
				</tr>
			</thead>
			<tbody>
				<%-- <%
				for (int i = 0; i <= onlineCourseSize + 1 / 4; i++) {
				%> --%>
				<%
         		for(int i=0; i < onlineCourseSize; i++){
         		   if(i%4 == 0){
       			%>
		   <%
            }
         %>
					<%-- <%
					int length = 0;
					if ((onlineCourseSize - i * 4) / 4 > 1) {
						length = 4;
					} else if ((onlineCourseSize - i * 4) / 4 == 0) {
						length = (onlineCourseSize - i * 4) % 4;
					} else if ((onlineCourseSize - i * 4) / 4 == 1) {
						length = 4;
					}
					for (int j = 0; j < length; j++) {
						Map<String, Object> tmap = onlineCourseList.get(j + 4 * i);
					%> --%>
					<%-- <td scope="row" style="width: 25%;" id="CourseDashBoard<%=i+""+j%>"> --%>
				<tr class="table table-bordered">
					<%Map<String, Object> tmap = onlineCourseList.get(i); %>
					<td scope="row" style="width: 25%;" id="CourseDashBoard<%=i%>" onClick="tdClickEvent(<%=tmap.get("COURSE_NUMBER")%>)">
						<div class="card text-white bg-teamcolor mb-3"
							style="max-width: 100%;">
							<div class="card-header h6"><%=tmap.get("SUBJECT_NAME")%></div>
							<div class="card-body">
								<h5 class="card-title">
									교수명 :
									<%=tmap.get("PROFESSOR_NAME")%></h5>
								<p class="card-text"><%=tmap.get("COURSE_CONTENT")%>
								</p>
							</div>
						</div>
					</td>
					<%
					}
					%>
				</tr>
			</tbody>
		</table>
	</div>
</div>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script>
function tdClickEvent(course_number){
	var $content = $('#content');
 	  console.log("tdClickEvent") 
 	  console.log("course_number : "+course_number);
 	 $.ajax({
			type : 'get',
			url : '/course/getLectureList?COURSE_NUMBER=' + course_number,
			/* url:'pageContent/StuInfo/StuCourse.jsp', */
			dataType : 'html',
			success : function(data) {
				$content.html(data).trigger("create");
			}
		});
 	  
 	}
   /* $(document).ready(function(){}); == $() */
   
   $(window).on('load',function(){
   /* $(function(){   */
	   'use strict';
	   var $content = $('#content');
	   function initCourseAjax() {
	         console.log('initCourseAjax');
	         
	         $.ajax({
	            type : 'get',
	            /* url:'pageContent/Online/Course.jsp', */
	            url : '/course/getOnlineCourseList?STUDENT_NUMBER=' + sid,
	            dataType : 'html',
	            success : function(data) {
	               $content.html(data).trigger("create");
	            }
	         });
	         return false;
	      }
	   initCourseAjax();	
   });
   
   
   $(function() {
      $(document).ready(function () {
    	 console.log('readyEvent');
    	 initClickEvent();
      });
      
     
<%--       <%
		for (int i = 0; i <= onlineCourseSize + 1 / 4; i++) {
			%>
				<%
				int length = 0;
				if ((onlineCourseSize - i * 4) / 4 > 1) {
					length = 4;
				} else if ((onlineCourseSize - i * 4) / 4 == 0) {
					length = (onlineCourseSize - i * 4) % 4;
				} else if ((onlineCourseSize - i * 4) / 4 == 1) {
					length = 4;
				}
				for (int j = 0; j < length; j++) {
					Map<String, Object> tmap = onlineCourseList.get(j + 4 * i);
				%>
				
				let CourseDashBoard<%=i+""+j%> = <%=i%>+""+<%=j%>;
				console.log(CourseDashBoard<%=i+""+j%>)
				function onClickDashBoard<%=i+""+j%>(){
					console.log(<%=""+i+""+j%>);
				}
				<%}%>
		<%}%> --%>
      
      
      
     function initClickEvent(){
    	  <%--  <%
			for (int i = 0; i <= onlineCourseSize + 1 / 4; i++) {
				%>
					<%
					int length = 0;
					if ((onlineCourseSize - i * 4) / 4 > 1) {
						length = 4;
					} else if ((onlineCourseSize - i * 4) / 4 == 0) {
						length = (onlineCourseSize - i * 4) % 4;
					} else if ((onlineCourseSize - i * 4) / 4 == 1) {
						length = 4;
					}
					for (int j = 0; j < length; j++) {
						Map<String, Object> tmap = onlineCourseList.get(j + 4 * i);
					%>
					$('#CourseDashBoard<%=i+""+j%>').click(onClickDashBoard<%=i+""+j%>);
					$()
					
					<%}%>
			<%}%> --%>
      }
   });
</script>
<script src="./js/toggleAction.js"></script>
<!--06/19  인터넷 강의 - 강좌 조회 끝-->
<!-- </div> -->
<!-- Page Content end -->