<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<body>
	<h2>Login</h2>
	<form action="user/login" method="post">
		<table>
			<tr>
				<td>Email</td>
				<td><input type="text" name="userName" />
			</tr>
			<tr>
				<td>Password</td>
				<td><input type="text" name="password" />
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" value="login" />
			</tr>
		</table>
	</form>
	<hr />
	<a href="register/registerPage">New User</a>


</body>
</html>
