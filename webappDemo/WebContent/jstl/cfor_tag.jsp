<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>for tag</title>
</head>
<body>
<table>
	<c:forEach var="n" begin="1" end="10">
	<tr><td>${n}</td><td>${n*2}</td></tr>
</c:forEach>
</table>
</body>
</html>