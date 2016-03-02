<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Customer</title>
</head>
<body>
	<header>
		<%@ include file="Header.jsp"%>
	</header>

	<section>
		<form action="ProcessCustomer.jsp">
			<table border="1">
				<tr>
					<td><label>Customer ID :</label></td>
					<td><input type="text" name="customerId"></td>
				</tr>
				<tr>
					<td><label>Customer Name :</label></td>
					<td><input type="text" name="customerName"></td>
				</tr>
				<tr>
					<td><label>Customer Email :</label></td>
					<td><input type="email" name="email"></td>
				</tr>
				<tr>
					<td><label>Customer HandPhone :</label></td>
					<td><input type="tel" name="handPhone" pattern="\d{10}"
						placeholder="10 Digits"></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="Add Customer"></td>
				</tr>
			</table>
		</form>
	</section>

	<footer>
		<%@ include file="Footer.jsp"%>
	</footer>
</body>
</html>