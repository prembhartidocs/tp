<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>New user Register here</title>
</head>
<body>
<form action="registration" method="post">
		<table>
			<tr>
				<td>Username</td>
				<td><input type="text" name="userName" />
			</tr>
			<tr>
				<td>Password</td>
				<td><input type="text" name="password" />
			</tr>
			<tr>
				<td>Email</td>
				<td><input type="text" name="email" />
			</tr>
			<tr>
				<td>dob</td>
				<td><input type="text" name="dob" />
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" value="Register" />
			</tr>
		</table>
	</form>
</body>
</html>