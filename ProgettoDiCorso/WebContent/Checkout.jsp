<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="it.unisa.model.UserBean, it.unisa.model.Cart, java.util.*, it.unisa.model.ProductBean"%>
    
    <% 

  UserBean currentUser = (UserBean) (session.getAttribute("currentSessionUser"));
if ((currentUser==null)||(!currentUser.isValid()))
{	
    response.sendRedirect("./invalidLogin.jsp");
    return;
}

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Checkout</title>
</head>
<body>
	<h1> CIAO <%= currentUser.getUsername()%> </h1>
	
	<table> <legend><h2>Dati Spedizione</h2></legend>
	<tr>Città:<%= currentUser.getCitta() %><br>
	<tr>Via:<%= currentUser.getVia()%><br>
	<tr>Cap:<%= currentUser.getCAP() %><br><br>
	</table>
	<fieldset>
          <legend>Dati carta di credito</legend>     
		<label for="credit">Carta di Credito:</label>
		<select name="card" id="card">
			<option value="card1">MasterCard</option>
			<option value="card2">Maestro</option>
			<option value="card3">Visa</option>
			<option value="card5">Altro...</option>
		</select>
    <br><br>
    Numero carta: <input type="text" name="carta" required><br><br>
        
         Data scadenza:
            <input class="inputCard" name="expiry" id="expiry" type="month" required/><br><br>

            Codice Segreto: <input type="text" name="codice" required><br>

          <br>
         
          </fieldset>
          <a href="product?completato=ok&username=<%= currentUser.getUsername()%>">Completa Checkout</a>

</body>
</html>