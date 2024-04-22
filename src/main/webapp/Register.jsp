<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register Page</title>
<style>
body {
	background-image: url('image/backpic.jpg');
	background-size: cover;
	background-repeat: no-repeat;
}

body {
	font-family: Arial, sans-serif;
	background-color: #e6dbda;
}

.container {
	width: 50%;
	margin: 0 auto;
	padding: 20px;
	background-color: rgba(255, 255, 255, 0.5);
	/*  background-color: #e6dbda; */
	border-radius: 5px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

input[type="text"], input[type="password"], input[type="email"] {
	width: 100%;
	padding: 10px;
	margin: 5px 0;
	border: 1px solid #ccc;
	border-radius: 3px;
	box-sizing: border-box;
}

input[type="submit"] {
	width: 100%;
	background-color: #4caf50;
	color: white;
	padding: 10px 0;
	margin: 10px 0;
	border: none;
	border-radius: 3px;
	cursor: pointer;
}

input[type="submit"]:hover {
	background-color: #45a049;
}
</style>
</head>
<body>
	<img src="">
	<div class="container">
		<h2>User Registration</h2>
		<form action="Register" method="post">
			<label for="username">Username:</label> <input type="text"
				id="username" name="username" required> <br /> <label
				for="email">Email:</label> <input type="email" id="email"
				name="email" required> <br /> <label for="Mobile">Mobile:</label>
			<input type="text" id="Mobile" name="mobile" required> <br />
			<label for="password">Password:</label> <input type="password"
				id="password" name="password" required> <br /> <input
				type="submit" value="Register">
		</form>
	</div>


</body>
</html>