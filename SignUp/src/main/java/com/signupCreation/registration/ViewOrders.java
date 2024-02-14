package com.signupCreation.registration;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
//import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
//import java.sql.SQLException;
import java.sql.Statement;

//import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ViewOrders
 */
@WebServlet("/viewOrders")
public class ViewOrders extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ViewOrders() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();  
        response.setContentType("text/html");  
        out.println("<html><body>");  
        try 
        {  
       	 Class.forName("oracle.jdbc.driver.OracleDriver");
				Connection con = DriverManager.getConnection("jdbc:oracle:thin:@BlackPearl:1521:orcl", "sys as sysdba","root"); // Here dsnname- mydsn,user id- system(for oracle 10g),password is pintu.  
            Statement stmt = con.createStatement();  
            out.print ("<table width=50% border=1>");
            out.print ("<caption>Orders Details:</caption>");
            ResultSet rs = stmt.executeQuery("select * from order_details ORDER BY user_id"); 
            out.print ("</br></br>");
            ResultSetMetaData rsmd = rs.getMetaData ();
            if(rsmd != null) {
            int total = rsmd.getColumnCount ();
            out.print ("<tr>");
            for (int i = 1; i <= total; i++)
            {
             out.print ("<th>" + rsmd.getColumnName (i) + "</th>");
            }
            out.print ("</tr>");
            /* Printing result */
            while (rs.next ())
            {
             out.print ("<tr><td>" + rs.getInt (1) + "</td><td>" +  rs.getInt (2) + " </td><td>" + rs.getInt (3) + "</td><td>" +rs.getInt(4)+ "</td><td>" +rs.getString(5)+"</td><td>" +rs.getInt(6)+ "</td></tr>");
            }
            out.print ("</table>");  
            con.close(); 
            } 
            else {
            	out.println("Customers didn't order anything yet...!!!");
            }
            PrintWriter out1 = response.getWriter();
            String docType = "<!doctype html public \"-//w3c//dtd html 4.0 " + "transitional//en\">\n";
                    
                 out1.println(docType +
                    "<html>\n" +
                       "<head><title>" + "Enter User_Id:" + "</title></head>\n" +
                       "<body bgcolor = \"#f0f0f0\">\n" +
                          "<h1 align = \"center\">" + "" + "</h1>\n" +
                          "<form action = \"viewOrders\" method = \"GET\">"+
                       "Enter User_ID:" +"<input type = \"text\" name = \"umail\">"
                       +"<br />"+"<input type = \"submit\" value = \"Submit\" />"+
                       "</body>" +
                    "</html>"
                 );
           }catch (Exception e) 
           {  
            out.println(e);  
           }	 
	}
}