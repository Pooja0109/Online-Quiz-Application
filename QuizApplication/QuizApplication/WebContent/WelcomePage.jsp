<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.lang.*,java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome</title>
<link rel="stylesheet" href="quizapp.css">
</head>
<body>
	<form action="WelcomePage">
		<div class="welcome">
		<div class="W_items" style="font-size:26px;"><h1 align="center" style="color: green;">...Welcome...</h1></div>
		<div class="W_items" style="font-size:22px;"><label>User Name</label><br/></div>
		<div class="W_items"><input type="text" name="u_name" size="26"><br/><br/><br/></div>
		
		<div class="W_items" style="font-size:22px;"><label>Password</label><br/></div>
		<div class="W_items"><input type="text" name="password" size="26"><br/><br/><br/></div>
		
		<div class="W_items"><br/> <input type="submit" class="Exbuttons" value="Submit"></div><br/>
		</div>
	</form>
</body>
</html>