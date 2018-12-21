<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>User management/Browse</title>
</head>
<body>
	<form method="post" action="/browse">
		<table id="userTable" border="1">
			<tr>
				<th></th>
				<th>First name</th>
				<th>Last name</th>
				<th>Date of birth</th>
			</tr>
			<c:forEach var="user" items="${sessionScope.users}">
				<tr>
					<td><input type="radio" name="id" id="id" value="${user.id}"></td>
					<td>${user.firstName}</td>
					<td>${user.lastName}</td>
					<td>${user.birthday}</td>
				</tr>
			</c:forEach>
		</table>
	</form>
</body>
</html>