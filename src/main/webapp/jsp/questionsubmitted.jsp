<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ask Me Questions</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>
<div id="head">
<h1>Ask Me Questions</h1>
<hr>
</div>

<br>
	<h3 style="text-align: center"> Question Submitted </h3>
<br>

<div id="on">
<form action="/questionsubmitted" method="post">
<label for="mobile">Mobile No. :</label> <br> <input type="text" name="mobile"> <br>
<label for="email">Email :</label> <br> <input type="text" name="email"> <br>
<label for="am">Question :</label> <br> <input type="text" name="am"> <br>
<input type="submit" value="Submit"> <br>
</form>
</div>

</body>
</html>