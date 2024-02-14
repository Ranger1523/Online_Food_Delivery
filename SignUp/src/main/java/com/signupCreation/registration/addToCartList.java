package com.signupCreation.registration;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class addToCartList
 */
@WebServlet("/addToCartList")
public class addToCartList extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		RequestDispatcher dispatcher = null;
		int product_id = Integer.parseInt(request.getParameter("id"));
		String quantity = request.getParameter("quantity");
		int price = Integer.parseInt(request.getParameter("price"));
		
		if (quantity == null || quantity.equals("")) {
			request.setAttribute("status", "invalidQuantity");
			dispatcher = request.getRequestDispatcher("menu.jsp");
			dispatcher.forward(request, response);
		}
		
		HttpSession session = request.getSession(false);
		ArrayList<cartList> cartListal = (ArrayList<cartList>) session.getAttribute("cartListal");
		cartList clobj = new cartList();
		clobj.setProduct_id(product_id);
		clobj.setQuantity(Integer.parseInt(quantity));
		clobj.setPrice(price);
		cartListal.add(clobj);
//		System.out.println(clobj.getPrice());
//		System.out.println(clobj.getQuantity());
//		System.out.println(clobj.getProduct_id());
		request.setAttribute("status", "addToCartSuccess");
		dispatcher = request.getRequestDispatcher("menu.jsp");

//		System.out.println(cartListal.toString());
		dispatcher.forward(request,response);
		
	}

}
