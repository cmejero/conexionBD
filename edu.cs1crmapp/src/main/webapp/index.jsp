<%@ page language="java" contentType="text/html; charset=UFT-8"
	pageEncoding="UTF-8"%>
<%@page import="mipk.beanDB"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UFT-8">
<title>Insert title here</title>
</head>
<body onload="alert('no way!!!');">
	Esto es una prueba
	<%String saludo= "hola mundo"; %>
	<br /> Tengo una variable que dice 10 veces 7<% for (int i=0; i<10; i++) {
	%>
	<p style="color: darkred; size: large;">
		Por
		<%=(i+1) %>
		vez te digo
		<%=saludo %>
	</p>
	<% }
	
	
	String query="select * from videojuegos"; 
	beanDB basededatos= new beanDB(); 
	String[][]tablares=basededatos.resConsultaSelectA3(query);
%>
	<table>
		<% for(int i=0; i<tablares.length; i++) {	
	%><tr>
			<%
	for (int j=0; j < tablares[i].length; j++) {
		%>
			<td><%=tablares[i][j] %></td>
			<% } 
			%>
		</tr>
		<% 
		} 
		%>
	</table>
</body>
</html>