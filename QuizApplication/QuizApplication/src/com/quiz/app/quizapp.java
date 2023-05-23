package com.quiz.app;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.sql.*;
import java.lang.*;

@WebServlet("/quizapp")
public class quizapp extends HttpServlet {

	public static int score;

	/*public static int countWords(String str) {
		String[] wordCount = str.split(" ");
		if (wordCount.length >= 5 && wordCount.length <= 10) {
			quizapp.score += 2;
		} else if (wordCount.length > 10) {
			quizapp.score += 6;
		}
		return quizapp.score;
	}*/

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		HttpSession session = request.getSession();
		score = 0;
		String q1 = request.getParameter("question1");
		String q2 = request.getParameter("question2");
		String q3 = request.getParameter("question3");
		String q4 = request.getParameter("question4");
		String q5 = request.getParameter("question5");
		String q6 = request.getParameter("question6");
		String q7 = request.getParameter("question7");
		String q8 = request.getParameter("question8");
		String q9 = request.getParameter("question9");
		String q10 = request.getParameter("question10");
		
		/*String q5 = request.getParameter("question5");
		int subScore = quizapp.countWords(q5);*/

		PrintWriter out = response.getWriter();

		if (q1 == null || q2 == null || q3 == null || q4 == null) 
		{
			q1 = " ";
			/*response.sendRedirect("quizFailed.jsp");*/
		}
		session.setAttribute("ans1", q1);
		session.setAttribute("ans2", q2);
		session.setAttribute("ans3", q3);
		session.setAttribute("ans4", q4);
		session.setAttribute("ans5", q5);
		session.setAttribute("ans6", q6);
		session.setAttribute("ans7", q7);
		session.setAttribute("ans8", q8);
		session.setAttribute("ans9", q9);
		session.setAttribute("ans10", q10);
		
		/*session.setAttribute("Sscore", subScore);*/

		if (q1.equals(" ")) {
			out.println("<script type=\"text/javascript\">");
			out.println("alert('You have Failed the test !');");
			out.println("location='ResultsChart.jsp';");
			out.println("</script>");
		} 
		/*else
		{*/

			String sql = "select * from quizData";
			String url = "jdbc:mysql://localhost:3306/pooja";
			String username = "root";
			String password = "BrunoSonuBlacky123";

			try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con1 = DriverManager.getConnection(url, username, password);
				PreparedStatement ps = con1.prepareStatement(sql);  
				ResultSet rs = ps.executeQuery();
				int i = 1, count = 0,flag=1;
				while (rs.next()) {
		if(flag<11)
		{

			flag++;
		}
		String p1 = rs.getString(7);
		String ans = "ans" + i;
		i++;
		session.getAttribute(ans);
		String p2 = (String) session.getAttribute(ans);
		if (p1.equals(p2)) 
		{
			count++;
		}
	}
				int correct=count;
				int wrong=10-correct;
				session.setAttribute("correct",correct);
				session.setAttribute("wrong",wrong);
				/*System.out.println("QUiz Wrong:"+wrong);
				System.out.println("Quiz Right:"+correct);*/
}
	catch (Exception e) 
		{
			e.printStackTrace();
		}
			response.sendRedirect("ResultsChart.jsp");
		}
}
	