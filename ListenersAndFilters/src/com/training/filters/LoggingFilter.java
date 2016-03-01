package com.training.filters;

import java.io.IOException;
import java.util.logging.Logger;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

/**
 * Servlet Filter implementation class LoggingFilter
 */
public class LoggingFilter implements Filter {

	Logger log = Logger.getLogger("Log Message");

	/**
	 * Default constructor.
	 */
	public LoggingFilter() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {

		// System.out.println("Pre Processing By Logging Filter");

		HttpServletRequest req = (HttpServletRequest) request;
		String reqHost = req.getRemoteHost();
		String reqURL = req.getRequestURI();
		StringBuffer buffer = new StringBuffer("One Request");

		buffer.append("from ");
		buffer.append(reqHost);
		buffer.append(" for ");
		buffer.append(reqURL);
		
		System.out.println(buffer);
		
		chain.doFilter(request, response);

		// System.out.println("Post Processing By Logging Filter");

	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
