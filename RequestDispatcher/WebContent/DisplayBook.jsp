<%@ page import="com.training.entity.*" language="java"
	contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Book</title>
</head>
<body>
	<%
		Book bookResult = (Book) request.getAttribute("bookResult");

		if (bookResult != null) {
	%>
	<table border="1" align="center">

		<thead>
			<tr>
				<td>Book Number</td>
				<td>Book Name</td>
				<td>Book Author</td>
				<td>Book Price</td>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>
					<%
						out.println(bookResult.getBookNumber());
					%>
				</td>
				<td>
					<%
						out.println(bookResult.getBookName());
					%>
				</td>
				<td>
					<%
						out.println(bookResult.getAuthor());
					%>
				</td>
				<td>
					<%
						out.println(bookResult.getPrice());
					%>
				</td>
			</tr>
		</tbody>
	</table>
	<%
		} else {
			out.println("<h3>Book Doesn't Exist !</h3>");
		}
	%>
</body>
</html>