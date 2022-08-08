<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri ="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search Form</title>
</head>
<body>
	<form action = "/search" method= "get">
	<h1>
		Search:
		<input type= "text" name = "keyword"/>	
		<button type="submit">Submit</button>
	</h1>
	</form>
</body>
</html>