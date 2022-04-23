<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Forward01</title>
</head>
<body>
	<h1>forward01</h1>
	<jsp:forward page="forward02.jsp">
		<jsp:param value="test" name="Llego desde forward01"/>
	</jsp:forward>
</body>
</html>