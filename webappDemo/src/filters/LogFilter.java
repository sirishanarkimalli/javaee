package filters;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;

//@WebFilter("/*")
public class LogFilter implements Filter {

   	public void destroy() {
	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		System.out.println("Before Filter process");	
		chain.doFilter(request, response);
		
		HttpServletRequest req= (HttpServletRequest)request;
		System.out.println(req.getRequestURI());
		
		System.out.println("after  filter process");
	}

	public void init(FilterConfig fConfig) throws ServletException {
	}

}