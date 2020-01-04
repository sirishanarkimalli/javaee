<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Movie</title>
</head>
<body>
<%
	String cityName=null;
	Cookie[] cookies=request.getCookies();
	if(cookies!=null){
		for(Cookie c: cookies){
			if(c.getName().equals("city")){
				cityName=c.getValue();
				break;
			}
		}
	}
	if(cityName==null)
		response.sendRedirect("selectcity.html");
	%>

<h3>Movies</h3>
Movies in city [<%=cityName%>]

</body>
</html>