<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Profile</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>

<div id="head">
<h1>Profile</h1>
<hr>
</div>

<br>

<table border="1">
<tr>
<th> Name </th>
<th> Mobile No. </th>
<th> Age </th>
<th> Email </th>
<th> Address </th>
</tr>
<tr>
<td>${data.name}</td>
<td>${data.mobile}</td>
<td>${data.age}</td>
<td>${data.email}</td>
<td>${data.address}</td>
</tr>
</table>
<!-- 
<form action="/username" method="get">
<input type="submit" value="User Details">
</form>
 -->
<a href="/">Home</a>
</body>
</html>