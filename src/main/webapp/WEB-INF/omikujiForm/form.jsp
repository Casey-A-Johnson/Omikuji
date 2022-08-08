<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri ="http://java.sun.com/jsp/jstl/core"%>      
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Omikuji Form</title>
<link rel="stylesheet" type="text/css" href="/css/style.css"> 
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" /> 
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="/js/app.js"></script>
</head>
<body>
	<div class="container">
		<h1>Omikuji Form</h1>
		<form action="/processform" method="post">
			<div class= "mb-3">
				<div>
					<label for="number">Pick any number from 5 to 25</label>
				</div>
				<div>
					<input type= "number" name= "number"/>
				</div>
			</div>
			<div>
				<div>
					<label for="city">Enter the name of any city.</label>
				</div>
				<div>
					<input type= "text" name= "city"/>
				</div>
			</div>
			<div>
				<div>
					<label for="person">Enter the name of any real person</label>
				</div>
				<div>
					<input type= "text" name= "person"/>
				</div>
			</div>
			<div>
				<div>
					<label for="hobby">Enter professional endeavor or hobby</label>
				</div>
				<div>
					<input type= "text" name= "hobby"/>
				</div>
			</div>
			<div>
				<div>
					<label for="thing">Enter any type of living thing.</label>
				</div>
				<div>
					<input type= "text" name= "thing"/>
				</div>
			</div>
			<div>
				<div>
					<label for="comment">Say something nice to someone:</label>
				</div>
				<div>
					<input type= "text" name= "comment"/>
				</div>
			</div>
			<h3>Send and show a friend</h3>
			<button type="submit" class="btn btn-primary">Send</button>
		</form>
	</div>
</body>
</html>