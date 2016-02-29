<%@page import="java.util.HashMap"%>
<%@ page import="com.training.entity.*" language="java"
	contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Books</title>
</head>
<body>

	<%
		HashMap<Long, Book> bookList = (HashMap<Long, Book>) request.getAttribute("foundBooks");
		for (Book book : bookList.values()) {
			out.println(book);
	%><br>
	<%
		}
	%>
</body>
</html>