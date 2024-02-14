package com.signupCreation.registration;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
//import java.util.Properties;
//import java.util.Random;
//
//import javax.mail.Message;
//import javax.mail.MessagingException;
//import javax.mail.PasswordAuthentication;
//import javax.mail.Session;
//import javax.mail.Transport;
//import javax.mail.internet.InternetAddress;
//import javax.mail.internet.MimeMessage;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ForgotPassword
 */
@WebServlet("/forgotPassword")
public class ForgotPassword extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession(true);
		String uemail = request.getParameter("email");
		String ufirstAnswer = request.getParameter("firstAnswer");
		String usecondAnswer = request.getParameter("secondAnswer");
//		String getNewPassword = request.getParameter("getNewPassword");
//		String backToLogin = request.getParameter("backToLogin");

		RequestDispatcher dispatcher = null;
//		HttpSession session = request.getSession();

		if (uemail == null || uemail.equals("")) {
			request.setAttribute("status", "invalidEmail");
			dispatcher = request.getRequestDispatcher("login.jsp");
			dispatcher.forward(request, response);
		}
		if (ufirstAnswer == null || ufirstAnswer.equals("") || usecondAnswer == null || usecondAnswer.equals("")) {
			request.setAttribute("status", "invalidAnswer");
			dispatcher = request.getRequestDispatcher("login.jsp");
			dispatcher.forward(request, response);
		}

		try {

			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@BlackPearl:1521:orcl", "sys as sysdba","root");
			PreparedStatement pst = con
					.prepareStatement("SELECT * FROM users WHERE uemail = ? AND firstAnswer = ? AND secondAnswer = ?");
			pst.setString(1, uemail);
			pst.setString(2, ufirstAnswer);
			pst.setString(3, usecondAnswer);
			session.setAttribute("uemail",uemail);
			ResultSet rs = pst.executeQuery();
			if (rs.next()) {
				request.setAttribute("status", "success");
				dispatcher = request.getRequestDispatcher("newPassword.jsp");
			} else {
				request.setAttribute("status", "invalidAnswers");
				dispatcher = request.getRequestDispatcher("forgotPassword.jsp");
			}
			dispatcher.forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
