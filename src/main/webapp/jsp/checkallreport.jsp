<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Report Of all Patient</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>
<div id="head">
<h1>Report of all Patient</h1>
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
<c:forEach items="${data}" var="data">
<tr>
<td><c:out value="${data.mobile}" /></td>
<td><c:out value="${data.name}" /></td>
<td><c:out value="${data.age}" /></td>
<td><c:out value="${data.address}" /></td>
<td><c:out value="${data.date}" /></td>
<td><c:out value="${data.note}" /></td>
</tr>
</c:forEach>
</table>
</body>
</html>