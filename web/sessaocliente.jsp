<%-- 
    Document   : sessaocliente
    Created on : 18/10/2019, 19:49:43
    Author     : guto
--%>

    <%@page import="model.Login"%>
<% 
    
    
    Login user = (Login) session.getAttribute("usuario");
// String usuario = user.getNome();  
    if(user ==  null ){
        
         RequestDispatcher despachar = request.getRequestDispatcher("login.jsp");
                    despachar.forward(request, response);
       // response.sendRedirect("login.jsp");
       
    }
    String usuario  = user.getNome();
    int  id = user.getId_usuario();
    
%>
