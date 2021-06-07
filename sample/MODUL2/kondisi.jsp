<%@page contentType="text/html" pageEncoding="UTF-8"%> <!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>Latihan Kondisi</title>
  </head>
  <body>
    Kuis Tebak Angka : <br />
    <% 
    int pemain1 = (int) (Math.random()* 100); 
    int pemain2 = (int) (Math.random()* 100); 
    out.println("PEMAIN 1 = " + pemain1 );
    out.println("<br />PEMAIN 2 = " + pemain2);
     if (pemain1 > pemain2)
        out.println("<br />PEMAIN 1 MENANG"); 
    else 
        out.println("<br />PEMAIN 2 MENANG"); 
    %>
  </body>
</html>
