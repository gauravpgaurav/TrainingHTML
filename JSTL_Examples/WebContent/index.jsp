<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Scriptless JSP</title>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
</head>
<body>

	<c:set var="name" value="Welcome to JSTL Programming" scope="page" />
	<span style="color: orange;"> <c:out value="${name}" />
	</span>
	<br>
	<br>
	<a href="NameServlet">Droids You Are Not Looking For</a>
	<br>
	<br>
	<a href="AddUser.jsp">Language</a>
</body>
</html>