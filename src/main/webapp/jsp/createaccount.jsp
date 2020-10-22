<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Create New Account</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>
<div id="head">
<h1>Create New Account</h1>
<hr>
</div>

<br>

<div id="on">
<form action="/accountcreated" method="post">
<label for="name">Name :</label> <br> <input type="text" name="name"> <br>
<label for="mobile">Mobile No. :</label> <br> <input type="text" name="mobile"> <br> 
<label for="age">Age :</label> <br> <input type="text" name="age"> <br> 
<label for="address">Address :</label> <br> <input type="text" name="address"> <br> 
<label for="email">Email :</label> <br> <input type="text" name="email"> <br>
<label for="pass">Password :</label> <br> <input type="password" name="password"> <br> 
<input type="submit" value="Submit"> <br>
</form>
</div>

</body>
</html>