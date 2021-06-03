<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ricerca ordini</title>
</head>
<body>
	<form action="LoginServlet">
	<fieldset>
	<legend>Inserire l'username e la password per ricercare gli ordini effettuati sul nostro sito</legend>
	<input type="text" name="Username" value="" placeholder="username" required><br>
	<input type="password" name="Password" value="" placeholder="password" required><br>
	<input type="checkbox" name="check" value="ok" checked hidden>
	<input type="submit" value="Invia">
	</fieldset>
	</form>
</body>
</html>