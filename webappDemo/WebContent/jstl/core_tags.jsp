<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Use Core Tags</title>
</head>
<body>
	<c:set var="name" value="sirishaN" scope="session" />
	<h2>Name=${sessionScope.name}</h2>
</body>
</html>