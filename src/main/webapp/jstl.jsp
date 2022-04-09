<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.List"%>
<%@ page import="com.appstracta.bo.ICityBo"%>
<%@ page import="com.appstracta.bo.impl.CityBoImpl"%>
<%@ page import="com.appstracta.bean.CityBean"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL</title>
</head>
<body>
	<%--Se crea instsancia de objeto Date --%>
	<jsp:useBean id="now" class="java.util.Date" />
	

	<%--Uso de jstl y lenguaje de expresión--%>
	<p>La fecha es :: <c:out value="${now}"/></p>
	<%--Uso de lenguaje de expresión--%>
	<p>La fecha es :: ${now}</p>
	<%
		ICityBo cityBo = new CityBoImpl();
		List<CityBean> cities = cityBo.obtenerTodos();
		pageContext.setAttribute("cities", cities);
	%>
	<ul>
	<%
		for(CityBean city : cities) {
			out.println("<li>" + city.getCityId() +" :: " + city.getCity() +"</li>");
		}
	%>
	</ul>
	<p>
		<h1>Ciudades JSTL</h1>
	</p>
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