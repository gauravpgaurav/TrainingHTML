<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" errorPage="ExceptionHandler.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

</head>
<body>
	<header>
		<%@ include file="Header.jsp"%>
	</header>

	<section>
		<jsp:useBean id="custBean" class="com.training.beans.Customer"
			scope="session" />
		<jsp:setProperty property="*" name="custBean" />
		Dear :
		<jsp:getProperty property="customerName" name="custBean" />
		thanks for Adding <br> Invoking Bean Method <br>
		<c:out value="${custBean.getInfo()}" />
		
		<c:set var="loginUser" scope="session"  /> 
		
		
		<%=request.getAttribute("customerName") %>
		
		<br> <br> <br>
		<hr>
		<a href="CreateError.jsp">Throw Exception</a>
		<hr>
	</section>

	<footer>
		<%@ include file="Footer.jsp"%>
	</footer>
</body>
</html>