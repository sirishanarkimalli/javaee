package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/updatesalary")
public class UpdateSalary extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			PrintWriter pw= response.getWriter();
			response.setContentType("text/html");
			
			Connection con=null;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","hr","hr");
			
			PreparedStatement pst= con.prepareStatement("update employees set salary=? where employee_id=?");
			pst.setString(1,request.getParameter("sal"));
			pst.setString(2,request.getParameter("empid"));		
			
			int count=pst.executeUpdate();
			
			if(count==1)
				pw.println("<h2>Updated Sucessfully!</h2>");
			else
				pw.println("<h2>Employee Not Found!</h2>");
			
		}catch(Exception e) {
			System.out.println(e);
		}
		finally {
			if(con!=null) {
			  try {	con.close();}
			  catch(Exception ex) 
			  {   System.out.println(ex);
			  	 pw.println("<h2>Sorry!  Couldnot update salary</h2>")	;
			  
			  }
			}
		}
	}

}
