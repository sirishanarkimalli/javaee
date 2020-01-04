<%@ page language="java" contentType="text/plain; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<sql:setDataSource var="oracle" driver="oracle.jdbc.driver.OracleDriver"
	url="jdbc:oracle:thin:@localhost:1521:XE" user="hr" password="hr" />
<sql:query var="emplist" dataSource="${oracle}">
	select * from employees
	where salary>10000 order by First_name                      
</sql:query>
<c:forEach var="row" items="${emplist.rows}">
${row.employee_id}     ${row.first_name}    ${row.salary}
</c:forEach>
