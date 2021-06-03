
<!-- ----RIADATTARE IL CODICE CON CART E PRODUCTBEAN----- -->



<!-- pagina per la gestione di errori -->
<%@ page errorPage="../errors/failure.jsp"%>

<!-- accesso alla sessione -->
<%@ page session="true"%>

<!-- import di classi Java -->
<%@ page import="it.unisa.model.Catalogue" %>
<%@ page import="it.unisa.model.Cart"%>
<%@ page import="it.unisa.model.ProductBean"%>

<!-- metodi richiamati nel seguito -->


<!-- codice html restituito al client -->
<html>
	<head>
		<meta name="Author" content="pisi79">
		<title>Cart JSP</title>
		<link rel="stylesheet" href="<%= request.getContextPath() %>/styles/default.css" type="text/css"/>
	</head>

	<body>	

		<%@ include file="../fragments/menu.jsp" %>
	
		<div id="main" class="clear">

			<!--<jsp:useBean id="catalogue" class="it.unisa.model.Catalogue" scope="application" />-->
			<jsp:useBean id="cart" class="it.unisa.model.Cart" scope="session" />
			

			<div id="right" style="float: left; width: 48%">
				<p>Cart content:</p>
				<table class="formdata">
					<tr>
						<th style="width: 33%">Description</th>
						<th style="width: 33%">Price</th>
						<th style="width: 33%">Your order</th>
					</tr>
					<% 
					ProductBean[] cartProducts = cart.getProducts().toArray(new ProductBean[0]);
					for( ProductBean aCartProduct : cartProducts ){  
					%> 
						<tr>
							<td><%= aCartProduct.getName() %></td>
							<td><%= aCartProduct.getPrice() %> &#8364;</td>
							<td><%= aCartProduct.getQuantitaC() %></td>
						</tr>
					<% 
					} 
					%>
					<tr>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
					</tr>
				</table>			
				<br/>
				<p>
				Total: <span style="font-size: x-large; color: red;"><%= cart.Totale() %> &#8364;</span>
				</p>
				
				<%
				if ( cart.getProducts().size() > 0 ) {
				%>
					<br/>
					<a href="../product?checkout=ok">Checkout</a>
				<%
				}
				%>
			</div>
		
			<div class="clear">
				<p>&nbsp;</p>
			</div>
			
		</div>
	
	

	</body>
</html>
