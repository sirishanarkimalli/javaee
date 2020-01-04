<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Save city</title>
</head>
<body>
<%
	String cityName=request.getParameter("city");
	Cookie c= new Cookie("city",cityName);
	c.setMaxAge(3*24*60*60);
	response.addCookie(c);
	response.sendRedirect("movies.jsp");
%>
</body>
</html>