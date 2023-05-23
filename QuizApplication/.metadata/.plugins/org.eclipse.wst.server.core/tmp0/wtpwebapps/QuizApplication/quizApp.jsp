<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.lang.*,java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Quiz App</title>
<link rel="stylesheet" href="quizapp.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Lobster&display=swap" rel="stylesheet">

<script type="text/javascript" src="Reg.js">
	history.forward();
</script>
</head>
<body onload="disp_time()" class="background">
	<form action="quizapp" method="post" id="regform">
		<div class="Header">
			<div class="quizHead">
				<h1 align="center">COMPUTER FUNDAMENTALS</h1>
			</div>
			<div id="timer">
			</div>
		</div>
		<div class="container">
			<div class="question">
				<div class="labelclass">
					<label for="Q1">1. Ctrl, Shift and Alt are called _______ keys.</label>
				</div>
				<br>
				<div class="items">
					<input type="radio" name="question1" value="A) Modifier">A)
					Modifier<br> <input type="radio" name="question1"
						value="B) Function">B) Function<br> <input
						type="radio" name="question1" value="C) Alphanumeric">C)
					Alphanumeric<br> <input type="radio" name="question1"
						value="D) Adjustment">D) Adjustment<br> <br>
				</div>
			</div>

		<div class="question">
			<div class="labelclass">
				<label for="Q2">2. A computer cannot 'boot' if it does not
					have the _______.</label>
			</div>
			<br>
			<div class="items">
				<input type="radio" name="question2" value="A) Compiler">A)
				Compiler<br> <input type="radio" name="question2"
					value="B) Loader">B) Loader<br> <input type="radio"
					name="question2" value="C) Operating system">C) Operating
				system<br> <input type="radio" name="question2"
					value="D) Assembler">D) Assembler<br> <br>
			</div>
		</div>

		<div class="question">
			<div class="labelclass">
				<label for="Q3"> 3. ________ is the process of dividing the
					disk into tracks and sectors.</label>
			</div>
			<br>
			<div class="items">
				<input type="radio" name="question3" value="A) Tracking">A)
				Tracking<br> <input type="radio" name="question3"
					value="B) Formatting">B) Formatting<br> <input
					type="radio" name="question3" value="C) Crashing">C)
				Crashing<br> <input type="radio" name="question3"
					value="D) Allotting">D) Allotting<br> <br>
			</div>
		</div>

		<div class="question">
			<div class="labelclass">
				<label for="Q4">4. _______ are attempts by individuals to
					obtain confidential information from you by falsifying their
					identity.</label>
			</div>
			<br>
			<div class="items">
				<input type="radio" name="question4" value="A) Phishing trips">A)
				Phishing trips<br> <input type="radio" name="question4"
					value="B) Computer viruses">B) Computer viruses<br> <input
					type="radio" name="question4" value="C) Phishing scams">C)
				Phishing scams<br> <input type="radio" name="question4"
					value="D) Spyware scams">D) Spyware scams<br> <br>
			</div>
		</div>
		<div class="question">
			<div class="labelclass">
				<label for="Q5">5. What command is used to count the total number of lines, words, and characters contained in a file?
				</label>
			</div>
			<br>
			<div class="items">
				<input type="radio" name="question5" value="A) countw">
				A) countw <br> 
				<input type="radio" name="question5" value="B) wcount">
					B) wcount<br> 
					<input type="radio" name="question5" value="C) wc">
					C) wc<br> 
					<input type="radio" name="question5" value="D) count p">
					D) count p<br> <br>
			</div>
		</div>

<div class="question">
			<div class="labelclass">
				<label for="Q6">6. Frames from one LAN can be transmitted to another LAN via the device
				</label>
			</div>
			<br>
			<div class="items">
				<input type="radio" name="question6" value="A) Router">
				A) Router <br> 
				<input type="radio" name="question6" value="B) Bridge">
					B) Bridge<br> 
					<input type="radio" name="question6" value="C) Repeater">
					C) Repeater<br> 
					<input type="radio" name="question6" value="D) Modem">
					D) Modem<br> <br>
			</div>
		</div>

<div class="question">
			<div class="labelclass">
				<label for="Q7">7. Which of the following is the 1's complement of 10 ?
				</label>
			</div>
			<br>
			<div class="items">
				<input type="radio" name="question7" value="A) 01">
				A) 01 <br> 
				<input type="radio" name="question7" value="B) 110">
					B) 110<br> 
					<input type="radio" name="question7" value="C) 11">
					C) 11<br> 
					<input type="radio" name="question7" value="D) 10">
					D) 10<br> <br>
			</div>
		</div>

<div class="question">
			<div class="labelclass">
				<label for="Q8">8. Which part interprets program instructions and initiate control operations ?
				</label>
			</div>
			<br>
			<div class="items">
				<input type="radio" name="question8" value="A) Input">
				A) Input <br> 
				<input type="radio" name="question8" value="B) Storage unit">
					B) Storage unit<br> 
					<input type="radio" name="question8" value="C) Logic unit">
					C) Logic unit<br> 
					<input type="radio" name="question8" value="D) Control unit">
					D) Control unit<br> <br>
			</div>
		</div>

<div class="question">
			<div class="labelclass">
				<label for="Q9">9. Which access method is used for obtaining a record from a cassette tape ?
				</label>
			</div>
			<br>
			<div class="items">
				<input type="radio" name="question9" value="A) Direct">
				A) Direct <br> 
				<input type="radio" name="question9" value="B) Sequential">
					B) Sequential<br> 
					<input type="radio" name="question9" value="C) Random">
					C) Random<br> 
					<input type="radio" name="question9" value="D) None of the above">
					D) None of the above<br> <br>
			</div>
		</div>

<div class="question">
			<div class="labelclass">
				<label for="Q10">10. With respect to a network interface card, the term 10/100 refers to ?
				</label>
			</div>
			<br>
			<div class="items">
				<input type="radio" name="question10" value="A) Protocol speed">
				A) Protocol speed <br> 
				<input type="radio" name="question10" value="B) A fiber speed">
					B) A fiber speed<br> 
					<input type="radio" name="question10" value="C) Megabits per seconds">
					C) Megabits per seconds<br> 
					<input type="radio" name="question10" value="D) Minimum and maximum server speed">
					D) Minimum and maximum server speed<br> <br>
			</div>
		</div>
		
		<div class="buttonclass">
		<button class="buttons" type="button" id="prev" onclick="prevnext(-1)">Previous</button>
    	<button class="buttons" type="button" id="next" onclick="prevnext(1)">Next</button>
		<input class="buttons" type="submit" id="sub" onclick="SubmitResult()">
		</div>
		</div>
	</form>
	<script>
		ctab = 0;
		showtab(ctab);
	</script>
</body>
</html>