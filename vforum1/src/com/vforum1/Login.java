package com.vforum1;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try
		{
		String uname = request.getParameter("username");
		String pass = request.getParameter("password");
		String dbName=null;
		String dbPass=null;
		Class.forName("oracle.jdbc.driver.OracleDriver");  
    	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","bes","123");  
    	PreparedStatement st=con.prepareStatement("Select * from users1 where username=? and password =?");
		
		st.setString(1,uname);
		
		st.setString(2,pass);
    	ResultSet rs=st.executeQuery();
    	PrintWriter out=response.getWriter();
    	
    	while(rs.next())
    	{
    		dbName=rs.getString(3);
    		dbPass=rs.getString(7);
    	}
    	if(uname.equals(dbName) && pass.equals(dbPass))
    	{
    		out.println("Logged in");
    		  
    	}
    	else
    	{
    		RequestDispatcher rd= request.getRequestDispatcher("login.jsp");
    		rd.include(request,response);
    		//response.sendRedirect("login.jsp");
    	}
    	
    	
    	
		
    	          
    	}
		catch(Exception e)
		{
			System.out.println(e);
		}
	}

}
