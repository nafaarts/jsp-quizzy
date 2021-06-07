<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@page isErrorPage = "true" %>
        pesan ini muncul jika terjadi kesalahan pada INPUTAN BILANGAN 
        <br>
        <b><%= exception %> </b>
        <br>
    </body>
</html>