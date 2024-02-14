package com.signupCreation.registration;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Cart
 */
@WebServlet("/cart")
public class Cart extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();  
        response.setContentType("text/html");  
        out.println("<html><body>");
        out.println("<input type=\"hidden\" id=\"status\"\r\n"
        			+ "value=\"<%=request.getAttribute(\"status\")%>\">"
        			+ "<h1>Cart</h1>");
        HttpSession session = request.getSession(false);
        @SuppressWarnings("unchecked")
		ArrayList<cartList> cartListal = (ArrayList<cartList>) session.getAttribute("cartListal");
        out.println(cartListal.toString());
        
        int total_amount = 0;
        for(cartList c: cartListal) {
        	total_amount+=c.getQuantity()*c.getPrice();
        }
        out.println("<br><h2>Total Amount: "+total_amount+"</h2>");
        out.println("<form action = \"addToCart\" method = \"post\">"
        			+"<input type = \"submit\" value = \"Checkout\" />"
        			+"</body></html>");
        out.print("<script src=\"https://unpkg.com/sweetalert/dist/sweetalert.min.js\"></script>\r\n"
        		+ "	<link rel=\"stylesheet\" href=\"alert/dist/sweetalert.css\">\r\n"
        		+ "\r\n"
        		+ "	<script type=\"text/javascript\">\r\n"
        		+ "		var status = document.getElementById(\"status\").value;\r\n"
        		+ "		if (status == \"checkoutSuccessful\") {\r\n"
        		+ "			swal(\"Congrats!\", \"Checkout Successful\", \"success\");\r\n"
        		+ "		}\r\n"
        		+ "	</script>");
	}

	

}
