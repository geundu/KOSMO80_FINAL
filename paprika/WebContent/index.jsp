<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%
	List<Map<String, Object>> studentList = null;
	studentList = (List<Map<String, Object>>) request.getAttribute("studentList");
	int size = 0;
	if(studentList != null && studentList.size() > 0) {
		size = studentList.size();
		out.print(size);
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