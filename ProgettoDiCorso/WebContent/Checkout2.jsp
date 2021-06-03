<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Checkout ospite</title>
</head>
<body> 
	
	<h2>Inserisci i dati richiesti:</h2>	
	<form>
	<fieldset>
          <legend>Indirizzo di spedizione</legend>
          Via: <input type="text" name="indirizzo" required><br><br>
          Cap: <input type="text" name="cap" required> <br><br>
          Città<input type="text" name="città" required><br><br>

        </fieldset>
        <br>
        <fieldset>
          <legend>Informazioni carta di credito</legend>     
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
          
          <a href="product?completo=ok">Completa Acquisto</a>
          </form>
</body>
</html>