<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>For Each List</title>
</head>
<%@ taglib uri="http://training.com/examples/greet" prefix="mytag"%>
<body>
	<h2>Name List</h2>
	<mytag:foreach items="names"></mytag:foreach>

</body>
</html>