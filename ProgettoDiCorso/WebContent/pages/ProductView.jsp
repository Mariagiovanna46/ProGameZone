<%@ page language="java" contentType="text/html; charset=ISO-8859-1" import="java.util.*,it.unisa.model.ProductBean, it.unisa.model.Cart"%>

<%
	Collection<?> products = (Collection<?>) request.getAttribute("products");
	
	if (products == null){
		response.sendRedirect(request.getContextPath()+"/product");
		return;
	}
	
	ProductBean product = (ProductBean) request.getAttribute("product");
	
	Cart cart = (Cart) request.getAttribute("cart");
%>

<!DOCTYPE html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link href="ProductStyle.css" rel="stylesheet" type="text/css">
	<title>Catalogo ProGameZone</title>
</head>

<body>
	
	<%@ include file="../fragments/menu.jsp" %>
	
	<h2>Prodotti</h2>
	<table border="1">
		<tr>
			<th>Nome</th>
			<th>Genere</th>
			<th>Costo</th>
			<th>Tipologia</th>
			<th>Azione</th>
		</tr>
		<%
			if (products != null && products.size() != 0) {
				Iterator<?> it = products.iterator();
				while (it.hasNext()) {
					ProductBean bean = (ProductBean) it.next();
		%>
		<tr>
			<td><%=bean.getName()%></td>
			<td><%=bean.getGenre()%></td>
			<td><%=bean.getPrice()%></td>
			<td><%=bean.getTipologia()%></td>
			<td><a href="product?action=dettaglio&id=<%=bean.getCode()%>">Dettagli</a>
				<a href="product?action=addC&id=<%=bean.getCode()%>&qta=1">Aggiungi al carrello</a></td>
		</tr>
		<%
				}
			} else {
		%>
		<tr>
			<td colspan="6">No products available</td>
		</tr>
		<%
			}
		%>
	</table>
	
	<a href="pages/cart.jsp">Vai al carrello</a>
	
</body>
</html>