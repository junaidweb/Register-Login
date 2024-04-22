<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*, java.sql.*,jakarta.servlet.http.HttpServlet"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Dashboard</title>
<style>
body {
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 0;
}

header {
	background-color: #333;
	color: #fff;
	text-align: center;
}

nav {
	background-color: #333;
	color: #fff;
	padding: 10px;
}

.sidebar {
	background-color: #222;
	color: #fff;
	width: 200px;
	padding: 20px;
	position: fixed;
	top: 0;
	left: 0;
	height: 100%;
	overflow-y: auto;
}

.main-content {
	margin-left: 250px;
	padding: 20px;
}

.widget {
	background-color: #fff;
	border-radius: 5px;
	box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
	margin-bottom: 20px;
	padding: 20px;
}

table {
	width: 100%;
	border-collapse: collapse;
}

th, td {
	padding: 10px;
	border-bottom: 1px solid #ddd;
}

th {
	background-color: #f2f2f2;
}
</style>
<script>

function showPopup(name) {
    alert("Registered successfully! Welcome, " + name + "!");
}
</script>
</head>
<body>
	<header>
		<h1>Admin Dashboard</h1>
		<h1>
			Welcome
			<%=request.getParameter("username")%>!
		</h1>
	</header>

	<div class="sidebar">
		<h2>Sidebar</h2>
		<ul>
			<li><a href="#">Dashboard</a></li>
			<li><a href="#">Register</a></li>
			<li><a href="#">Show All</a></li>
			<li><a href="#">Admin</a></li>

		</ul>
	</div>
	<div class="main-content">
		<div class="widget">
			<h2>Student Details</h2>
			<table>
				<thead>
					<tr>
						<th>StdId</th>
						<th>Name</th>
						<th>Email</th>
						<th>Mobile</th>
						<th>Password</th>
						<th>Action</th>
					</tr>
				</thead>
				<tbody>
					<%
					try {
						Class.forName("com.mysql.jdbc.Driver");
						Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/students", "root", "Root");
						String sql = "select * from Dashboard";
						PreparedStatement pst = con.prepareStatement(sql);
						ResultSet rs = pst.executeQuery();
						while (rs.next()) {
					%>
					<tr>
						<td><%=rs.getInt("id")%></td>
						<td><%=rs.getString("username")%></td>
						<td><%=rs.getString("email")%></td>
						<td><%=rs.getString("mob")%></td>
						<td><%=rs.getString("pass")%></td>
						<td><a href="edit.jsp?id=<%=rs.getInt("id")%>">Edit</a></td>
						<td><a href="delete.jsp?id=<%=rs.getInt("id")%>">Delete</a></td>
					</tr>
					<%
					}
					} catch (Exception e) {
					e.printStackTrace();
					}
					%>
				</tbody>
			</table>
		</div>

	</div>

	<script>
        showPopup("<%=request.getParameter("username")%>
		");
	</script>
</body>
</html>