<%@ page language="java" 
    contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"
%>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1256">
<!DOCTYPE html>
<head>
    <title>Login</title>
    <style>
    legend {font-size:2em}
    </style>
</head>

<body>
    <form action="LoginServlet?login=ok">
        <h2>Se sei un utente già registrato effettua il login</h2>
        <fieldset>
            <legend>Login</legend>
            <h2>Username: </h2> <input type="text" name="Username" value="" placeholder="username" required><br>
            <h2>Password: </h2> <input type="password" name="Password" value="" placeholder="password" required><br>
            <input type="checkbox" name="login" value="ok" checked hidden>
            <input type="submit" value="Login">
        </fieldset>
    </form>
    <form action="RegisterServlet">
        <h2>Altrimenti puoi registrarti qui</h2>
        <fieldset>
            <legend>Dati Personali</legend>
            <h2>Nome: </h2> <input type="text" name="Nome" value="" placeholder="Mario" required><br>
            <h2>Cognome: </h2> <input type="text" name="Cognome" value="" placeholder="Rossi" required><br>
            <h2>Data di Nascita: </h2> <input type="date" name="DataN" value="" placeholder="GG/MM/AAA" required><br>
        </fieldset>
        <fieldset>
            <legend>Indirizzo di spedizione</legend>
            <h2>Via: </h2> <input type="text" name="Via" value="" placeholder="Via Giuseppe Verdi, 140"><br>
            <h2>CAP: </h2> <input type="text" name="CAP" value="" placeholder="80123"><br>
            <h2>Citta': </h2> <input type="text" name="Citta" value="" placeholder="Milano"><br>
        </fieldset>
        <fieldset>
            <legend>Username e Password</legend>
            <h2>Username: </h2> <input type="text" name="Username" value="" placeholder="username" required><br>
            <h2>Password: </h2> <input type="password" name="Password" value="" placeholder="password" required><br>
        </fieldset>
        <h4><input type="checkbox" name="TerminiServizio" value="1" required> Accetto i termini di servizio</h4>
        <input type="submit" value="Registrati">
    </form>
</body>