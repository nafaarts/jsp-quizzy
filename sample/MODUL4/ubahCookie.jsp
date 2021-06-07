<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
</head>
    <body> 
        <%
            Cookie cNama1 = new Cookie("namabaru", "Salman_al_farisi");
            response.addCookie(cNama1);
            out.println("Coookie namabaru telah diubah");
        %>
        untuk melihat nya kembali
        klik 
        <a href="bacaCookie.jsp">Disini</a> 
    </body>
</html>