<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%--Directiva de import --%>
<%@ page import="java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hello</title>
</head>
<body>
<%--Se incluye archivo --%>
<%@ include file="header.jsp" %>
<%-- Generar scriplet para declaración --%>
<%--Declarar una propiedad --%>
<%! private String hello = "hola"; %>

<%-- Declarar metodo --%>
<%!
	public Date fechaActual() {
		return (new Date());
	}
%>

<%-- Expresión --%>
<h4>El mensaje de la variable hello es :<%=hello%></h4>
<br />
<br />
<% out.println("<h4>El mensaje de la variable hello es :" + hello + "</h4>"); %>
<br />
<br />
<%-- Generar scriplet para programación java --%>
<%
	if(hello.equals("hola")) {
		out.println("Saluda....");
	}
%>
<p>Fecha desde método:: <%=fechaActual()%></p>
<p>
	<% out.println("El contextpath es: " + request.getContextPath()); %>
</p>
<p>Tu IP es :: <%=request.getRemoteHost()%></p>
</body>
</html>