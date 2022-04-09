<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.appstracta.bean.CountryBean" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bean</title>
</head>
<body>
<%@ include file="header.jsp" %>
<%-- Invocar clase java en un jsp con import --%>
<%
	CountryBean country = new CountryBean();
	country.setCountry("México");
%>
<p><%=country.getCountry() %></p>

<%-- Uso con jsp standar --%>
<jsp:useBean id="country2" class="com.appstracta.bean.CountryBean" />
<%-- seteo con jsp standar --%>
<jsp:setProperty name="country2" property="country" value="España" />
<p><%=country2.getCountry() %></p>
<p>Trae el valor con jsp standar <jsp:getProperty property="country" name="country2"/></p>

</body>
</html>