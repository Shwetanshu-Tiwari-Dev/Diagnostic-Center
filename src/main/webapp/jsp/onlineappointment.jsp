<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Online Appointment Booking</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>
	<div id="head">
		<h1>Book Online Appointment</h1>
		<hr>
	</div>
	
	<br>
	
	<marquee direction="right" style="background-color: aqua;"><h3>***BOOK APPIONTMENT A DAY BEFORE***</h3></marquee>
	
	<br>
	
	<div id="on">
		<form action="/onlineappointmentbooked" method="post">

			<label for="mobile">Mobile No. :</label> <br> <input type="text"
				name="mobile"> <br> <label for="name">Name :</label> <br>
			<input type="text" name="name"> <br> <label for="age">Age
				:</label> <br> <input type="text" name="age"> <br> <label
				for="address">Address :</label> <br> <input type="text"
				name="address"> <br> <label for="date">Date :</label> <br>
			<input type="date" name="date"> <br> <label for="note">Note
				:</label> <br> <input type="text" name="note"> <br> <input
				type="submit" value="Submit"><br>

		</form>
	</div>
</body>
</html>