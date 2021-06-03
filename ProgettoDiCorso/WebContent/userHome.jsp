<%@ page language="java" 
         contentType="text/html; charset=windows-1256"
         pageEncoding="windows-1256"
         import="it.unisa.model.UserBean"
   %>
<%   UserBean currentUser = (UserBean) (session.getAttribute("currentSessionUser"));
if ((currentUser==null)||(!currentUser.isValid()))
{	
    response.sendRedirect("./invalidLogin.jsp");
    return;
}
%>

<!DOCTYPE html>
<html>
	<head>
		<meta name="Author" content="pisi79">
		<title>ProGameZone</title>
		<style>
			p,b {text-align: center;}
		</style>
		<link rel="stylesheet" href="<%= request.getContextPath() %>/styles/default.css" type="text/css"/>
	</head>

	<body>	


		<%@ include file="../fragments/menu.jsp" %>
	<div id="main" class="clear">
		
			<p>
			<b>BENTORNATO IN ProGameZone <%= currentUser.getUsername()%> IL SITO FATTO DA <br>
			VIDEOGIOCATORI PER VIDEOGIOCATORI.</b>
			</p>
	</div>
		
		<table align="center">
		<th><a href="./pages/cart.jsp">Vai al carrello</a></th>
		<th><a href="./CheckUser.jsp">Lista ordini effettuati</a></th>
		</table>
	


	</body>
</html>