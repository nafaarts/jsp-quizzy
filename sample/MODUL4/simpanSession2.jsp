<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>JSP Page</title>
  </head>
  <body>
    <%@ page language="java" %> 
    <%-- untuk memanggil session --%> 
    <% 
        String username=request.getParameter("username"); 
        if(username==null)
            username = ""; 
        session.setAttribute("username",username); 
    %> 
    <%-- untuk menampilkan session --%> 
    <% 
        String username2 = (String) session.getAttribute("username"); 
        if(username==null) 
            username=""; 
    %>
    <p>Welcome: <%=username2%></p>
  </body>
</html>
