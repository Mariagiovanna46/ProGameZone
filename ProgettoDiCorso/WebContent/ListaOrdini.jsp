<%@ page language="java" contentType="text/html; charset=ISO-8859-1" import="java.util.*,it.unisa.model.*"%>

<%
	Collection<?> lista = (Collection<?>) request.getAttribute("lista");

	if (lista == null){
		response.sendRedirect(request.getContextPath()+"/LoginServlet");
		return;
	}
	
	Acquisto acquisto = (Acquisto) request.getAttribute("acquisto");
%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Lista Ordini</title>
</head>
<body>
	<h2>Lista degli ordini</h2>
	<table border="1">
	<tr>
		<th>Data</th>
		<th>Importo Totale</th>
		<th>Dettagli Ordine</th>
	</tr>
	<%
		if (lista != null && lista.size() != 0) {
			Iterator<?> it = lista.iterator();
			while (it.hasNext()) {
				Acquisto acq = (Acquisto) it.next();
	%>
	<tr>
		<td><%=acq.getData() %></td>
		<td><%=acq.getImporto() %></td>
		<td><a href="LoginServlet?boh=ok&data=<%=acq.getData()%>&tot=<%=acq.getImporto()%>">Dettagli ordine</a></td>
	</tr>
	<%
			}
		} else {
	%>
	<tr>
		<td colspan="6">Non sono stati effettuati ordini</td>
	</tr>
	<%
		}
	%>
	</table>
	<br>
	<form action="userHome.jsp">
		<button type="submit">Torna al falò</button>
	</form>
</body>
</html>