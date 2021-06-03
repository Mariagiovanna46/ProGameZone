<%@ page language="java" contentType="text/html; charset=ISO-8859-1" import="java.util.*,it.unisa.model.ProductBean"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<% ProductBean product = (ProductBean) request.getAttribute("product"); %>
	<table border=1>
	
		<tr>
		<th>Genere</th>
		<th>Piattaforma</th>
		<th>Tipologia</th>
		</tr>
		
		<tr>
		<td><%= product.getGenre() %></td>
		<td><%= product.getPlatform() %></td>
		<td><%= product.getTipologia() %></td>
		<td><a href="product?action=addC&id=<%=product.getCode()%>&qta=1">Aggiungi al carrello</a></td>
		</tr>
		
	</table>
</body>
</html>