<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
        if (kode_hari == 1) out.print("hari minggu"); 
        else out.print("Bukan Hari Minggu"); 
    %>
  </body>
</html>
