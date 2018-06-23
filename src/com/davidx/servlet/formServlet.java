package com.davidx.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.davidx.db.DBConnection;

/**
 * Servlet implementation class formServlet
 */
@WebServlet("/formServlet")
public class formServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	 
	/*protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}*/

	 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String un=request.getParameter("uname");
		String pass=request.getParameter("pass");
		Connection conn;
		Statement stmt=null;
		ResultSet rs=null;
		//select * from login where uname='davidx' and password='1234';
		String sql="select * from login where uname='"+un+"' and pass='"+pass+"'";
		try {
		    conn = DBConnection.getMysqlConnection();
			System.out.println("sql: "+sql);
			/*stmt=conn.createStatement();*/
			/*rs=stmt.executeQuery(sql);*/
			
			/*File file=new File("C:\\Users\\davidxing\\Desktop\\my3.jpg");
			FileOutputStream fos=new FileOutputStream(file);
			byte b[];
			Blob blob;*/
			
			stmt=conn.createStatement();
			rs=stmt.executeQuery(sql);
			
			
			if(rs.next()) {
				int id=rs.getInt(1);
				String name=rs.getString(2);
				String password=rs.getString(3);
				int salary=rs.getInt(4);
				
				/*blob=rs.getBlob(5);
	            b=blob.getBytes(1,(int)blob.length());
	            fos.write(b);*/
				
				HttpSession session=request.getSession();
				session.setAttribute("id", id);
				session.setAttribute("name", name);
				session.setAttribute("password", password);
				session.setAttribute("salary", salary);
				//session.setAttribute("image", b);
				
				response.sendRedirect("https://www.google.com");
				stmt.close();
	            //fos.close();
	            //conn.close();
			}else {
				response.sendRedirect("logon.html");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
