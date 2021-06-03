<%@ page language="java" contentType="text/html; charset=ISO-8859-1" import="java.util.*,it.unisa.model.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Dettaglio</title>
</head>
<body>
	<% Acquisto acquisto = (Acquisto) request.getAttribute("acquisto"); %>
	<table border=1>
	
		<tr>
		<th>Giochi Acquistati</th>
		</tr>
		
		<tr>
		<td><%= acquisto.getDettaglio() %></td>
		</tr>
		
	</table>
</body>
</html>