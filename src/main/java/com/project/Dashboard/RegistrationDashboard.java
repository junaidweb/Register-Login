package com.project.Dashboard;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/Register")
public class RegistrationDashboard extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public RegistrationDashboard() {
		super();

	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String username = request.getParameter("username");
		String email = request.getParameter("email");
		String mob = request.getParameter("mobile");
		String pass = request.getParameter("password");
		RequestDispatcher dispatcher = null;
		try {

			Class.forName("com.mysql.cj.jdbc.Driver");

			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/students", "root", "Root");
			System.out.println("DB connected");
			PreparedStatement pst = con
					.prepareStatement("insert into Dashboard(username,email,mob,pass) values(?,?,?,?)");
			pst.setString(1, username);
			pst.setString(2, email);
			pst.setString(3, mob);
			pst.setString(4, pass);

			int row = pst.executeUpdate();
			dispatcher = request.getRequestDispatcher("Register.jsp");
			if (row > 0) {
				RequestDispatcher dispatche = request.getRequestDispatcher("index.jsp");
				dispatche.include(request, response);
			} else {
				RequestDispatcher dispatche = request.getRequestDispatcher("index.jsp");
				dispatche.include(request, response);
			}
			con.close();

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("Something went wrong");
		}
	}

}
