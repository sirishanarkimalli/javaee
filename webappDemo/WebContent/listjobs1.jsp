<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	import="java.util.TreeMap"
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
			
		</tr>
		<% 
		
			TreeMap<String,String> jobs=
			(TreeMap<String,String>)application.getAttribute("jobs"); 
			
			for (String id : jobs.keySet()) {
				out.println("<tr><td>" + id +"</td><td>" 
							+jobs.get(id)+"</td></tr>");					
				
			}
		%>
	</table>


</body>
</html>