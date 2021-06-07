<%@page contentType="text/html" pageEncoding="UTF-8"%> <!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Latihan Menampilkan Parameter</title>
</head>
<body>
    <%
        String nama = request.getParameter("nama_pemakai"); 
        out.println("Pemakai : " +nama);
    %>
</body>
</html>