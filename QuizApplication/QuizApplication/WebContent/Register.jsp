<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="style.css">
<script type="text/javascript" src="Reg.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration</title>
</head>
<body>
<form action="RegisterServlet" method="post">
        <div class="container">
            <div class="items">
            </div>
            <div class="items">
                <h2>Quiz Registration Form</h2><br>
                <hr>
            </div>
            <table>
                <tr>
                    <th> <label for="name">
                            Name :
                        </label></th>
                    <td><input type="text" name="name" required></td>
                </tr>
                <tr>
                    <th><label for="email">
                            E-mail :
                        </label></th>
                    <td><input type="e-mail" name="email" id="email" required oninput="validate_email()">
                    <p id="emailerror"></p>
                    </td>
                </tr>
                <tr>

                    <th><label for="phone">
                            Phone :<br>
                        </label></th>
                    <td><input type="text" maxlength="10" name="phone" id="phone" required oninput="validatephone()">
                     <p id="phoneerror"></p>
                    </td>
                </tr>
                <tr>
                    <th><label for="username">
                            User Name :
                        </label></th>
                    <td><input type="text" name="u_name" id="username" required oninput="validateuser()">
                    <p id="nameerror"></p></td>
                </tr>
                <tr>

                    <th> <label for="password">
                            Password :
                        </label></th>
                    <td><input type="password" name="ppass" id="password" required oninput="validatepass()">
                    <p id="passerror"></p>
                    </td>
					
                </tr>
                <tr>
                    <th> <label for="cpassword">
                            Confirm Password :
                        </label></th>
                    <td><input type="password" name="cpass" id="cpassword" required oninput="validatecpass()" >
                    <p id="cpasserror"></p>
                    </td>
                    
                </tr>
                <tr align="center">
                    <td colspan="2"><input type="submit" name="submit" value="Register" class="submit"></td>
                </tr>
            </table>
        </div>
    </form>
</div>
</body>
</html>