<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Page</title>
</head>
<body>
	<h1>Update Student</h1>
	<%
	int id = Integer.parseInt(request.getParameter("id"));
	String username = request.getParameter("username");
	String email = request.getParameter("email");
	String mob = request.getParameter("mob");
	String pass = request.getParameter("pass");

	try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/students", "root", "Root");
		String sql = "UPDATE Dashboard SET username=?, email=?, mob=?, pass=? WHERE id=?";
		PreparedStatement pst = con.prepareStatement(sql);

		pst.setString(1, username);
		pst.setString(2, email);
		pst.setString(3, mob);
		pst.setString(4, pass);
		pst.setInt(5, id);

		int rowsAffected = pst.executeUpdate();

		if (rowsAffected > 0) {
	%>
	<p>
		Book with ID
		<%=id%>
		has been updated.
	</p>
	<%
	} else {
	%>
	<p>
		Failed to update student with ID
		<%=id%>.
	</p>
	<%
	}
	} catch (Exception e) {
	e.printStackTrace();
	%>
	<p>An error occurred while updating the student.</p>
	<%
	}
	%>
	<a href="BookDisplay.jsp">Back to Dashboard</a>
</body>
</html>