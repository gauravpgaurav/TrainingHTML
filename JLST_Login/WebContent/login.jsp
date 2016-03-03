<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
</head>
<body>
	<c:if test="${requestScope.validateUser eq true}" var="validateTest">
		<c:set var="sessionUser" value="true" scope="session"></c:set>
		<c:redirect url="First.jsp"></c:redirect>
	</c:if>
	<c:if test="${requestScope.validateUser eq false}" var="validateTest">
		<span>Wrong Credentials!!! Try Again</span>
		<c:redirect url="index.html"></c:redirect>
	</c:if>

</body>
</html>