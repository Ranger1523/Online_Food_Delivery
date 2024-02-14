package com.signupCreation.registration;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RegistrationServlet
 */
@WebServlet("/register")
public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String uname = request.getParameter("name");
		String uemail = request.getParameter("email");
		String upwd = request.getParameter("pass");
		String repwd = request.getParameter("re_pass");
		String umobile = request.getParameter("contact");
		String ufirstAnswer = request.getParameter("firstAnswer");
		String usecondAnswer = request.getParameter("secondAnswer");
		String usertype = request.getParameter("usertype");
		
		RequestDispatcher dispatcher = null;
		Connection con = null;
		
		if(uname == null || uname.equals("")) {
			request.setAttribute("status","invalidName");
			dispatcher = request.getRequestDispatcher("registration.jsp");
			dispatcher.forward(request, response);
		}
		if(uemail == null || uemail.equals("")) {
			request.setAttribute("status","invalidEmail");
			dispatcher = request.getRequestDispatcher("registration.jsp");
			dispatcher.forward(request, response);
		}
		if (upwd == null || upwd.equals("")) {
			request.setAttribute("status", "invalidUpwd");
			dispatcher = request.getRequestDispatcher("registration.jsp");
			dispatcher.forward(request, response);
		}
		if(!upwd.equals(repwd)){
			request.setAttribute("status","invalidConfirmPassword");
			dispatcher = request.getRequestDispatcher("registration.jsp");
			dispatcher.forward(request, response);
		}
		if(umobile == null || umobile.equals("")) {
			request.setAttribute("status","invalidMobile");
			dispatcher = request.getRequestDispatcher("registration.jsp");
			dispatcher.forward(request, response);
		}else if(umobile.length() >10) {
			request.setAttribute("status","invalidMobileLength");
			dispatcher = request.getRequestDispatcher("registration.jsp");
			dispatcher.forward(request, response);
		}
		if(ufirstAnswer == null || ufirstAnswer.equals("") || usecondAnswer == null || usecondAnswer.equals("")) {
			request.setAttribute("status","invalidSecurityAnswer");
			dispatcher = request.getRequestDispatcher("registration.jsp");
			dispatcher.forward(request, response);
		}

			
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			System.out.println("Connecting to Database");
		    con = DriverManager.getConnection("jdbc:oracle:thin:@BlackPearl:1521:orcl", "sys as sysdba","root");
		    System.out.println("Connected....");
			PreparedStatement pst = con.prepareStatement("INSERT INTO users values(user_id_seq.nextval,?,?,?,?,?,?,?)");
			pst.setString(1, uname);
			pst.setString(2, upwd);
			pst.setString(3, uemail);
			pst.setString(4, umobile);
			pst.setString(5, ufirstAnswer);
			pst.setString(6, usecondAnswer);
			pst.setString(7, usertype);
			
			int rowCount = pst.executeUpdate();
			dispatcher = request.getRequestDispatcher("registration.jsp");
			if(rowCount > 0) {
				request.setAttribute("status","success");
			}else {
				request.setAttribute("status", "failed");
			}
			
			dispatcher.forward(request, response);
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

}
