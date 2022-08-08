<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri ="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Review Form Display</title>
</head>
<body>
	<h1>Review Info:</h1>
	<h5><c:out value="${product }"></c:out></h5>
	<h5><c:out value="${comments }"></c:out></h5>
	<h5><c:out value="${rating }"></c:out></h5>
</body>
</html>