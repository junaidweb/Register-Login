<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
<style>
body {
	background-image: url('image/backpic.jpg');
	background-size: cover;
	background-repeat: no-repeat;
}

body {
	font-family: Arial, sans-serif;
	background-color: #f4f4f4;
}

.container {
	width: 300px;
	margin: 0 auto;
	margin-top: 100px;
	padding: 20px;
	background-color: rgba(255, 255, 255, 0.5);
	border-radius: 5px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

input[type="text"], input[type="password"] {
	width: 100%;
	padding: 10px;
	margin-bottom: 15px;
	border: 1px solid #ccc;
	border-radius: 5px;
	box-sizing: border-box;
}

input[type="submit"] {
	width: 100%;
	background-color: #4caf50;
	color: #fff;
	padding: 10px;
	border: none;
	border-radius: 5px;
	cursor: pointer;
	transition: background-color 0.3s ease;
}

input[type="submit"]:hover {
	background-color: #45a049;
}
</style>
</head>
<body>
	<div class="container">
		<h2>Login</h2>
		<form action="login" method="get">
			<label for="username">Username:</label> <input type="text"
				id="username" name="username" required> <label
				for="password">Password:</label> <input type="password"
				id="password" name="password" required> <input type="submit"
				value="Login">
			<p>
				Don't have an account? <a href="Register.jsp">Register here</a>.
			</p>
		</form>
	</div>
</body>
</html>