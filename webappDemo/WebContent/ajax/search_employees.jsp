<%@ page language="java" 
    contentType="text/plain; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<sql:setDataSource var="oracle" driver="oracle.jdbc.driver.OracleDriver"
	url="jdbc:oracle:thin:@localhost:1521:XE" user="hr" password="hr" />

<sql:query var="result" dataSource="${oracle}">
	select first_name name, salary, job_id job, department_id dept
	from employees
	where first_name like ? 	                         
	<sql:param value='%${param.name}%' ></sql:param>   
</sql:query>

[      
<c:forEach var="emp" items="${result.rows}" varStatus="vs">
 {"name" : "${emp.name}", 
 "salary" : ${emp.salary}, 
 "job" : "${emp.job}", 
 "department" : ${emp.dept}}
 <c:if test="${!vs.last}">,</c:if>
 </c:forEach>
]
