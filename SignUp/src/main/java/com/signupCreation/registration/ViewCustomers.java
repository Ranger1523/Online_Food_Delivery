package com.signupCreation.registration;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//import org.apache.logging.log4j.LogManager;
//import org.apache.logging.log4j.Logger;

@WebServlet("/viewCustomers")    
public class ViewCustomers extends HttpServlet  
{    
     /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

//	Logger logger = LogManager.getLogger("myLogger");
	
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException 
      {  
         PrintWriter out = res.getWriter();  
         res.setContentType("text/html");  
         out.println("<html><body>");  
         try 
         {  
        	 Class.forName("oracle.jdbc.driver.OracleDriver");
				Connection con = DriverManager.getConnection("jdbc:oracle:thin:@BlackPearl:1521:orcl", "sys as sysdba","root"); // Here dsnname- mydsn,user id- system(for oracle 10g),password is pintu.  
             PreparedStatement stmt = null;  
             out.print ("<table width=50% border=1>");
             out.print ("<caption>Users Details:</caption>");
             String userId = "USER_ID";
             String uName = "UNAME";
             String uEmail = "UEMAIL";
//             String tableName = "users";
//             String select = "SELECT";
//             String from = "FROM";
             
             stmt = con.prepareStatement("select "+userId+","+uName+","+uEmail+",UMOBILE,USERTYPE from users");
             
//             org.apache.log4j.Logger logger = 
             
//             logger.info("within preparedstatement");
//             logger.info(stmt.toString());
             ResultSet rs = stmt.executeQuery();  
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
              out.print ("<tr><td>" + rs.getInt (1) + "</td><td>" +  rs.getString (2) + " </td><td>" + rs.getString (3) + "</td><td>" +rs.getString(4)+ "</td><td>" + rs.getString(5) +"</td></tr>");
             }
             out.print ("</table>");  
             out.print("</body></html>");
             con.close();  
            }catch (Exception e) 
            {  
             out.println(e); 
             e.printStackTrace();
             System.out.println(e);
         }  
     }  
 }  