<%@page contentType="text/html" pageEncoding="UTF-8"%> <!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
    <title>JSP Page</title>
</head>
<body>
<%! 
    String bentuk;
    int panjang = 20, lebar = 10, luas; 
%>
<center><h2><u> Program Menghitung Luas Dengan </u></h2>
<hr>
<% 
    bentuk = "Persegi Panjang"; 
    luas = panjang * lebar;
%>
    Bentuk : <%= bentuk %> <br> Panjang : <%= panjang %> <br> 
    Lebar : <%=lebar%> <br> Luas : <%=luas%> <br>
</center>
</body>
</html>