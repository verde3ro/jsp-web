<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ciudades</title>
</head>
<body>
	<h1>Ciudades</h1>
	<ul>
		<c:forEach var="city" items="${cities}">
			<li>
			${city.cityId} ::
			<c:if test="${city.city eq 'Santiago de los Caballeros'}">
				<strong>${city.city}</strong>
			</c:if>
			<c:if test="${city.city ne 'Santiago de los Caballeros'}">
				${city.city}
			</c:if>
			</li>
		</c:forEach>
	</ul>
</body>
</html>