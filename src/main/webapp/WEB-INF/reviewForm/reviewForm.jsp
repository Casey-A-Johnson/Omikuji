<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri ="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Review form</title>
</head>
<body>
	<h1>Review Form</h1>
	<form method="post" action="/process">
		<div>
			<label>Product</label>
			<input type="text" name="product"/>
		</div>
		<div>
			<label>Comments</label>
			<textarea name="comments" rows="" cols=""></textarea>
		</div>
		<div>
			<label>Rating</label>
			<input type="number" name="rating"/>
		</div>
		<button type="submit">Submit your review</button>
	</form>
</body>
</html>