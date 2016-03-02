<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isErrorPage="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>My Exception Handler</title>

<style type="text/css">
.style4 {
	color: red;
	font-size: 1.2em;
}
</style>
</head>
<body>
	<h1>Exception Handler</h1>
	Exception Message
	<p class="style4">
		<%=exception.getMessage()%>
	</p>
	Exception Class
	<p class="style4">
		<%=exception.getClass()%>
	</p>
	<a href="index.html">Try Again</a>
</body>
</html>