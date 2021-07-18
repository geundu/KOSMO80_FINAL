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
<script>
console.log(<%=lectureListSize%>);
</script>


<!-- Page Content start -->
<!-- <div id="content" class="p-4 p-md-5"> -->
	
<!-- 밑부터 메인 프레임 속 내용-->
<div class="d-flex justify-content-center">
	<div class="container">
			<h3>
				<div class="dropdown" style="text-align: center;">강의 조회</div>
			</h3>
		<table class="table table-bordered">
			<thead class="thead-team">
				<tr class="table table-bordered ">
					<th scope="col"><a id="a_1" style="font-size: 1.2em;" href=#>순번</a></th>
					<th scope="col"><a id="a_1" style="font-size: 1.2em;" href=#>강의제목</a></th>
					<th scope="col"><a id="a_1" style="font-size: 1.2em;" href=#>강의번호</a></th>
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
</script>
<!-- </div> -->
<!-- Page Content end -->