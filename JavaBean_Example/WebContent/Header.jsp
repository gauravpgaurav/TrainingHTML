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
	<h1>Customer Details Management</h1>
	
	<c:if test="${empty sessionScope.loginUser}">
		<c:redirect url="Login.jsp" />
	</c:if>
	
	<nav>
		<ul>
			<li><a href="index.html" onclick="userInfo()">Logout <c:out
						value="${sessionScope['loginUser']}" />
			</a></li>
		</ul>
	</nav>
</body>
</html>