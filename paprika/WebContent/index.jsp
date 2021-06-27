<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%
	List<Map<String, Object>> studentList = null;
	List<Map<String, Object>> registerRecordList = null;
	List<Map<String, Object>> tuitionList = null;
	List<Map<String, Object>> courseHistoryList = null;
	List<Map<String, Object>> gradeHistoryList = null;
	List<Map<String, Object>> gradeHistoryDetail = null;
studentList = (List<Map<String, Object>>) request.getAttribute("studentList");
registerRecordList = (List<Map<String, Object>>) request.getAttribute("registerRecordList");
tuitionList = (List<Map<String, Object>>) request.getAttribute("tuitionList");
courseHistoryList = (List<Map<String, Object>>) request.getAttribute("courseHistoryList");
gradeHistoryList = (List<Map<String, Object>>) request.getAttribute("gradeHistoryList");
gradeHistoryDetail = (List<Map<String, Object>>) request.getAttribute("gradeHistoryDetail");
int size = 0;
//studentList
if (studentList != null && studentList.size() > 0) {
	size = studentList.size();
	out.print(size);
	out.print("<br>");

	for (Map<String, Object> index : studentList) {
		out.print(index.get("STUDENT_NUMBER"));
		out.print(index.get("STUDENT_NAME"));
		out.print(index.get("STUDENT_ENG_NAME"));
		out.print(index.get("STUDENT_ENTER_YEAR"));
		out.print(index.get("STUDENT_EMAIL"));
		out.print(index.get("GUARDIAN_NAME"));
		out.print(index.get("GUARDIAN_PHONE"));
		out.print(index.get("MAJOR"));
		out.print(index.get("DEPT"));
		out.print(index.get("COL"));
		out.print(index.get("DATE_LASTEST_REG"));
		out.print(index.get("REG_STATUS"));
		out.print(index.get("PASSEDGRADE")+"학년");
		out.print(index.get("PASSEDSEMESTER")+"학기");
		out.print("<br>");

		out.print("<br>");
	}
}
// getRegisterRecord
if (registerRecordList != null && registerRecordList.size() > 0) {
	size = registerRecordList.size();
	out.print(size);
	out.print("<br>");

	for (Map<String, Object> index : registerRecordList) {

		out.print(index.get("STUDENT_NAME"));
		out.print(index.get("RECORD_NUMBER"));
		out.print(index.get("YEAR"));
		out.print(index.get("SEMESTER"));
		out.print(index.get("REGISTER_NAME"));
		out.print(index.get("REGISTER_CONTENT"));
		out.print(index.get("REMARK"));

		out.print("<br>");
	}
}
// tuitionList
if (tuitionList != null && tuitionList.size() > 0) {
	size = tuitionList.size();
	out.print(size);
	out.print("<br>");

	for (Map<String, Object> index : tuitionList) {

		out.print(index.get("STUDENT_NUMBER"));
		out.print(index.get("STUDENT_NAME"));
		out.print(index.get("COLLEGE_NAME"));
		out.print(index.get("TUITION_CONTENT"));
		out.print(index.get("TUITION_FEE"));
		out.print(index.get("SEMESTER"));
		out.print(index.get("TUITION_TOTAL_FEE"));

		out.print("<br>");
	}
}
// getCourseHistory
if (courseHistoryList != null && courseHistoryList.size() > 0) {
	size = courseHistoryList.size();
	out.print(size);
	out.print("<br>");
	out.print("<br>");
	out.print("<br>");

	for (Map<String, Object> index : courseHistoryList) {

		out.print(index.get("rownum"));
		out.print(index.get("COURSE_SEMESTER"));
		out.print(index.get("COURSE_NUMBER"));
		out.print(index.get("SUBJECT_NAME"));
		out.print(index.get("SUBJECT_CREDIT"));
		out.print(index.get("COLLEGE_NAME"));
		out.print(index.get("SUBJECT_GRADE"));
		out.print(index.get("COURSE_DAY"));
		out.print(index.get("COURSE_BEGIN_TIME"));
		out.print(index.get("COURSE_END_TIME"));
		out.print(index.get("PROFESSOR_NAME"));
		out.print(index.get("SUBJECT_DIVISION"));
		out.print(index.get("MARK_IS_RETAKE"));


		out.print("<br>");
	}
}
// getGradeHistory
if (gradeHistoryList != null && gradeHistoryList.size() > 0) {
	size = gradeHistoryList.size();
	out.print(size);
	out.print("<br>");
	out.print("<br>");
	out.print("<br>");

	for (Map<String, Object> index : gradeHistoryList) {

		out.print("<br>");
		out.print(index.get("COURSE_SEMESTER"));
		out.print("<br>");
		out.print(index.get("MARK_AVG"));
		out.print("<br>");
		out.print(index.get("SUMMITEDSCORE"));
		out.print("<br>");
		out.print(index.get("PASSSCORE"));
		out.print("<br>");
		out.print(index.get("F_SCORE"));
		out.print("<br>");
	}
}
// getGradeHistoryDetail
if (gradeHistoryDetail != null && gradeHistoryDetail.size() > 0) {
	size = gradeHistoryDetail.size();
	out.print(size);
	out.print("<br>");
	out.print("<br>");
	out.print("<br>");

	for (Map<String, Object> index : gradeHistoryDetail) {

		out.print("<br>");
		out.print(index.get("NUM"));
		out.print(index.get("SUBJECT_NUMBER"));
		out.print(index.get("SUBJECT_NAME"));
		out.print(index.get("SUBJECT_DIVISION"));
		out.print(index.get("SUBJECT_CREDIT"));
		out.print(index.get("score"));
		out.print(index.get("mark"));
		out.print(index.get("RETAKE"));
		out.print(index.get("REPASS"));
		out.print(index.get("REPASS_SEMESTER"));
		out.print("<br>");
	}
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>테스트 페이지</title>
</head>
<body>프로젝트 테스트 페이지입니다.
</body>
</html>