<%
session.removeAttribute("usuario");
session.invalidate();

response.sendRedirect("login.jsp");

%>