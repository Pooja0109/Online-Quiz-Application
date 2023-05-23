<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.lang.*,java.sql.*"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="quizapp.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Results</title>
</head>
<script type="text/javascript">
function Fun_exit()
{
	console.log("JSP is a BITCH");
	document.location.href="Register.jsp";
}
history.forward();
</script>
<body>
<div class="container">
	<%
		String sql = "select * from quizData";
		String url = "jdbc:mysql://localhost:3306/pooja";
		String username = "root";
		String password = "BrunoSonuBlacky123";

		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, username, password);
			PreparedStatement p = con.prepareStatement(sql);  
			ResultSet rs = p.executeQuery();
	%>

	<h1 align="center">...Test Complete...</h1>
	<%
		int i = 1, count = 0,flag=1;
			while (rs.next()) {
	%>
	<br /><div class="labelclass">
	<%
		out.println(rs.getString(2));
	%><br /> </div>
	<div class="items">
	<%
	if(flag<11)
	{
		%>Correct answer :
		<%
		out.println(rs.getString(7));
		flag++;
	}
	String p1 = rs.getString(7);
	%><br />
	<%
		String ans = "ans" + i;
				i++;
	%>
	Your answer :<% 
		out.println(session.getAttribute(ans));
				String p2 = (String) session.getAttribute(ans);
				if (p1.equals(p2)) {
					count++;
				}
				
	%></div><br />
	<%
		}
			
			if(count==0)
			{
				%>
				<div class="fail">
				FAILED
				</div>			
				<%
			}
			else
			{
	
				/* int subScore=(int)session.getAttribute("Sscore"); */
				/* count=count+subScore; */
	%>
	<div class="score">
		Your Total Score :<%=count%></div>
	<%
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	%>
<input type="button" class="Exbuttons" value="Exit" onclick="Fun_exit()">

</div>
</body>
</html>