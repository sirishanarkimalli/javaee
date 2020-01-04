
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>AllInOneJSP</title>
</head>
<body>
<form>
 <h2>
		Number: <input type="number" name="num" value="${param.num}"/>
		<input type="submit" value="Factors"/>
	</h2>
</form>
<%

		String snum=request.getParameter("num");
		if(snum!=null){
			int num=Integer.parseInt(snum);
			for(int i=2;i<=num/2;i++){
				if(num%i==0)
					out.println(i+"<br/>");
			}
		}
			

%>




</body>
</html>