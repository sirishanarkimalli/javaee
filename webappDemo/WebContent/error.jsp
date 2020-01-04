<%@page isErrorPage="true"%>
<html>
<body>
<h2> Error page</h2>
	Error:	<%=exception.getMessage() %>
	<p />
	<a href="javascript:history.back()">Back</a>
</body>
</html>

