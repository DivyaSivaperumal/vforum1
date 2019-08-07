package com.vforum1;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class Reg extends HttpServlet{
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)  
	        throws ServletException, IOException {  
		try{  
			if(request.getParameter("login")!=null)
			{
			 String id= request.getParameter("id");
			    String ename = request.getParameter("name");
				String uname = request.getParameter("username");
				String em = request.getParameter("email");
				String loc = request.getParameter("location");
				String des = request.getParameter("designation");
				String pass = request.getParameter("password");
			
	    	Class.forName("oracle.jdbc.driver.OracleDriver");  
	    	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","bes","123");  
	    	PreparedStatement st= con.prepareStatement("insert into users1 values(?,?,?,?,?,?,?)");
			st.setString(1,id);
			st.setString(2,ename);
			st.setString(3,uname);
			st.setString(4,em);
			st.setString(5,loc);
			st.setString(6,des);
			st.setString(7,pass);
	    	st.executeUpdate();
	    	PrintWriter out=response.getWriter();
	    	out.println("You have successfully registered");
			}
	    	          
	    	}
			catch(Exception e)
			{
				System.out.println(e);
			}
	
	}
}






	

