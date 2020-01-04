package listeners;

import java.util.TreeMap;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

import oracle.jdbc.rowset.OracleCachedRowSet;

//@WebListener
public class MyListener implements ServletContextListener, HttpSessionListener {

	public void sessionCreated(HttpSessionEvent se) {
		System.out.println("Session Created()");
		int count=(Integer)se.getSession().getServletContext().getAttribute("count");
		count++;
		se.getSession().getServletContext().setAttribute("count",count);
	}

	public void sessionDestroyed(HttpSessionEvent se) {
		System.out.println("Session Destroyed()");
		int count=(Integer)se.getSession().getServletContext().getAttribute("count");
		count--;
		se.getSession().getServletContext().setAttribute("count",count);
	}

	public void contextDestroyed(ServletContextEvent sce) {
		System.out.println("Context Destroyed()");
	}

	public void contextInitialized(ServletContextEvent sce) {
		System.out.println("Context Initialized()");
		
		int count=0;
		
		TreeMap<String, String> jobs = new TreeMap<>();
		// load from database
		try {
			OracleCachedRowSet ors = new OracleCachedRowSet();
			ors.setUrl("jdbc:oracle:thin:@localhost:1521:XE");
			ors.setUsername("hr");
			ors.setPassword("hr");

			ors.setCommand("select job_id, job_title from jobs");
			ors.execute();

			while (ors.next()) {
				jobs.put(ors.getString(1), ors.getString(2));
			}
			ors.close();
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		
		sce.getServletContext().setAttribute("jobs",jobs);
		sce.getServletContext().setAttribute("count",count);
	}

}
