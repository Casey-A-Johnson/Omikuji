<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri ="http://java.sun.com/jsp/jstl/core"%>      
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Omikuji Display</title>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="/css/style.css"> 
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="/js/app.js"></script>
</head>
<body class="displayBody">
	<div class="container2">
		<div class="textBox">
			<h2>In <c:out value="${number }"></c:out> years, you will live in <c:out value="${city }"></c:out> with <c:out value="${person }"></c:out> as your roomate, <c:out value="${hobby }"></c:out> for a living. The next time you see a <c:out value="${thing }"></c:out>, you will have good luck. Also, <c:out value="${comment }"></c:out></h2>
		</div>
	</div>
</body>
</html>