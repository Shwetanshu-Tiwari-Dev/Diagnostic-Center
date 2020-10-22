<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Forgot Password</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>
<div id="head">
<h1>Forgot Password</h1>
<hr>
</div>

<br>
	<h3 style="text-align: center"> ${message} </h3>
<br>

<div id="on">
<form action="/passwordchanged" method="post">
<label for="newpass">New Password :</label> <br> <input type="password" name="newpass"> <br>
<label for="conpass">Confirm Password :</label> <br> <input type="password" name="conpass"> <br> 
<input type="submit" value="Submit"> <br>
</form>
</div>

</body>
</html>