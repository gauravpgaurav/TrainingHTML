<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" errorPage="ExceptionHandler.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>
<body>
	<header>
		<h1>Customer Details Management</h1>
		<a href="index.html">Home</a><br>
		<hr>
	</header>

	<section>
		<form action="ProcessCustomer.jsp" method="post">
			<table border="1">
				<tr>
					<td>User ID :</td>
					<td><input type="text" name="customerId"></td>
				</tr>
				<tr>
					<td>User Name :</td>
					<td><input type="text" name="customerName"></td>
				</tr>
				<tr>
					<td>Password :</td>
					<td><input type="password" name="passWord"></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="Login"
						style="float: right; width: 50%"></td>
				</tr>
			</table>
		</form>
	</section>
	<footer>
		<%@ include file="Footer.jsp"%>
	</footer>
</body>
</html>