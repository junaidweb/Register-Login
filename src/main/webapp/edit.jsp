<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ page import="java.sql.*, java.io.*, java.util.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Student</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f2f2f2;
        }
        .container {
            max-width: 500px;
            margin: 50px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        h1 {
            text-align: center;
            color: #333;
        }
        form {
            margin-top: 20px;
        }
        input[type="text"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 3px;
            box-sizing: border-box;
        }
        input[type="submit"] {
            width: 100%;
            padding: 10px;
             background-color: #4caf50;
            color: #fff;
            border: none;
            border-radius: 3px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #4caf50;
        }
        .error-message {
            color: red;
            margin-top: 10px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Edit Student</h1>
        <%
            int id = Integer.parseInt(request.getParameter("id"));
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/students", "root", "Root");
                String sql = "SELECT * FROM Dashboard WHERE id=?";
                PreparedStatement pst = con.prepareStatement(sql);
                pst.setInt(1, id);
                ResultSet rs = pst.executeQuery();
                if (rs.next()) {
                    String username = rs.getString("username");
                    String email = rs.getString("email");
                    String mobile = rs.getString("mob");
                    String password = rs.getString("pass");
        %>
        <form action="update.jsp" method="post">
            <input type="hidden" name="id" value="<%=id%>">
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" value="<%=username%>">
            <label for="email">Email:</label>
            <input type="text" id="email" name="email" value="<%=email%>">
            <label for="mobile">Mobile:</label>
            <input type="text" id="mobile" name="mobile" value="<%=mobile%>">
            <label for="password">Password:</label>
            <input type="text" id="password" name="password" value="<%=password%>">
            <input type="submit" value="Update">
        </form>
        <% } else { %>
        <p class="error-message">Student not found.</p>
        <% }
            } catch (Exception e) {
                e.printStackTrace();
            }
        %>
    </div>
</body>
</html>
