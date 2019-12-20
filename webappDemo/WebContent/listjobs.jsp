<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	import="oracle.jdbc.rowset.OracleCachedRowSet"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List Jobs</title>
<style>
.number{ text-align:right}
.tablestyles{cellpadding:5pt; width:100%;}
</style>
</head>
<body>
<h1 style="color:red">Jobs Table</h1>
	<table border="1" class="tablestyles">
		<tr style="background-color:maroon;color:white;font-weight:bold" >
			<th>Job_id</th>
			<th>Job_Title</th>
			<th>Min_Salary</th>
			<th>Max_Salary</th>
		</tr>
		<% 
			OracleCachedRowSet ors = new OracleCachedRowSet();
			ors.setUrl("jdbc:oracle:thin:@localhost:1521:XE");
			ors.setUsername("hr");
			ors.setPassword("hr");

			ors.setCommand("select * from jobs");
			ors.execute();
			
			while (ors.next()) {
				out.println("<tr><td>" + ors.getString(1) + "</td><td>" + ors.getString(2) +
						    "</td><td class='number'>" + ors.getInt(3)
						+ "</td><td class='number'>" + ors.getInt(4) + "</td></tr>");
				
			}
		%>
		
	</table>


</body>
</html>