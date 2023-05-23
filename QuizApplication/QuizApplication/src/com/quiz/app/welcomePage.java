package com.quiz.app;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/WelcomePage")
public class welcomePage extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String sql = "select * from quizEntry where u_name=? and password=?";
		String url = "jdbc:mysql://localhost:3306/pooja";
		String username = "root";
		String password = "BrunoSonuBlacky123";
		PrintWriter out=response.getWriter();
		String u_name = request.getParameter("u_name");
		String password1 = request.getParameter("password");
		System.out.println("Player name:"+u_name);
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, username, password);
			PreparedStatement p = con.prepareStatement(sql);
			System.out.println("I was here....1");
			p.setString(1,u_name);
			ResultSet rs = p.executeQuery();
			if (rs.next()) {
				System.out.println("I was here....2");
				/*out.println("<script type=\"text/javascript\">");*/
				/*out.println("alert('Your response is already submitted');");*/
				out.println("location='quizApp.jsp';");
				/*out.println("</script>");*/
			} 
		 	else 
			{
				String ins_sql="insert into quizEntry(u_name,password) values(?,?)";
				PreparedStatement pst = con.prepareStatement(ins_sql);
	            pst.setString(1,u_name);
	            pst.setString(2,password1);
	            pst.executeUpdate();
	            System.out.println("A new author has been inserted");
	            out.println("<script type=\"text/javascript\">");
				out.println("location='quizApp.jsp';");
				out.println("</script>");
			} 
		} catch (Exception e) {
			System.out.println(e);
		}
	}
}
