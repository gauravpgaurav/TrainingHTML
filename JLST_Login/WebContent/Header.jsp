<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Header</title>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
</head>
<body>

	<script type="text/javascript">
		function userInfo() {
			alert("Succesfully Logged Out!!!");
		}
		function timedOut() {

			alert("Timed Out!!!");
		}
	</script>
	<section>
		<c:if test="${empty sessionScope.sessionUser}" var="sessionTest">
			<script type="text/javascript">
				window.onload = timedOut();
			</script>
			<c:redirect url="index.html"></c:redirect>

		</c:if>
		<c:url value="logout.jsp" var="logoutURL" />
		<a href="<c:out value="${logoutURL}"/>" onCLick="userInfo()">LOGOUT</a>
	</section>

</body>
</html>