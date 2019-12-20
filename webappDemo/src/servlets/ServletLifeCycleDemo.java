package servlets;

import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/slcdemo")
public class ServletLifeCycleDemo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public ServletLifeCycleDemo() {
        super();
       System.out.println("Constructor");
    }

	
	public void init(ServletConfig config) throws ServletException {
		 System.out.println("Initialized");
	}

	
	public void destroy() {
		 System.out.println("Destroyed");
	}

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 System.out.println("In doGet");
	}

}
