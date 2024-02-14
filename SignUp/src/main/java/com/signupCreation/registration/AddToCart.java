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
 * Servlet implementation class AddToCart
 */
@WebServlet("/addToCart")
public class AddToCart extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
//		String quantity = request.getParameter("quantity");
//		int product_id = Integer.parseInt(request.getParameter("id"));
		HttpSession session=request.getSession(false);
		String uemail = (String) session.getAttribute("uemail");
		int user_id = (int) session.getAttribute("user_id");
		ArrayList<cartList> cartListal = (ArrayList<cartList>) session.getAttribute("cartListal");
//		System.out.println(quantity);
//		System.out.println(product_id);
//		System.out.println(uemail);
		RequestDispatcher dispatcher = null;
		
//		if (quantity == null || quantity.equals("")) {
//			request.setAttribute("status", "invalidQuantity");
//			dispatcher = request.getRequestDispatcher("menu.jsp");
//			dispatcher.forward(request, response);
//		}
//		else {
			try {
				Class.forName("oracle.jdbc.driver.OracleDriver");
				Connection con = DriverManager.getConnection("jdbc:oracle:thin:@BlackPearl:1521:orcl", "sys as sysdba","root");
				ResultSet rs = null;
				for(int i=0;i<cartListal.size();i++) {
					
				
					PreparedStatement pst = con.prepareStatement("INSERT INTO order_details(order_details_id,product_id,quantity,order_id,uemail,user_id) VALUES(order_details_seq.nextval,?,?,1,?,?)");
					pst.setInt(1, cartListal.get(i).getProduct_id());
					pst.setInt(2, cartListal.get(i).getQuantity());
					pst.setString(3, uemail);
					pst.setInt(4, user_id);
					
					rs = pst.executeQuery();
				}
				if (rs.next()) {
					request.setAttribute("status", "checkoutSuccessful");
					dispatcher = request.getRequestDispatcher("index.jsp");
				}
				dispatcher.forward(request, response);
				
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
//		}
		
	}


}
