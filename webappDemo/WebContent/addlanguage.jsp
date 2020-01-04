<%@page import="java.util.LinkedHashSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Language</title>
</head>
<body>
<h2>Languages</h2>
	<%
	String lang=(String)request.getParameter("lang");
	
	LinkedHashSet<String> langs= (LinkedHashSet<String>)session.getAttribute("langs");
	if(langs ==null  ){
		langs=new LinkedHashSet<String>();
		session.setAttribute("langs", langs);
	}
	if(lang!=null)
		langs.add(lang);
	
	for(String s : langs){
		out.println(s+"<br/>");
	}

	
%>
</body>
</html>