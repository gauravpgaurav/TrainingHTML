<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>FMT</title>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
</head>
<body>

	<fmt:setLocale value="en" />


	<fmt:setBundle basename="MessageResource" var="msg" scope="page" />
	<form>
		<label><fmt:message key="forms.label.userName" bundle="${msg}" /></label>
		<input type="text" name="userName"> <label><fmt:message
				key="forms.label.passWord" bundle="${msg}" /></label> <input
			type="password" name="passWord">
	</form>
	
	<br>
	<jsp:useBean id="now" class="java.util.Date" />

	<fmt:timeZone value="America/Los_Angeles">
		Pacific Time: <br>
		<fmt:formatDate type="time" timeStyle="short" value="${now}" />
	</fmt:timeZone>
	<br>
	<br> Local Time:
	<br>
	<fmt:formatDate type="time" timeStyle="short" value="${now}" />
</body>

</html>