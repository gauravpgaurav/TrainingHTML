<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>First JSP</title>
</head>
<body>
	<%
		session.setAttribute("userName", "Ramesh");
	%>

	<div style="text-align: right;">
		Welcome :
		<%=session.getAttribute("userName")%>
	</div>
	New Session :=
	<span style="color: red"><%=session.isNew()%><br></span> Session
	Id :=
	<span style="color: blue"><%=session.getId()%></span>
	<br>
	<hr>
	<a href="FirstServlet">Continue to Servlet</a>
</body>
</html>