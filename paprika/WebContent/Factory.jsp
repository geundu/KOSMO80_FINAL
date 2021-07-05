<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
String sessionId = "15722001";
%>
<script>
   let sid = <%=sessionId%>;
   $(function() {
		
		'use strict';
		
		$(document).ready(function () {
			console.log('readyEvent');
			initClickEvent();
		});
		
		var $content = $('#content');
		
		function onClickMenu1_0(e){
			console.log('onClickMenu1_0');
			e.preventDefault();
			$.ajax({
				type :'get',
				url:'pageContent/Schedule.jsp',
				/* url:'paprika/getSchedule.do?STUDENT_NUMBER='+sid, */
				dataType:'html',
				success: function(data){
					$content.html(data).trigger("create");
				}
			});
			return false;
		}
			function onClickMenu2_1(e){
			console.log('onClickMenu2_1');
			console.log(<%=sessionId%>);
			console.log(sid);
			e.preventDefault();
			$.ajax({
				type :'get',
				/*url:'pageContent/StuInfo/StuTotalInfo.jsp',*/
				url:'paprika/getStudentInfo.do?STUDENT_NUMBER='+sid,
				dataType:'html',
				success: function(data){
					$content.html(data).trigger("create");
				}
			});
			return false;
		}
		
				function onClickMenu2_2(e){
			console.log('onClickMenu2_2');
			e.preventDefault();
			$.ajax({
				type :'get',
				url:'/paprika/getCourseHistory.do?STUDENT_NUMBER='+sid,
				/* url:'pageContent/StuInfo/StuCourse.jsp', */
				dataType:'html',
				success: function(data){
					$content.html(data).trigger("create");
				}
			});
			return false;
		}
				
			function onClickMenu2_3__1(e){
			console.log('onClickMenu2_3__1');
			e.preventDefault();
			$.ajax({
				type :'get',
				/* url:'pageContent/StuInfo/StuScore.jsp',*/
				url:'paprika/getGradeHistory.do?STUDENT_NUMBER='+sid,
				dataType:'html',
				success: function(data){
					$content.html(data).trigger("create");
				}
			});
			return false; 
		}
			
				function onClickMenu2_4(e){
			console.log('onClickMenu2_4');
			e.preventDefault();
			$.ajax({
				type :'get',
				/* url:'pageContent/StuInfo/StuRegister.jsp', */
				url:'paprika/getRegisterRecord.do?STUDENT_NUMBER='+sid,
				dataType:'html',
				success: function(data){
					$content.html(data).trigger("create");
				}
			});
			return false;
		}
				function onClickMenu3_1(e){
			console.log('onClickMenu3_1');
			e.preventDefault();
			$.ajax({
				type :'get',
				/* url:'pageContent/Course/Course.jsp', */
				url:'/paprika/getOpenCourse.do',
				dataType:'html',
				success: function(data){
					$content.html(data).trigger("create");
				}
			});
			return false;
		}
				function onClickMenu3_2(e){
			console.log('onClickMenu3_2');
			e.preventDefault();
			$.ajax({
				type :'get',
				/* url:'pageContent/Course/Curriculum.jsp', */
				url:'paprika/getCurriculum.do?STUDENT_NUMBER='+sid,
				dataType:'html',
				success: function(data){
					$content.html(data).trigger("create");
				}
			});
			return false;
		}
				function onClickMenu4_0(e){
			console.log('onClickMenu4_0');
			e.preventDefault();
			$.ajax({
				type :'get',
				/* url:'pageContent/Tuition.jsp', */
				url:'/paprika/getTuition.do?STUDENT_NUMBER='+sid,
				dataType:'html',
				success: function(data){
					$content.html(data).trigger("create");
				}
			});
			return false;
		}
				function onClickMenu5_0(e){
			console.log('onClickMenu5_0');
			e.preventDefault();
			$.ajax({
				type :'get',
				url:'pageContent/MeetingRoom.jsp',
				/* url:'paprika/getMeetingRoomList.do?STUDENT_NUMBER='+sid, */
				dataType:'html',
				success: function(data){
					$content.html(data).trigger("create");
				}
			});
			return false;
		}
				function onClickMenu6_1(e){
			console.log('onClickMenu6_1');
			e.preventDefault();
			$.ajax({
				type :'get',
				/* url:'pageContent/Online/Course.jsp', */
				url:'/paprika/getOnlineCourseList.do?STUDENT_NUMBER='+sid,
				dataType:'html',
				success: function(data){
					$content.html(data).trigger("create");
				}
			});
			return false;
		}
				function onClickMenu6_2(e){
			console.log('onClickMenu6_2');
			e.preventDefault();
			$.ajax({
				type :'get',
				url:'pageContent/Online/Lecture.jsp',
				/* url:'paprika/getLectureList.do?STUDENT_NUMBER'+sid, */
				dataType:'html',
				success: function(data){
					$content.html(data).trigger("create");
				}
			});
			return false;
		}
				function onClickMenu6_3(e){
			console.log('onClickMenu6_3');
			e.preventDefault();
			$.ajax({
				type :'get',
				url:'pageContent/Online/LectureDetail.jsp',
				/* url:'paprika/getLectureDetail.do?STUDENT_NUMBER'+sid, */
				dataType:'html',
				success: function(data){
					$content.html(data).trigger("create");
				}
			});
			return false;
		}
				function onClickMenu6_4(e){
			console.log('onClickMenu6_4');
			e.preventDefault();
			$.ajax({
				type :'get',
				url:'pageContent/Online/Feedback.jsp',
				/* url:'pageContent/Online/Feedback.jsp', */
				dataType:'html',
				success: function(data){
					$content.html(data).trigger("create");
				}
			});
			return false;
		}
				function onClickMenu6_5(e){
			console.log('onClickMenu6_5');
			e.preventDefault();
			$.ajax({
				type :'get',
				url:'pageContent/Online/Test.jsp',
				/* url:'pageContent/Online/Test.jsp', */
				dataType:'html',
				success: function(data){
					$content.html(data).trigger("create");
				}
			});
			return false;
		}
				function onClickMenu7_0(e){
			console.log('onClickMenu7_0');
			e.preventDefault();
			$.ajax({
				type :'get',
				url:'pageContent/Community.jsp',
				/* url:'pageContent/Community.jsp', */
				dataType:'html',
				success: function(data){
					$content.html(data).trigger("create");
				}
			});
			return false;
		}
				function onClickMenu8_1(e){
			console.log('onClickMenu8_1');
			e.preventDefault();
			$.ajax({
				type :'get',
				url:'pageContent/ProPeople/Select.jsp',
				/* url:'pageContent/ProPeople/Select.jsp', */
				dataType:'html',
				success: function(data){
					$content.html(data).trigger("create");
				}
			});
			return false;
		}	
					function onClickMenu8_2(e){
			console.log('onClickMenu8_2');
			e.preventDefault();
			$.ajax({
				type :'get',
				url:'pageContent/ProPeople/Insert.jsp',
				/* url:'pageContent/ProPeople/Insert.jsp', */
				dataType:'html',
				success: function(data){
					$content.html(data).trigger("create");
				}
			});
			return false;
		}	
					function onClickMenu8_3(e){
			console.log('onClickMenu8_3');
			e.preventDefault();
			$.ajax({
				type :'get',
				url:'pageContent/ProPeople/Update.jsp',
				/* url:'pageContent/ProPeople/Update.jsp', */
				dataType:'html',
				success: function(data){
					$content.html(data).trigger("create");
				}
			});
			return false;
		}	
						function onClickMenu9_1(e){
			console.log('onClickMenu9_1');
			e.preventDefault();
			$.ajax({
				type :'get',
				url:'pageContent/ProOnline/Course.jsp',
				/* url:'pageContent/ProOnline/Course.jsp', */
				dataType:'html',
				success: function(data){
					$content.html(data).trigger("create");
				}
			});
			return false;
		}	
						function onClickMenu9_2(e){
			console.log('onClickMenu9_2');
			e.preventDefault();
			$.ajax({
				type :'get',
				url:'pageContent/ProOnline/MARK.jsp',
				/* url:'pageContent/ProOnline/MARK.jsp', */
				dataType:'html',
				success: function(data){
					$content.html(data).trigger("create");
				}
			});
			return false;
		}	
						function onClickMenu9_3(e){
			console.log('onClickMenu9_3');
			e.preventDefault();
			$.ajax({
				type :'get',
				url:'pageContent/ProOnline/CourseCUD.jsp',
				/* url:'pageContent/ProOnline/CourseCUD.jsp', */
				dataType:'html',
				success: function(data){
					$content.html(data).trigger("create");
				}
			});
			return false;
		}	
						function onClickMenu9_4(e){
			console.log('onClickMenu9_4');
			e.preventDefault();
			$.ajax({
				type :'get',
				url:'pageContent/ProOnline/Lecture.jsp',
				/* url:'pageContent/ProOnline/Lecture.jsp', */
				dataType:'html',
				success: function(data){
					$content.html(data).trigger("create");
				}
			});
			return false;
		}	
						function onClickMenu9_5(e){
			console.log('onClickMenu9_5');
			e.preventDefault();
			$.ajax({
				type :'get',
				url:'pageContent/ProOnline/LectureDetail.jsp',
				/* url:'pageContent/ProOnline/HomeworkCheck.jsp', */
				dataType:'html',
				success: function(data){
					$content.html(data).trigger("create");
				}
			});
			return false;
		}	
						function onClickMenu9_6(e){
			console.log('onClickMenu9_6');
			e.preventDefault();
			$.ajax({
				type :'get',
				url:'pageContent/ProOnline/HomeworkCheck.jsp',
				/* url:'pageContent/ProOnline/HomeworkCheck.jsp', */
				dataType:'html',
				success: function(data){
					$content.html(data).trigger("create");
				}
			});
			return false;
		}	
						function onClickMenu9_7(e){
			console.log('onClickMenu9_7');
			e.preventDefault();
			$.ajax({
				type :'get',
				url:'pageContent/ProOnline/FeedbackCheck.jsp',
				/* url:'pageContent/ProOnline/FeedbackCheck.jsp', */
				dataType:'html',
				success: function(data){
					$content.html(data).trigger("create");
				}
			});
			return false;
		}	
						function onClickMenu9_8(e){
			console.log('onClickMenu9_8');
			e.preventDefault();
			$.ajax({
				type :'get',
				url:'pageContent/ProOnline/LectureCUD.jsp',
				/* url:'pageContent/ProOnline/LectureCUD.jsp', */
				dataType:'html',
				success: function(data){
					$content.html(data).trigger("create");
				}
			});
			return false;
		}	
						function onClickMenu9_9(e){
			console.log('onClickMenu9_9');
			e.preventDefault();
			$.ajax({
				type :'get',
				url:'pageContent/ProOnline/Test.jsp',
				/* url:'pageContent/ProOnline/Test.jsp', */
				dataType:'html',
				success: function(data){
					$content.html(data).trigger("create");
				}
			});
			return false;
		}	
						function onClickMenu9_10(e){
			console.log('onClickMenu9_10');
			e.preventDefault();
			$.ajax({
				type :'get',
				url:'pageContent/ProOnline/TestSelect.jsp',
				/* url:'pageContent/ProOnline/TestSelect.jsp', */
				dataType:'html',
				success: function(data){
					$content.html(data).trigger("create");
				}
			});
			return false;
		}					function onClickMenu9_11(e){
			console.log('onClickMenu9_11');
			e.preventDefault();
			$.ajax({
				type :'get',
				url:'pageContent/ProOnline/TestInsert.jsp',
				/* url:'pageContent/ProOnline/TestInsert.jsp', */
				dataType:'html',
				success: function(data){
					$content.html(data).trigger("create");
				}
			});
			return false;
		}	
							function onClickMenu9_12(e){
			console.log('onClickMenu9_12');
			e.preventDefault();
			$.ajax({
				type :'get',
				url:'pageContent/ProOnline/TestGrading.jsp',
				/* url:'pageContent/ProOnline/TestGrading.jsp', */
				dataType:'html',
				success: function(data){
					$content.html(data).trigger("create");
				}
			});
			return false;
		}	
		
		function initClickEvent(){
			console.log('initClickEvent');
			$('#sideButton_1_0').click(onClickMenu1_0);
			$('#sideButton_2_1').click(onClickMenu2_1);
			$('#sideButton_2_2').click(onClickMenu2_2);
			$('#sideButton_2_3').click(onClickMenu2_3__1);
			/* $('#course_table').click(onClickMenu2_3__2); */
			$('#sideButton_2_4').click(onClickMenu2_4);
			$('#sideButton_3_1').click(onClickMenu3_1);
			$('#sideButton_3_2').click(onClickMenu3_2);
			$('#sideButton_4_0').click(onClickMenu4_0);
			$('#sideButton_5_0').click(onClickMenu5_0);
			$('#sideButton_6_1').click(onClickMenu6_1);
			$('#sideButton_6_2').click(onClickMenu6_2);
			$('#sideButton_6_3').click(onClickMenu6_3);
			$('#sideButton_6_4').click(onClickMenu6_4);
			$('#sideButton_6_5').click(onClickMenu6_5);
			$('#sideButton_7_0').click(onClickMenu7_0);
			$('#sideButton_8_1').click(onClickMenu8_1);
			$('#sideButton_8_2').click(onClickMenu8_2);
			$('#sideButton_8_3').click(onClickMenu8_3);
			$('#sideButton_9_1').click(onClickMenu9_1);
			$('#sideButton_9_2').click(onClickMenu9_2);
			$('#sideButton_9_3').click(onClickMenu9_3);
			$('#sideButton_9_4').click(onClickMenu9_4);
			$('#sideButton_9_5').click(onClickMenu9_5);
			$('#sideButton_9_6').click(onClickMenu9_6);
			$('#sideButton_9_7').click(onClickMenu9_7);
			$('#sideButton_9_8').click(onClickMenu9_8);
			$('#sideButton_9_9').click(onClickMenu9_9);
			$('#sideButton_9_10').click(onClickMenu9_10);
			$('#sideButton_9_11').click(onClickMenu9_11);
			$('#sideButton_9_12').click(onClickMenu9_12);
			
		}	

	});
   
   
   </script>
