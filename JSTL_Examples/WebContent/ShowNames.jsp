<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Show All Names</title>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
</head>
<body>

	<table border="1">
		<c:forEach items="${requestScope.nameList}" var="bot">
			<tr>
				<c:if test="${bot.contains('O')}">
					<td><b><c:out value="${bot}" /></b></td>
				</c:if>
				<c:if test="${!bot.contains('O')}">
					<td><i><c:out value="${bot}" /></i></td>
				</c:if>
			</tr>
		</c:forEach>
	</table>

</body>
</html>