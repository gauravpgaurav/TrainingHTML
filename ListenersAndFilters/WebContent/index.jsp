<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h3>
		LOGIN
		<!--
		<a href="SecondServlet">Continue</a>
-->
	</h3>
	<form action="SecondServlet" method="post">
		User Name :<br> <input type="text" name="userName"><br>
		<br> Role :<br>
		<select name="role">
			<option value="CHF">Chef</option>
			<option value="WTR">Waiter</option>
			<option value="MGR">Manager</option>
		</select> <br> <br>Password :<br> <input type="password"
			name="passWord"> <br>
		<hr>
		<input type="submit" value="Login" />
	</form>

</body>
</html>