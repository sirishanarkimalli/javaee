<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update salary</title>
</head>
<body>
<form>
Employee Id:<input type="number" name="id" value="${param.id}"/>
Employee Salary:<input type="number" name="sal" value="${param.sal}"/>
<input type="submit" value="submit"/>
</form>


<c:if test="${!empty param.id}">
	<sql:setDataSource var="oracle"
		driver="oracle.jdbc.driver.OracleDriver"
		url="jdbc:oracle:thin:@localhost:1521:XE"
		user="hr"
		password="hr"/>
		
		<sql:update dataSource="${oracle}" var="uc">
			update employees set salary=? where employee_id=?
			<sql:param value="${param.sal}"/>
			<sql:param value="${param.id}"/>
		</sql:update>
		
		<c:if test="${uc>0}">
			Updated Succesfully!
		</c:if>
</c:if>
</body>
</html>