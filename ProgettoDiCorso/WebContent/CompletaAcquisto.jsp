<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Checkout</title>
</head>
<body>
	<fieldset>
	<legend>Sei un Utente Registrato? Inserisci Username e Password</legend>
	<form action="TTC">
	<h2>Username: </h2> <input type="text" name="Username" value="" placeholder="username" required><br>
	<h2>Password: </h2> <input type="password" name="Password" value="" placeholder="password" required><br><br>
	<input type="submit" value="Login">
	</form>
	
	</fieldset>
	
	<h3>Non sei registrato?</h3>
	<a href="LoginPage.jsp">Registrati adesso!</a>
	
	<fieldset>
	<h2>Altrimenti continua come Ospite</h2>
	<form action="Checkout2.jsp">
	<button type="submit">CONTINUA COME OSPITE</button>
	</form>
	</fieldset>
</body>
</html>