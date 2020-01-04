<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Interest Calculator</title>
</head>
<body>
<h2>Interest Calculated</h2>
<jsp:useBean id="interestBean" class="beans.InterestBean" scope="page">
</jsp:useBean>
<jsp:setProperty property="*" name="interestBean"/>

<h3>
${age}     
</p>
${header["User-Agent"]}
${cookie.JSESSIONID.value}
${param.n1>param.n2?"N1 is greter than n2:n1 is less than n2"}
Amount=${interestBean.amount}
Duration=${interestBean.duration}
Interest=${interestBean.interest}</h3>
</body>
</html>