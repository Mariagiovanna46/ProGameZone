<%@ page language="java" 
         contentType="text/html; charset=windows-1256"
         pageEncoding="windows-1256"
         import="it.unisa.model.UserBean"
   %>
<% 
// Check user credentials
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
         <meta http-equiv="Content-Type" 
            content="text/html; charset=windows-1256">
         <title>   User Logged Successfully   </title>
         <style>
			div {text-align: center;}
		</style>
      </head>
	
      <body>
		
       <div>
           <h1> BENTORNATO <%= currentUser.getUsername()%> </h1>
           <a href="./pages/userHome.jsp">Torna alla home</a> oppure se devi completare un acquisto <a href="Checkout.jsp">Completa Ordine</a>
        </div>

      </body>
	
   </html>