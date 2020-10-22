<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign In</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>

<div id="head">
<h1>Log In Page</h1>
<hr>
</div>
<br>
	<h3 style="text-align: center"> ${message} </h3>
<br>
<div id="on">
<form action="/login" method="post">
<label for="id">Login Id :</label> <br> <input type="text" name="username"> <br>
<label for="pass">Password :</label> <br> <input type="password" name="password"> <br> 
<input type="submit" value="Submit"> <br>
</form>

<div class="lin">
<h4><a href="/forgotpassword">Forgot Password?</a></h4>
<h4><a href="/createaccount">Create New Account</a></h4>
</div>

</div>
</body>
</html>