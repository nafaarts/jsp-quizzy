<%@page contentType="text/html" pageEncoding="UTF-8"%> <!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>Latihan Menentukan Nama Hari</title>
  </head>
  <body>
    <%@page import="java.util.*" %> 
    Hari Ini : 
    <% 
    GregorianCalendar sekarang = new GregorianCalendar(); 
    int kode_hari = sekarang.get(Calendar.DAY_OF_WEEK);
    if (kode_hari == 1) 
        out.print("hari minggu"); 
    else if (kode_hari == 2) 
        out.print("Hari Senin"); 
    else if (kode_hari == 3) 
        out.print("Hari Selasa"); 
    else if (kode_hari == 4) 
        out.print("Hari Rabu"); 
    else if (kode_hari == 5) 
        out.print("Hari Kamis"); 
    else if (kode_hari == 6) 
        out.print("Hari Jumat"); 
    else 
        out.print("Hari Sabtu"); 
    %>
  </body>
</html>
