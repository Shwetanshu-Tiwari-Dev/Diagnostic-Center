<%@page import="com.example.noblestar.model.PatientDetails"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Report of patient</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>
<div id="head">
<h1>Report of Patient</h1>
<hr>
</div>
<br>
<table border="1">
<tr>
<th> Mobile No. </th>
<th> Name </th>
<th> Age </th>
<th> Address </th>
<th> Date </th>
<th> Note </th>
</tr>
<tr>
<td>${data.mobile}</td>
<td>${data.name}</td>
<td>${data.age}</td>
<td>${data.address}</td>
<td>${data.date}</td>
<td>${data.note}</td>
</tr>
</table>

</body>
</html>