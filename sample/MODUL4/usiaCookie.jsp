<%@page contentType="text/html" pageEncoding="UTF-8"%> <!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body> 
    <%
        Cookie cNama = new Cookie("nama","AndiniSuryati");
        cNama.setMaxAge(3600);
        response.addCookie(cNama);
        out.println("Coookie dengan usia 1 jam telah dibentuk"); 
    %>
    </body>
</html>