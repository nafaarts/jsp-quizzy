<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body> 
        <%
            Cookie cookie = new Cookie("nama1",""); 
            cookie.setMaxAge(0); 
            response.addCookie(cookie);
        %>
        Cookie nama1 telah dihapus <br>
        melihat semua isi cookie <br>
        klik 
        <a href="bacaCookie.jsp">Disini</a> 
    </body>
</html>