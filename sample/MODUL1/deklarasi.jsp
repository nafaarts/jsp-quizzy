<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
<body>
    <%!
        String buku;
        int harga = 6000;
    %>
    Setelah Deklarasi : <br>
    <%
        buku = "Pemograman JSP";
        out.println("Judul Buku : " +buku+ "<br>");
        out.println("Harga : " +harga+ "<br>"); 
    %>
</body>
</html>