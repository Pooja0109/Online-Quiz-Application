<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html class="charts">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Progress Chart</title>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<link rel="stylesheet" href="quizapp.css">
</head>
<body>
<div class=pie>
<h1 align="center" style="color:#26508E;">Test Result</h1>
</div>
<div 
id="myChart" style="border: 10px inset #26508E;width:100%; max-width:600px; height:400px;display:flex;margin:auto;margin-top:2%;">
</div>
<div class="buttonclass" style="margin:2%;">
<button class="buttons" type="button" style="margin:0% 40%;" onclick="showResults()">View Answer</button>
</div>
<%
int correct = (int)session.getAttribute("correct");
int wrong = (int)session.getAttribute("wrong");
System.out.println("R Wrong:"+wrong);
System.out.println("R Right:"+correct);
%> 
<script>
cor=<%=correct%>;
wro=<%=wrong%>;
google.charts.load('current', {'packages':['corechart']});
google.charts.setOnLoadCallback(drawChart);
function drawChart() {
const data = google.visualization.arrayToDataTable([
  ['Correct', 'Wrong'],
  ['Correct answers',cor],
  ['Wrong answers',wro]
]);

const options = {
  title:'',
  is3D:true,fontSize:13
};

const chart = new google.visualization.PieChart(document.getElementById('myChart'));
  chart.draw(data, options);
}

function showResults()
{
	document.location.href="quizResult.jsp";
}
</script>
</body>
</html>