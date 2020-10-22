<%@page import="com.example.noblestar.model.PatientDetails"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Reports</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>
<div id="head">
<h1>Reports</h1>
<hr>
</div>

	<br>
	
	<div id="on">
		<form action="/checkreport" method="get">

			<label for="mobile">Mobile No. :</label> <br> <input type="text"
				name="mobile"> <br> <input type="submit" value="Submit"><br>

		</form>
	</div>

</body>
</html>