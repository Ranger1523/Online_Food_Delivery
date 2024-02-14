package com.signupCreation.registration;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class NewPassword
 */
@WebServlet("/newPassword")
public class NewPassword extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession(false);
//		String email = (String) session.getAttribute("uemail");
		String newPassword = request.getParameter("password");
		String confPassword = request.getParameter("confPassword");
		RequestDispatcher dispatcher = null;
		if(newPassword == null || confPassword == null || newPassword.equals("") || confPassword.equals("")) {
			request.setAttribute("status","invalidPwd");
			dispatcher = request.getRequestDispatcher("newPassword.jsp");
			dispatcher.forward(request, response);
		}
		if(!newPassword.equals(confPassword)) {
			request.setAttribute("status","unequalPwd");
			dispatcher = request.getRequestDispatcher("newPassword.jsp");
			dispatcher.forward(request, response);
		}
		if (newPassword != null && confPassword != null && newPassword.equals(confPassword)) {

			try {
				Class.forName("oracle.jdbc.driver.OracleDriver");
				Connection con = DriverManager.getConnection("jdbc:oracle:thin:@BlackPearl:1521:orcl", "sys as sysdba","root");
				PreparedStatement pst = con.prepareStatement("update users set upwd = ? where uemail = ? ");
				pst.setString(1, newPassword);
				pst.setString(2, (String) session.getAttribute("uemail"));

				int rowCount = pst.executeUpdate();
				if (rowCount > 0) {
					request.setAttribute("status", "resetSuccess");
					dispatcher = request.getRequestDispatcher("login.jsp");
				} else {
					request.setAttribute("status", "resetFailed");
					dispatcher = request.getRequestDispatcher("login.jsp");
				}
				dispatcher.forward(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}

}
