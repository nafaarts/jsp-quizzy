<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
        <title>JSP Page</title>
    </head>
    <body>
    <%
        session = request.getSession(false);
        String nm = (String) session.getAttribute("nama");
        if (nm!= null) {
            out.println(" Nama Session yang Login adalah = " +nm); 
        }
    %>
    <p><a href="logout.jsp"> LOGOUT </a></p>
     </body>
</html>