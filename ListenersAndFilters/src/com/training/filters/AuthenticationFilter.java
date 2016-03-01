package com.training.filters;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

/**
 * Servlet Filter implementation class AuthenticationFilter
 */
public class AuthenticationFilter implements Filter {

	/**
	 * Default constructor.
	 */
	public AuthenticationFilter() {
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

		// System.out.println("Pre Processing By Authentication Filter");
		chain.doFilter(request, response);
		HttpServletRequest request2 = (HttpServletRequest) request;
		String role = request2.getParameter("role");

		if ((boolean) request2.getAttribute("userValidation"))

			switch (role) {

			case "CHF":
				RequestDispatcher view1 = request.getRequestDispatcher("/Chef.jsp");
				view1.forward(request, response);
				break;
			case "WTR":
				RequestDispatcher view2 = request.getRequestDispatcher("/Waiter.jsp");
				view2.forward(request, response);
				break;
			case "MGR":
				RequestDispatcher view3 = request.getRequestDispatcher("/Manager.jsp");
				view3.forward(request, response);
				break;

			}
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
