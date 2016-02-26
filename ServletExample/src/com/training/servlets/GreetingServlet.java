package com.training.servlets;

import java.io.*;
import java.util.logging.Logger;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class GreetingServlet
 */
public class GreetingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	Logger log = Logger.getLogger(this.getClass().getName());

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public GreetingServlet() {
		super();
		// TODO Auto-generated constructor stub
		log.info("=== Constructor Called ===");
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		log.info("Vendor -Response Object" + request.getClass().toString());
		log.info("Vendor -Response Object" + response.getClass().toString());

		String user = request.getParameter("userName");
		String password = request.getParameter("passWord");
		String role = request.getParameter("role");

		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		out.println("<h1 style='text-align:center'>Welcome to Servlet Programming !</h1>");

		out.println("User Name : " + user);
		out.println("Role : " + role);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
