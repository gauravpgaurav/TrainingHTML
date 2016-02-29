<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Second JSP</title>
</head>
<body>

	<div style="text-align: right;">
		Welcome :
		<%=session.getAttribute("userName")%>
	</div>

	New Session :=
	<span style="color: red"><%=session.isNew()%></span>
	<br> Session Id :=
	<span style="color: blue"><%=session.getId()%></span>
	<br>
	<hr>

	<%
		session.invalidate();
	%>
	<a href="Third.jsp">Continue to Third JSP</a>
</body>
</html>