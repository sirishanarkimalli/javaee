<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Title1</title>
</head>
<body>
<h1>Page1</h1>
<%
	request.setAttribute("today",java.time.LocalDate.now());
%>
<jsp:include page="page2.jsp"></jsp:include>
<h2> Back in Page1</h2>
</body>
</html>