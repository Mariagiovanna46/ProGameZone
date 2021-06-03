
<div id="menu">
	<ul id="tabs">
		<li <%= request.getRequestURI().contains("home") ? "style=\"background-color: #aaa;\"" : ""%>>
			<a href="<%= request.getContextPath() %>/pages/home.jsp">Home</a>
		</li>
		<li <%= request.getRequestURI().contains("ProductView") ? "style=\"background-color: #aaa;\"" : ""%>>
			<a href="<%= request.getContextPath() %>/pages/ProductView.jsp">Catalogo</a>
		</li>
		<li <%= request.getRequestURI().contains("cart") ? "style=\"background-color: #aaa;\"" : ""%>>
			<a href="<%= request.getContextPath() %>/pages/cart.jsp">Carrello</a>
		</li>
	</ul>
</div>