package com.signupCreation.registration;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Login
 */
@WebServlet("/login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String uemail = request.getParameter("username");
		String upwd = request.getParameter("password");
		String usertype = request.getParameter("usertype");

		HttpSession session = request.getSession();
		session.setAttribute("uemail", uemail);
		
		ArrayList<cartList> cartListal = new ArrayList<cartList>();
		session.setAttribute("cartListal", cartListal);
		
		RequestDispatcher dispatcher = null;
		if (uemail == null || uemail.equals("")) {
			request.setAttribute("status", "invalidEmail");
			dispatcher = request.getRequestDispatcher("login.jsp");
			dispatcher.forward(request, response);
		}
		if (upwd == null || upwd.equals("")) {
			request.setAttribute("status", "invalidUpwd");
			dispatcher = request.getRequestDispatcher("login.jsp");
			dispatcher.forward(request, response);
		}
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@BlackPearl:1521:orcl", "sys as sysdba","root");
			if(usertype.equals("user")) {
				PreparedStatement pst = con.prepareStatement("SELECT * FROM users WHERE uemail = ? AND upwd = ?  AND usertype = ?");
				pst.setString(1, uemail);
				pst.setString(2, upwd);
				pst.setString(3, usertype);
				
				ResultSet rs = pst.executeQuery();
				
				if (rs.next()) {
					session.setAttribute("user_id", rs.getInt(1));
					session.setAttribute("name", rs.getString("uname")); // here it is!!!
					dispatcher = request.getRequestDispatcher("index.jsp");
				} else {
					request.setAttribute("status", "failed");
					dispatcher = request.getRequestDispatcher("login.jsp");
				}
				dispatcher.forward(request, response);
			}
			
			else if(usertype.equals("admin")){
				PreparedStatement pst = con.prepareStatement("SELECT * FROM users WHERE uemail = ? AND upwd = ?  AND usertype = ?");
				pst.setString(1, uemail);
				pst.setString(2, upwd);
				pst.setString(3, usertype);
	
				ResultSet rs = pst.executeQuery();
				if (rs.next()) {
					session.setAttribute("name", rs.getString("uname"));
					dispatcher = request.getRequestDispatcher("adminHome.jsp");
				} else {
					request.setAttribute("status", "failed");
					dispatcher = request.getRequestDispatcher("login.jsp");
				}
				dispatcher.forward(request, response);
//				dispatcher = request.getRequestDispatcher("adminHome.jsp");
//				dispatcher.forward(request, response);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
