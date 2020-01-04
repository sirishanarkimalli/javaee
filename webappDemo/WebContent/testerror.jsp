<%@page errorPage="error.jsp"%>
<html>
<body>
	<%
		int n;
		n = Integer.parseInt(request.getParameter("num"));
		out.println(n);
	%>
</body>
</html>
