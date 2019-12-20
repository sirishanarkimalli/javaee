package servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/converter")
public class CMstoFeetConverter extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int cms=Integer.parseInt(request.getParameter("cms")); //"400" 400

		double feet= cms*0.0328084;
		
		//send feet value to client as response
		response.setContentType("text/html");
		PrintWriter pw=response.getWriter();
		pw.println("<h2>Cms= "+cms+" Feet= "+feet+"</h2>");
		pw.close();
		
	}

	

}
