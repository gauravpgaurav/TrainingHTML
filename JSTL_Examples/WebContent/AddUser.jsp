<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
</head>
<body>
	<fmt:setBundle basename="MessageResource" var="msg" scope="page" />
	<form>
		<label><fmt:message key="forms.label.userName" bundle="${msg}" /></label>
		<input type="text" name="userName"> <label><fmt:message
				key="forms.label.passWord" bundle="${msg}" /></label> <input
			type="password" name="passWord">
	</form>

</body>

</html>