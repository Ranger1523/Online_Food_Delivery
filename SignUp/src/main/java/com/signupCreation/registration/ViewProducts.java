package com.signupCreation.registration;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ViewItems
 */
@WebServlet("/viewProducts")
public class ViewProducts extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ViewProducts() {
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
            ResultSet rs = stmt.executeQuery("select * from products");  
            out.print ("</br></br>");
            ResultSetMetaData rsmd = rs.getMetaData ();
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
             out.print ("<tr><td>" + rs.getInt (1) + "</td><td>" +  rs.getString (2) + " </td><td>" + rs.getInt (3) + "</td></tr>");
            }
            out.print ("</table>");  
            con.close();  
           }catch (Exception e) 
           {  
            out.println(e);  
        }  
    }  
}  