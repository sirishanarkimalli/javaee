<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	import="java.time.*"   
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Today.jsp</title>
</head>
<body>
<%
    out.println("Today= "+LocalDate.now());
%>
<%
	out.println("Time="+LocalTime.now());
%>
</body>
</html>