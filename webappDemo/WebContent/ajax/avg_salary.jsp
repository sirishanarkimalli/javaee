<%@ page language="java"
 	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

	<sql:setDataSource var="oracle"
		driver="oracle.jdbc.driver.OracleDriver"
		url="jdbc:oracle:thin:@localhost:1521:XE" user="hr" password="hr" />

	<sql:query dataSource="${oracle}" var="result">
			select to_char(avg(salary), '99,999.00') avgsal from employees
	</sql:query>	
	${result.rows[0].avgsal}		
