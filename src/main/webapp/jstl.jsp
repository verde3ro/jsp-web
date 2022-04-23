<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.List" %>
<%@ page import="com.appstracta.bean.CityBean" %>
<%@ page import="com.appstracta.bo.ICityBo" %>
<%@ page import="com.appstracta.bo.impl.CityBoImpl" %>
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
	<p>La fecha es con cout:: <c:out value="${now}"/></p>
	<%-- Uso de lenhuaje de expresión --%>
	<p>La fecha es :: ${now}</p>
	
	<%-- Uso de clases en JSP --%>
	<%
	ICityBo cityBo = new CityBoImpl();
	List<CityBean> cities = cityBo.obtenerTodos();
	pageContext.setAttribute("cities", cities);
	%>
	<ul>
		<%
			for(CityBean city : cities) {
				out.println("<li>" + city.getCityId() + " :: " + city.getCity() + "</li>");
			}
		%>
	</ul>
	
	<p>Ciudades JSTL</p>
	<%-- Uso de lenguaje jstl --%>
	<ul>
		<c:forEach var="city" items="${cities}">
			<li>${city.cityId}</li> :: 
			<c:if test="${city.city eq 'Santiago de los Caballeros'}">
				<strong>${city.city}</strong>
			</c:if>
			<c:if test="${city.city ne 'Santiago de los Caballeros'}">
				${city.city}
			</c:if>
		</c:forEach>
	</ul>
</body>
</html>